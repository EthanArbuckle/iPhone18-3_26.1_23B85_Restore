@interface SLCollaborationFooterViewModel
- (BOOL)isEqual:(id)a3;
- (SLCollaborationFooterViewModel)initWithCoder:(id)a3;
- (SLCollaborationFooterViewModel)initWithContainerSetupInfo:(id)a3;
- (SLCollaborationFooterViewModel)initWithFileURL:(id)a3;
- (SLCollaborationFooterViewModel)initWithMetadata:(id)a3;
- (SLCollaborationFooterViewModel)initWithTitle:(id)a3 subtitle:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLCollaborationFooterViewModel

- (SLCollaborationFooterViewModel)initWithTitle:(id)a3 subtitle:(id)a4
{
  v13.receiver = self;
  v13.super_class = SLCollaborationFooterViewModel;
  v5 = a4;
  v6 = a3;
  v7 = [(SLCollaborationFooterViewModel *)&v13 init];
  v7->_type = 0;
  v8 = [v6 copy];

  title = v7->_title;
  v7->_title = v8;

  v10 = [v5 copy];
  subtitle = v7->_subtitle;
  v7->_subtitle = v10;

  return v7;
}

- (SLCollaborationFooterViewModel)initWithFileURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SLCollaborationFooterViewModel;
  v5 = [(SLCollaborationFooterViewModel *)&v8 init];
  v5->_type = 1;
  fileURL = v5->_fileURL;
  v5->_fileURL = v4;

  return v5;
}

- (SLCollaborationFooterViewModel)initWithContainerSetupInfo:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SLCollaborationFooterViewModel;
  v5 = [(SLCollaborationFooterViewModel *)&v8 init];
  v5->_type = 2;
  containerSetupInfo = v5->_containerSetupInfo;
  v5->_containerSetupInfo = v4;

  return v5;
}

- (SLCollaborationFooterViewModel)initWithMetadata:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SLCollaborationFooterViewModel;
  v5 = [(SLCollaborationFooterViewModel *)&v8 init];
  v5->_type = 3;
  metadata = v5->_metadata;
  v5->_metadata = v4;

  return v5;
}

- (SLCollaborationFooterViewModel)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_type);
  v6 = [v4 decodeIntegerForKey:v5];

  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_title);
  v9 = [v4 decodeObjectOfClass:v7 forKey:v8];

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_subtitle);
  v12 = [v4 decodeObjectOfClass:v10 forKey:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_fileURL);
  v15 = [v4 decodeObjectOfClass:v13 forKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_containerSetupInfo);
  v18 = [v4 decodeObjectOfClass:v16 forKey:v17];

  v19 = objc_opt_class();
  v20 = NSStringFromSelector(sel_metadata);
  v21 = [v4 decodeObjectOfClass:v19 forKey:v20];

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v22 = [(SLCollaborationFooterViewModel *)self initWithContainerSetupInfo:v18];
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_11;
      }

      v22 = [(SLCollaborationFooterViewModel *)self initWithMetadata:v21];
    }
  }

  else if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_11;
    }

    v22 = [(SLCollaborationFooterViewModel *)self initWithFileURL:v15];
  }

  else
  {
    v22 = [(SLCollaborationFooterViewModel *)self initWithTitle:v9 subtitle:v12];
  }

  self = v22;
LABEL_11:
  if (self)
  {
    v23 = objc_opt_class();
    v24 = NSStringFromSelector(sel_optionsSummary);
    v25 = [v4 decodeObjectOfClass:v23 forKey:v24];
    optionsSummary = self->_optionsSummary;
    self->_optionsSummary = v25;

    v27 = NSStringFromSelector(sel_isShareLink);
    self->_isShareLink = [v4 decodeBoolForKey:v27];
  }

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLCollaborationFooterViewModel *)self type];
  v6 = NSStringFromSelector(sel_type);
  [v4 encodeInteger:v5 forKey:v6];

  v7 = [(SLCollaborationFooterViewModel *)self title];
  v8 = NSStringFromSelector(sel_title);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(SLCollaborationFooterViewModel *)self subtitle];
  v10 = NSStringFromSelector(sel_subtitle);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(SLCollaborationFooterViewModel *)self fileURL];
  v12 = NSStringFromSelector(sel_fileURL);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(SLCollaborationFooterViewModel *)self containerSetupInfo];
  v14 = NSStringFromSelector(sel_containerSetupInfo);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(SLCollaborationFooterViewModel *)self metadata];
  v16 = NSStringFromSelector(sel_metadata);
  [v4 encodeObject:v15 forKey:v16];

  v17 = [(SLCollaborationFooterViewModel *)self optionsSummary];
  v18 = NSStringFromSelector(sel_optionsSummary);
  [v4 encodeObject:v17 forKey:v18];

  v19 = [(SLCollaborationFooterViewModel *)self isShareLink];
  v20 = NSStringFromSelector(sel_isShareLink);
  [v4 encodeBool:v19 forKey:v20];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(SLCollaborationFooterViewModel *)self type];
  v5 = 0;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v12 = [SLCollaborationFooterViewModel alloc];
      v7 = [(SLCollaborationFooterViewModel *)self containerSetupInfo];
      v8 = [(SLCollaborationFooterViewModel *)v12 initWithContainerSetupInfo:v7];
      goto LABEL_10;
    }

    if (v4 == 3)
    {
      v9 = [SLCollaborationFooterViewModel alloc];
      v7 = [(SLCollaborationFooterViewModel *)self metadata];
      v8 = [(SLCollaborationFooterViewModel *)v9 initWithMetadata:v7];
      goto LABEL_10;
    }
  }

  else
  {
    if (!v4)
    {
      v10 = [SLCollaborationFooterViewModel alloc];
      v7 = [(SLCollaborationFooterViewModel *)self title];
      v11 = [(SLCollaborationFooterViewModel *)self subtitle];
      v5 = [(SLCollaborationFooterViewModel *)v10 initWithTitle:v7 subtitle:v11];

LABEL_11:
      goto LABEL_12;
    }

    if (v4 == 1)
    {
      v6 = [SLCollaborationFooterViewModel alloc];
      v7 = [(SLCollaborationFooterViewModel *)self fileURL];
      v8 = [(SLCollaborationFooterViewModel *)v6 initWithFileURL:v7];
LABEL_10:
      v5 = v8;
      goto LABEL_11;
    }
  }

LABEL_12:
  v13 = [(SLCollaborationFooterViewModel *)self optionsSummary];
  [(SLCollaborationFooterViewModel *)v5 setOptionsSummary:v13];

  [(SLCollaborationFooterViewModel *)v5 setIsShareLink:[(SLCollaborationFooterViewModel *)self isShareLink]];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(SLCollaborationFooterViewModel *)v7 type];
      if (v8 != [(SLCollaborationFooterViewModel *)self type])
      {
        goto LABEL_41;
      }

      v9 = [(SLCollaborationFooterViewModel *)self type];
      LOBYTE(v10) = 0;
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v11 = [(SLCollaborationFooterViewModel *)self containerSetupInfo];
          v12 = [(SLCollaborationFooterViewModel *)v7 containerSetupInfo];
        }

        else
        {
          if (v9 != 3)
          {
            goto LABEL_42;
          }

          v11 = [(SLCollaborationFooterViewModel *)self metadata];
          v12 = [(SLCollaborationFooterViewModel *)v7 metadata];
        }

LABEL_18:
        v3 = v12;
        v15 = [v11 isEqual:v12];

        if ((v15 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_19;
      }

      if (v9)
      {
        if (v9 == 1)
        {
          v11 = [(SLCollaborationFooterViewModel *)self fileURL];
          v12 = [(SLCollaborationFooterViewModel *)v7 fileURL];
          goto LABEL_18;
        }

LABEL_42:

        goto LABEL_43;
      }

      v13 = [(SLCollaborationFooterViewModel *)self title];
      if (v13 || ([(SLCollaborationFooterViewModel *)v7 title], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v3 = [(SLCollaborationFooterViewModel *)self title];
        v4 = [(SLCollaborationFooterViewModel *)v7 title];
        if (![v3 isEqualToString:v4])
        {
          v21 = 0;
          goto LABEL_36;
        }

        v26 = v3;
        v14 = 1;
      }

      else
      {
        v27 = 0;
        v14 = 0;
      }

      v22 = [(SLCollaborationFooterViewModel *)self subtitle];
      if (v22 || ([(SLCollaborationFooterViewModel *)v7 subtitle], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v3 = [(SLCollaborationFooterViewModel *)self subtitle];
        v23 = [(SLCollaborationFooterViewModel *)v7 subtitle];
        v21 = [v3 isEqualToString:v23];

        if (v22)
        {
LABEL_34:

          if (!v14)
          {
            goto LABEL_37;
          }

          v3 = v26;
LABEL_36:

LABEL_37:
          if (v13)
          {

            if (!v21)
            {
              goto LABEL_41;
            }
          }

          else
          {

            if ((v21 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

LABEL_19:
          v16 = [(SLCollaborationFooterViewModel *)self optionsSummary];
          if (!v16)
          {
            v3 = [(SLCollaborationFooterViewModel *)v7 optionsSummary];
            if (!v3)
            {
              goto LABEL_25;
            }
          }

          v17 = [(SLCollaborationFooterViewModel *)self optionsSummary];
          v18 = [(SLCollaborationFooterViewModel *)v7 optionsSummary];
          v19 = [v17 isEqual:v18];

          if (v16)
          {

            if (!v19)
            {
              goto LABEL_41;
            }

            goto LABEL_25;
          }

          if (v19)
          {
LABEL_25:
            v20 = [(SLCollaborationFooterViewModel *)self isShareLink];
            v10 = v20 ^ [(SLCollaborationFooterViewModel *)v7 isShareLink]^ 1;
            goto LABEL_42;
          }

LABEL_41:
          LOBYTE(v10) = 0;
          goto LABEL_42;
        }
      }

      else
      {
        v25 = 0;
        v21 = 1;
      }

      goto LABEL_34;
    }

    LOBYTE(v10) = 0;
  }

LABEL_43:

  return v10;
}

@end