@interface SLCollaborationAttributionConversationDrawingMetadata
- (BOOL)isEqual:(id)a3;
- (SLCollaborationAttributionConversationDrawingMetadata)initWithCoder:(id)a3;
- (SLCollaborationAttributionConversationDrawingMetadata)initWithGroupPhotoFileURL:(id)a3 recipientDrawingMetadata:(id)a4 groupID:(id)a5;
- (SLCollaborationAttributionConversationDrawingMetadata)initWithRecipientDrawingMetadata:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLCollaborationAttributionConversationDrawingMetadata

- (SLCollaborationAttributionConversationDrawingMetadata)initWithRecipientDrawingMetadata:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SLCollaborationAttributionConversationDrawingMetadata;
  v5 = [(SLCollaborationAttributionConversationDrawingMetadata *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_isGroupConversation = 0;
    v12[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    recipientDrawingMetadata = v6->_recipientDrawingMetadata;
    v6->_recipientDrawingMetadata = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (SLCollaborationAttributionConversationDrawingMetadata)initWithGroupPhotoFileURL:(id)a3 recipientDrawingMetadata:(id)a4 groupID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 count] >= 2)
  {
    v16.receiver = self;
    v16.super_class = SLCollaborationAttributionConversationDrawingMetadata;
    v13 = [(SLCollaborationAttributionConversationDrawingMetadata *)&v16 init];
    p_isa = &v13->super.isa;
    if (v13)
    {
      v13->_isGroupConversation = 1;
      objc_storeStrong(&v13->_groupPhotoFileURL, a3);
      objc_storeStrong(p_isa + 3, a4);
      objc_storeStrong(p_isa + 4, a5);
    }

    self = p_isa;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupPhotoFileURL];
  v5 = [v4 absoluteString];
  v6 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupID];
  v7 = [(SLCollaborationAttributionConversationDrawingMetadata *)self recipientDrawingMetadata];
  v8 = [v3 stringWithFormat:@"<SLCollaborationAttributionConversationDrawingMetadata: %p> groupPhotoFileURL:[%@] groupID:[%@] recipientDrawingMetadata:[%@]", self, v5, v6, v7];

  return v8;
}

- (SLCollaborationAttributionConversationDrawingMetadata)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SLCollaborationAttributionConversationDrawingMetadata;
  v5 = [(SLCollaborationAttributionConversationDrawingMetadata *)&v17 init];
  if (v5)
  {
    v5->_isGroupConversation = [v4 decodeBoolForKey:@"isGroupConversation"];
    v6 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"recipientDrawingMetadata"];
    recipientDrawingMetadata = v5->_recipientDrawingMetadata;
    v5->_recipientDrawingMetadata = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupPhotoFileURL"];
    groupPhotoFileURL = v5->_groupPhotoFileURL;
    v5->_groupPhotoFileURL = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[SLCollaborationAttributionConversationDrawingMetadata isGroupConversation](self forKey:{"isGroupConversation"), @"isGroupConversation"}];
  v5 = [(SLCollaborationAttributionConversationDrawingMetadata *)self recipientDrawingMetadata];
  [v4 encodeObject:v5 forKey:@"recipientDrawingMetadata"];

  v6 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupPhotoFileURL];
  [v4 encodeObject:v6 forKey:@"groupPhotoFileURL"];

  v7 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupID];
  [v4 encodeObject:v7 forKey:@"groupID"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(SLCollaborationAttributionConversationDrawingMetadata *)self isGroupConversation];
  v5 = objc_alloc(objc_opt_class());
  if (v4)
  {
    v6 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupPhotoFileURL];
    v7 = [(SLCollaborationAttributionConversationDrawingMetadata *)self recipientDrawingMetadata];
    v8 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupID];
    v9 = [v5 initWithGroupPhotoFileURL:v6 recipientDrawingMetadata:v7 groupID:v8];
  }

  else
  {
    v6 = [(SLCollaborationAttributionConversationDrawingMetadata *)self recipientDrawingMetadata];
    v7 = [v6 firstObject];
    v9 = [v5 initWithRecipientDrawingMetadata:v7];
  }

  return v9;
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
      v8 = 1;
      goto LABEL_26;
    }

    v7 = [(SLCollaborationAttributionConversationDrawingMetadata *)self isGroupConversation];
    if (v7 != [(SLCollaborationAttributionConversationDrawingMetadata *)v6 isGroupConversation])
    {
LABEL_4:
      v8 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v9 = [(SLCollaborationAttributionConversationDrawingMetadata *)self recipientDrawingMetadata];
    if (v9 || ([(SLCollaborationAttributionConversationDrawingMetadata *)v6 recipientDrawingMetadata], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = [(SLCollaborationAttributionConversationDrawingMetadata *)self recipientDrawingMetadata];
      if (!v10)
      {
        goto LABEL_23;
      }

      v11 = v10;
      v12 = [(SLCollaborationAttributionConversationDrawingMetadata *)v6 recipientDrawingMetadata];
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = v12;
      v14 = [(SLCollaborationAttributionConversationDrawingMetadata *)self recipientDrawingMetadata];
      v15 = [(SLCollaborationAttributionConversationDrawingMetadata *)v6 recipientDrawingMetadata];
      v16 = [v14 isEqualToArray:v15];

      if (v9)
      {

        if (!v16)
        {
          goto LABEL_4;
        }
      }

      else
      {

        if ((v16 & 1) == 0)
        {
          goto LABEL_4;
        }
      }
    }

    v9 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupPhotoFileURL];
    if (!v9)
    {
      v3 = [(SLCollaborationAttributionConversationDrawingMetadata *)v6 groupPhotoFileURL];
      if (!v3)
      {
        goto LABEL_29;
      }
    }

    v17 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupPhotoFileURL];
    if (!v17)
    {
LABEL_23:
      v8 = 0;
      if (!v9)
      {
        v9 = v3;
      }

      goto LABEL_25;
    }

    v11 = v17;
    v18 = [(SLCollaborationAttributionConversationDrawingMetadata *)v6 groupPhotoFileURL];
    if (v18)
    {
      v19 = v18;
      v20 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupPhotoFileURL];
      v21 = [(SLCollaborationAttributionConversationDrawingMetadata *)v6 groupPhotoFileURL];
      v22 = [v20 isEqual:v21];

      if (v9)
      {

        if (!v22)
        {
          goto LABEL_4;
        }
      }

      else
      {

        if ((v22 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_29:
      v9 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupID];
      if (!v9)
      {
        v3 = [(SLCollaborationAttributionConversationDrawingMetadata *)v6 groupID];
        if (!v3)
        {
          v8 = 1;
LABEL_39:

          goto LABEL_25;
        }
      }

      v24 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupID];
      if (v24)
      {
        v25 = v24;
        v26 = [(SLCollaborationAttributionConversationDrawingMetadata *)v6 groupID];
        if (v26)
        {
          v27 = v26;
          v28 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupID];
          v29 = [(SLCollaborationAttributionConversationDrawingMetadata *)v6 groupID];
          v8 = [v28 isEqualToString:v29];

          if (!v9)
          {
            goto LABEL_39;
          }

LABEL_25:

          goto LABEL_26;
        }
      }

      v8 = 0;
      if (!v9)
      {
        goto LABEL_39;
      }

      goto LABEL_25;
    }

LABEL_22:

    goto LABEL_23;
  }

  v8 = 0;
LABEL_27:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(SLCollaborationAttributionConversationDrawingMetadata *)self isGroupConversation];
  v4 = [(SLCollaborationAttributionConversationDrawingMetadata *)self recipientDrawingMetadata];
  v5 = [v4 hash];
  v6 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupPhotoFileURL];
  v7 = v5 ^ [v6 hash] ^ v3;
  v8 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupID];
  v9 = [v8 hash];

  return v7 ^ v9;
}

@end