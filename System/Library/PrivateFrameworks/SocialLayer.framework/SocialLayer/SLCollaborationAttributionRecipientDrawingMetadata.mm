@interface SLCollaborationAttributionRecipientDrawingMetadata
- (BOOL)isEqual:(id)a3;
- (SLCollaborationAttributionRecipientDrawingMetadata)initWithCoder:(id)a3;
- (SLCollaborationAttributionRecipientDrawingMetadata)initWithContact:(id)a3 contactImageData:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLCollaborationAttributionRecipientDrawingMetadata

- (SLCollaborationAttributionRecipientDrawingMetadata)initWithContact:(id)a3 contactImageData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SLCollaborationAttributionRecipientDrawingMetadata;
  v9 = [(SLCollaborationAttributionRecipientDrawingMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, a3);
    objc_storeStrong(&v10->_contactImageData, a4);
  }

  return v10;
}

- (SLCollaborationAttributionRecipientDrawingMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SLCollaborationAttributionRecipientDrawingMetadata;
  v5 = [(SLCollaborationAttributionRecipientDrawingMetadata *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactImageData"];
    contactImageData = v5->_contactImageData;
    v5->_contactImageData = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contact];
  [v4 encodeObject:v5 forKey:@"contact"];

  v6 = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contactImageData];
  [v4 encodeObject:v6 forKey:@"contactImageData"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contact];
  v6 = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contactImageData];
  v7 = [v4 initWithContact:v5 contactImageData:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    if (v6 == self)
    {
      v20 = 1;
LABEL_21:

      goto LABEL_22;
    }

    v7 = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contact];
    if (!v7)
    {
      v3 = [(SLCollaborationAttributionRecipientDrawingMetadata *)v6 contact];
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    v8 = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contact];
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = v8;
    v10 = [(SLCollaborationAttributionRecipientDrawingMetadata *)v6 contact];
    if (!v10)
    {
      goto LABEL_17;
    }

    v11 = v10;
    v12 = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contact];
    v13 = [(SLCollaborationAttributionRecipientDrawingMetadata *)v6 contact];
    v14 = [v12 isEqual:v13];

    if (v7)
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
        v7 = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contactImageData];
        if (!v7)
        {
          v3 = [(SLCollaborationAttributionRecipientDrawingMetadata *)v6 contactImageData];
          if (!v3)
          {
            v20 = 1;
            goto LABEL_19;
          }
        }

        v15 = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contactImageData];
        if (!v15)
        {
LABEL_18:
          v20 = 0;
          if (v7)
          {
            goto LABEL_20;
          }

LABEL_19:

          goto LABEL_20;
        }

        v9 = v15;
        v16 = [(SLCollaborationAttributionRecipientDrawingMetadata *)v6 contactImageData];
        if (v16)
        {
          v17 = v16;
          v18 = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contactImageData];
          v19 = [(SLCollaborationAttributionRecipientDrawingMetadata *)v6 contactImageData];
          v20 = [v18 isEqualToData:v19];

          if (!v7)
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
  v3 = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contact];
  v4 = [v3 hash];
  v5 = [(SLCollaborationAttributionRecipientDrawingMetadata *)self contactImageData];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end