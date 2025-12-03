@interface SLCollaborationAttributionRecipientDrawingMetadata
- (BOOL)isEqual:(id)equal;
- (SLCollaborationAttributionRecipientDrawingMetadata)initWithCoder:(id)coder;
- (SLCollaborationAttributionRecipientDrawingMetadata)initWithContact:(id)contact contactImageData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLCollaborationAttributionRecipientDrawingMetadata

- (SLCollaborationAttributionRecipientDrawingMetadata)initWithContact:(id)contact contactImageData:(id)data
{
  contactCopy = contact;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = SLCollaborationAttributionRecipientDrawingMetadata;
  v9 = [(SLCollaborationAttributionRecipientDrawingMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, contact);
    objc_storeStrong(&v10->_contactImageData, data);
  }

  return v10;
}

- (SLCollaborationAttributionRecipientDrawingMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SLCollaborationAttributionRecipientDrawingMetadata;
  v5 = [(SLCollaborationAttributionRecipientDrawingMetadata *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactImageData"];
    contactImageData = v5->_contactImageData;
    v5->_contactImageData = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contact = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contact];
  [coderCopy encodeObject:contact forKey:@"contact"];

  contactImageData = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contactImageData];
  [coderCopy encodeObject:contactImageData forKey:@"contactImageData"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  contact = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contact];
  contactImageData = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contactImageData];
  v7 = [v4 initWithContact:contact contactImageData:contactImageData];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    if (v6 == self)
    {
      v20 = 1;
LABEL_21:

      goto LABEL_22;
    }

    contact = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contact];
    if (!contact)
    {
      contact2 = [(SLCollaborationAttributionRecipientDrawingMetadata *)v6 contact];
      if (!contact2)
      {
        goto LABEL_9;
      }
    }

    contact3 = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contact];
    if (!contact3)
    {
      goto LABEL_18;
    }

    v9 = contact3;
    contact4 = [(SLCollaborationAttributionRecipientDrawingMetadata *)v6 contact];
    if (!contact4)
    {
      goto LABEL_17;
    }

    v11 = contact4;
    contact5 = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contact];
    contact6 = [(SLCollaborationAttributionRecipientDrawingMetadata *)v6 contact];
    v14 = [contact5 isEqual:contact6];

    if (contact)
    {

      if (v14)
      {
        goto LABEL_9;
      }
    }

    else
    {

      if (v14)
      {
LABEL_9:
        contact = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contactImageData];
        if (!contact)
        {
          contact2 = [(SLCollaborationAttributionRecipientDrawingMetadata *)v6 contactImageData];
          if (!contact2)
          {
            v20 = 1;
            goto LABEL_19;
          }
        }

        contactImageData = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contactImageData];
        if (!contactImageData)
        {
LABEL_18:
          v20 = 0;
          if (contact)
          {
            goto LABEL_20;
          }

LABEL_19:

          goto LABEL_20;
        }

        v9 = contactImageData;
        contactImageData2 = [(SLCollaborationAttributionRecipientDrawingMetadata *)v6 contactImageData];
        if (contactImageData2)
        {
          v17 = contactImageData2;
          contactImageData3 = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contactImageData];
          contactImageData4 = [(SLCollaborationAttributionRecipientDrawingMetadata *)v6 contactImageData];
          v20 = [contactImageData3 isEqualToData:contactImageData4];

          if (!contact)
          {
            goto LABEL_19;
          }

LABEL_20:

          goto LABEL_21;
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    v20 = 0;
    goto LABEL_21;
  }

  v20 = 0;
LABEL_22:

  return v20;
}

- (unint64_t)hash
{
  contact = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contact];
  v4 = [contact hash];
  contactImageData = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contactImageData];
  v6 = [contactImageData hash];

  return v6 ^ v4;
}

@end