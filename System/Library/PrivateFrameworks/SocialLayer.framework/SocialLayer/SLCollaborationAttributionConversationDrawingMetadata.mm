@interface SLCollaborationAttributionConversationDrawingMetadata
- (BOOL)isEqual:(id)equal;
- (SLCollaborationAttributionConversationDrawingMetadata)initWithCoder:(id)coder;
- (SLCollaborationAttributionConversationDrawingMetadata)initWithGroupPhotoFileURL:(id)l recipientDrawingMetadata:(id)metadata groupID:(id)d;
- (SLCollaborationAttributionConversationDrawingMetadata)initWithRecipientDrawingMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLCollaborationAttributionConversationDrawingMetadata

- (SLCollaborationAttributionConversationDrawingMetadata)initWithRecipientDrawingMetadata:(id)metadata
{
  v12[1] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v11.receiver = self;
  v11.super_class = SLCollaborationAttributionConversationDrawingMetadata;
  v5 = [(SLCollaborationAttributionConversationDrawingMetadata *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_isGroupConversation = 0;
    v12[0] = metadataCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    recipientDrawingMetadata = v6->_recipientDrawingMetadata;
    v6->_recipientDrawingMetadata = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (SLCollaborationAttributionConversationDrawingMetadata)initWithGroupPhotoFileURL:(id)l recipientDrawingMetadata:(id)metadata groupID:(id)d
{
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  if ([metadataCopy count] >= 2)
  {
    v16.receiver = self;
    v16.super_class = SLCollaborationAttributionConversationDrawingMetadata;
    v13 = [(SLCollaborationAttributionConversationDrawingMetadata *)&v16 init];
    p_isa = &v13->super.isa;
    if (v13)
    {
      v13->_isGroupConversation = 1;
      objc_storeStrong(&v13->_groupPhotoFileURL, l);
      objc_storeStrong(p_isa + 3, metadata);
      objc_storeStrong(p_isa + 4, d);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  groupPhotoFileURL = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupPhotoFileURL];
  absoluteString = [groupPhotoFileURL absoluteString];
  groupID = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupID];
  recipientDrawingMetadata = [(SLCollaborationAttributionConversationDrawingMetadata *)self recipientDrawingMetadata];
  v8 = [v3 stringWithFormat:@"<SLCollaborationAttributionConversationDrawingMetadata: %p> groupPhotoFileURL:[%@] groupID:[%@] recipientDrawingMetadata:[%@]", self, absoluteString, groupID, recipientDrawingMetadata];

  return v8;
}

- (SLCollaborationAttributionConversationDrawingMetadata)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SLCollaborationAttributionConversationDrawingMetadata;
  v5 = [(SLCollaborationAttributionConversationDrawingMetadata *)&v17 init];
  if (v5)
  {
    v5->_isGroupConversation = [coderCopy decodeBoolForKey:@"isGroupConversation"];
    v6 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"recipientDrawingMetadata"];
    recipientDrawingMetadata = v5->_recipientDrawingMetadata;
    v5->_recipientDrawingMetadata = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupPhotoFileURL"];
    groupPhotoFileURL = v5->_groupPhotoFileURL;
    v5->_groupPhotoFileURL = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SLCollaborationAttributionConversationDrawingMetadata isGroupConversation](self forKey:{"isGroupConversation"), @"isGroupConversation"}];
  recipientDrawingMetadata = [(SLCollaborationAttributionConversationDrawingMetadata *)self recipientDrawingMetadata];
  [coderCopy encodeObject:recipientDrawingMetadata forKey:@"recipientDrawingMetadata"];

  groupPhotoFileURL = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupPhotoFileURL];
  [coderCopy encodeObject:groupPhotoFileURL forKey:@"groupPhotoFileURL"];

  groupID = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupID];
  [coderCopy encodeObject:groupID forKey:@"groupID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  isGroupConversation = [(SLCollaborationAttributionConversationDrawingMetadata *)self isGroupConversation];
  v5 = objc_alloc(objc_opt_class());
  if (isGroupConversation)
  {
    groupPhotoFileURL = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupPhotoFileURL];
    recipientDrawingMetadata = [(SLCollaborationAttributionConversationDrawingMetadata *)self recipientDrawingMetadata];
    groupID = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupID];
    v9 = [v5 initWithGroupPhotoFileURL:groupPhotoFileURL recipientDrawingMetadata:recipientDrawingMetadata groupID:groupID];
  }

  else
  {
    groupPhotoFileURL = [(SLCollaborationAttributionConversationDrawingMetadata *)self recipientDrawingMetadata];
    recipientDrawingMetadata = [groupPhotoFileURL firstObject];
    v9 = [v5 initWithRecipientDrawingMetadata:recipientDrawingMetadata];
  }

  return v9;
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
      v8 = 1;
      goto LABEL_26;
    }

    isGroupConversation = [(SLCollaborationAttributionConversationDrawingMetadata *)self isGroupConversation];
    if (isGroupConversation != [(SLCollaborationAttributionConversationDrawingMetadata *)v6 isGroupConversation])
    {
LABEL_4:
      v8 = 0;
LABEL_26:

      goto LABEL_27;
    }

    recipientDrawingMetadata = [(SLCollaborationAttributionConversationDrawingMetadata *)self recipientDrawingMetadata];
    if (recipientDrawingMetadata || ([(SLCollaborationAttributionConversationDrawingMetadata *)v6 recipientDrawingMetadata], (groupPhotoFileURL = objc_claimAutoreleasedReturnValue()) != 0))
    {
      recipientDrawingMetadata2 = [(SLCollaborationAttributionConversationDrawingMetadata *)self recipientDrawingMetadata];
      if (!recipientDrawingMetadata2)
      {
        goto LABEL_23;
      }

      v11 = recipientDrawingMetadata2;
      recipientDrawingMetadata3 = [(SLCollaborationAttributionConversationDrawingMetadata *)v6 recipientDrawingMetadata];
      if (!recipientDrawingMetadata3)
      {
        goto LABEL_22;
      }

      v13 = recipientDrawingMetadata3;
      recipientDrawingMetadata4 = [(SLCollaborationAttributionConversationDrawingMetadata *)self recipientDrawingMetadata];
      recipientDrawingMetadata5 = [(SLCollaborationAttributionConversationDrawingMetadata *)v6 recipientDrawingMetadata];
      v16 = [recipientDrawingMetadata4 isEqualToArray:recipientDrawingMetadata5];

      if (recipientDrawingMetadata)
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

    recipientDrawingMetadata = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupPhotoFileURL];
    if (!recipientDrawingMetadata)
    {
      groupPhotoFileURL = [(SLCollaborationAttributionConversationDrawingMetadata *)v6 groupPhotoFileURL];
      if (!groupPhotoFileURL)
      {
        goto LABEL_29;
      }
    }

    groupPhotoFileURL2 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupPhotoFileURL];
    if (!groupPhotoFileURL2)
    {
LABEL_23:
      v8 = 0;
      if (!recipientDrawingMetadata)
      {
        recipientDrawingMetadata = groupPhotoFileURL;
      }

      goto LABEL_25;
    }

    v11 = groupPhotoFileURL2;
    groupPhotoFileURL3 = [(SLCollaborationAttributionConversationDrawingMetadata *)v6 groupPhotoFileURL];
    if (groupPhotoFileURL3)
    {
      v19 = groupPhotoFileURL3;
      groupPhotoFileURL4 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupPhotoFileURL];
      groupPhotoFileURL5 = [(SLCollaborationAttributionConversationDrawingMetadata *)v6 groupPhotoFileURL];
      v22 = [groupPhotoFileURL4 isEqual:groupPhotoFileURL5];

      if (recipientDrawingMetadata)
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
      recipientDrawingMetadata = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupID];
      if (!recipientDrawingMetadata)
      {
        groupPhotoFileURL = [(SLCollaborationAttributionConversationDrawingMetadata *)v6 groupID];
        if (!groupPhotoFileURL)
        {
          v8 = 1;
LABEL_39:

          goto LABEL_25;
        }
      }

      groupID = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupID];
      if (groupID)
      {
        v25 = groupID;
        groupID2 = [(SLCollaborationAttributionConversationDrawingMetadata *)v6 groupID];
        if (groupID2)
        {
          v27 = groupID2;
          groupID3 = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupID];
          groupID4 = [(SLCollaborationAttributionConversationDrawingMetadata *)v6 groupID];
          v8 = [groupID3 isEqualToString:groupID4];

          if (!recipientDrawingMetadata)
          {
            goto LABEL_39;
          }

LABEL_25:

          goto LABEL_26;
        }
      }

      v8 = 0;
      if (!recipientDrawingMetadata)
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
  isGroupConversation = [(SLCollaborationAttributionConversationDrawingMetadata *)self isGroupConversation];
  recipientDrawingMetadata = [(SLCollaborationAttributionConversationDrawingMetadata *)self recipientDrawingMetadata];
  v5 = [recipientDrawingMetadata hash];
  groupPhotoFileURL = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupPhotoFileURL];
  v7 = v5 ^ [groupPhotoFileURL hash] ^ isGroupConversation;
  groupID = [(SLCollaborationAttributionConversationDrawingMetadata *)self groupID];
  v9 = [groupID hash];

  return v7 ^ v9;
}

@end