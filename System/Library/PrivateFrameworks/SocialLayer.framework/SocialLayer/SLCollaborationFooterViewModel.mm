@interface SLCollaborationFooterViewModel
- (BOOL)isEqual:(id)equal;
- (SLCollaborationFooterViewModel)initWithCoder:(id)coder;
- (SLCollaborationFooterViewModel)initWithContainerSetupInfo:(id)info;
- (SLCollaborationFooterViewModel)initWithFileURL:(id)l;
- (SLCollaborationFooterViewModel)initWithMetadata:(id)metadata;
- (SLCollaborationFooterViewModel)initWithTitle:(id)title subtitle:(id)subtitle;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLCollaborationFooterViewModel

- (SLCollaborationFooterViewModel)initWithTitle:(id)title subtitle:(id)subtitle
{
  v13.receiver = self;
  v13.super_class = SLCollaborationFooterViewModel;
  subtitleCopy = subtitle;
  titleCopy = title;
  v7 = [(SLCollaborationFooterViewModel *)&v13 init];
  v7->_type = 0;
  v8 = [titleCopy copy];

  title = v7->_title;
  v7->_title = v8;

  v10 = [subtitleCopy copy];
  subtitle = v7->_subtitle;
  v7->_subtitle = v10;

  return v7;
}

- (SLCollaborationFooterViewModel)initWithFileURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = SLCollaborationFooterViewModel;
  v5 = [(SLCollaborationFooterViewModel *)&v8 init];
  v5->_type = 1;
  fileURL = v5->_fileURL;
  v5->_fileURL = lCopy;

  return v5;
}

- (SLCollaborationFooterViewModel)initWithContainerSetupInfo:(id)info
{
  infoCopy = info;
  v8.receiver = self;
  v8.super_class = SLCollaborationFooterViewModel;
  v5 = [(SLCollaborationFooterViewModel *)&v8 init];
  v5->_type = 2;
  containerSetupInfo = v5->_containerSetupInfo;
  v5->_containerSetupInfo = infoCopy;

  return v5;
}

- (SLCollaborationFooterViewModel)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v8.receiver = self;
  v8.super_class = SLCollaborationFooterViewModel;
  v5 = [(SLCollaborationFooterViewModel *)&v8 init];
  v5->_type = 3;
  metadata = v5->_metadata;
  v5->_metadata = metadataCopy;

  return v5;
}

- (SLCollaborationFooterViewModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_type);
  v6 = [coderCopy decodeIntegerForKey:v5];

  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_title);
  v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_subtitle);
  v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_fileURL);
  v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_containerSetupInfo);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

  v19 = objc_opt_class();
  v20 = NSStringFromSelector(sel_metadata);
  v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];

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
    v25 = [coderCopy decodeObjectOfClass:v23 forKey:v24];
    optionsSummary = self->_optionsSummary;
    self->_optionsSummary = v25;

    v27 = NSStringFromSelector(sel_isShareLink);
    self->_isShareLink = [coderCopy decodeBoolForKey:v27];
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  type = [(SLCollaborationFooterViewModel *)self type];
  v6 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v6];

  title = [(SLCollaborationFooterViewModel *)self title];
  v8 = NSStringFromSelector(sel_title);
  [coderCopy encodeObject:title forKey:v8];

  subtitle = [(SLCollaborationFooterViewModel *)self subtitle];
  v10 = NSStringFromSelector(sel_subtitle);
  [coderCopy encodeObject:subtitle forKey:v10];

  fileURL = [(SLCollaborationFooterViewModel *)self fileURL];
  v12 = NSStringFromSelector(sel_fileURL);
  [coderCopy encodeObject:fileURL forKey:v12];

  containerSetupInfo = [(SLCollaborationFooterViewModel *)self containerSetupInfo];
  v14 = NSStringFromSelector(sel_containerSetupInfo);
  [coderCopy encodeObject:containerSetupInfo forKey:v14];

  metadata = [(SLCollaborationFooterViewModel *)self metadata];
  v16 = NSStringFromSelector(sel_metadata);
  [coderCopy encodeObject:metadata forKey:v16];

  optionsSummary = [(SLCollaborationFooterViewModel *)self optionsSummary];
  v18 = NSStringFromSelector(sel_optionsSummary);
  [coderCopy encodeObject:optionsSummary forKey:v18];

  isShareLink = [(SLCollaborationFooterViewModel *)self isShareLink];
  v20 = NSStringFromSelector(sel_isShareLink);
  [coderCopy encodeBool:isShareLink forKey:v20];
}

- (id)copyWithZone:(_NSZone *)zone
{
  type = [(SLCollaborationFooterViewModel *)self type];
  v5 = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      v12 = [SLCollaborationFooterViewModel alloc];
      containerSetupInfo = [(SLCollaborationFooterViewModel *)self containerSetupInfo];
      v8 = [(SLCollaborationFooterViewModel *)v12 initWithContainerSetupInfo:containerSetupInfo];
      goto LABEL_10;
    }

    if (type == 3)
    {
      v9 = [SLCollaborationFooterViewModel alloc];
      containerSetupInfo = [(SLCollaborationFooterViewModel *)self metadata];
      v8 = [(SLCollaborationFooterViewModel *)v9 initWithMetadata:containerSetupInfo];
      goto LABEL_10;
    }
  }

  else
  {
    if (!type)
    {
      v10 = [SLCollaborationFooterViewModel alloc];
      containerSetupInfo = [(SLCollaborationFooterViewModel *)self title];
      subtitle = [(SLCollaborationFooterViewModel *)self subtitle];
      v5 = [(SLCollaborationFooterViewModel *)v10 initWithTitle:containerSetupInfo subtitle:subtitle];

LABEL_11:
      goto LABEL_12;
    }

    if (type == 1)
    {
      v6 = [SLCollaborationFooterViewModel alloc];
      containerSetupInfo = [(SLCollaborationFooterViewModel *)self fileURL];
      v8 = [(SLCollaborationFooterViewModel *)v6 initWithFileURL:containerSetupInfo];
LABEL_10:
      v5 = v8;
      goto LABEL_11;
    }
  }

LABEL_12:
  optionsSummary = [(SLCollaborationFooterViewModel *)self optionsSummary];
  [(SLCollaborationFooterViewModel *)v5 setOptionsSummary:optionsSummary];

  [(SLCollaborationFooterViewModel *)v5 setIsShareLink:[(SLCollaborationFooterViewModel *)self isShareLink]];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      type = [(SLCollaborationFooterViewModel *)v7 type];
      if (type != [(SLCollaborationFooterViewModel *)self type])
      {
        goto LABEL_41;
      }

      type2 = [(SLCollaborationFooterViewModel *)self type];
      LOBYTE(v10) = 0;
      if (type2 > 1)
      {
        if (type2 == 2)
        {
          containerSetupInfo = [(SLCollaborationFooterViewModel *)self containerSetupInfo];
          containerSetupInfo2 = [(SLCollaborationFooterViewModel *)v7 containerSetupInfo];
        }

        else
        {
          if (type2 != 3)
          {
            goto LABEL_42;
          }

          containerSetupInfo = [(SLCollaborationFooterViewModel *)self metadata];
          containerSetupInfo2 = [(SLCollaborationFooterViewModel *)v7 metadata];
        }

LABEL_18:
        title2 = containerSetupInfo2;
        v15 = [containerSetupInfo isEqual:containerSetupInfo2];

        if ((v15 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_19;
      }

      if (type2)
      {
        if (type2 == 1)
        {
          containerSetupInfo = [(SLCollaborationFooterViewModel *)self fileURL];
          containerSetupInfo2 = [(SLCollaborationFooterViewModel *)v7 fileURL];
          goto LABEL_18;
        }

LABEL_42:

        goto LABEL_43;
      }

      title = [(SLCollaborationFooterViewModel *)self title];
      if (title || ([(SLCollaborationFooterViewModel *)v7 title], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        title2 = [(SLCollaborationFooterViewModel *)self title];
        title3 = [(SLCollaborationFooterViewModel *)v7 title];
        if (![title2 isEqualToString:title3])
        {
          v21 = 0;
          goto LABEL_36;
        }

        v26 = title2;
        v14 = 1;
      }

      else
      {
        v27 = 0;
        v14 = 0;
      }

      subtitle = [(SLCollaborationFooterViewModel *)self subtitle];
      if (subtitle || ([(SLCollaborationFooterViewModel *)v7 subtitle], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        title2 = [(SLCollaborationFooterViewModel *)self subtitle];
        subtitle2 = [(SLCollaborationFooterViewModel *)v7 subtitle];
        v21 = [title2 isEqualToString:subtitle2];

        if (subtitle)
        {
LABEL_34:

          if (!v14)
          {
            goto LABEL_37;
          }

          title2 = v26;
LABEL_36:

LABEL_37:
          if (title)
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
          optionsSummary = [(SLCollaborationFooterViewModel *)self optionsSummary];
          if (!optionsSummary)
          {
            title2 = [(SLCollaborationFooterViewModel *)v7 optionsSummary];
            if (!title2)
            {
              goto LABEL_25;
            }
          }

          optionsSummary2 = [(SLCollaborationFooterViewModel *)self optionsSummary];
          optionsSummary3 = [(SLCollaborationFooterViewModel *)v7 optionsSummary];
          v19 = [optionsSummary2 isEqual:optionsSummary3];

          if (optionsSummary)
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
            isShareLink = [(SLCollaborationFooterViewModel *)self isShareLink];
            v10 = isShareLink ^ [(SLCollaborationFooterViewModel *)v7 isShareLink]^ 1;
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