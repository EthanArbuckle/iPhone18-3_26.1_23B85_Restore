@interface SYPBContentItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYPBContentItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SYPBContentItem;
  v4 = [(SYPBContentItem *)&v8 description];
  v5 = [(SYPBContentItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  itemIdentifierData = self->_itemIdentifierData;
  if (itemIdentifierData)
  {
    [v3 setObject:itemIdentifierData forKey:@"itemIdentifierData"];
  }

  displayTitle = self->_displayTitle;
  if (displayTitle)
  {
    [v4 setObject:displayTitle forKey:@"displayTitle"];
  }

  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier)
  {
    [v4 setObject:sourceIdentifier forKey:@"sourceIdentifier"];
  }

  sourceLastKnownName = self->_sourceLastKnownName;
  if (sourceLastKnownName)
  {
    [v4 setObject:sourceLastKnownName forKey:@"sourceLastKnownName"];
  }

  itemURL = self->_itemURL;
  if (itemURL)
  {
    [v4 setObject:itemURL forKey:@"itemURL"];
  }

  userActivityData = self->_userActivityData;
  if (userActivityData)
  {
    [v4 setObject:userActivityData forKey:@"userActivityData"];
  }

  linkPreviewMetadata = self->_linkPreviewMetadata;
  if (linkPreviewMetadata)
  {
    [v4 setObject:linkPreviewMetadata forKey:@"linkPreviewMetadata"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_previewLoadLevel];
    [v4 setObject:v12 forKey:@"previewLoadLevel"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_itemIdentifierData)
  {
    [SYPBContentItem writeTo:];
  }

  v7 = v4;
  PBDataWriterWriteDataField();
  if (self->_displayTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v5 = v7;
  if (self->_sourceLastKnownName)
  {
    PBDataWriterWriteStringField();
    v5 = v7;
  }

  if (self->_itemURL)
  {
    PBDataWriterWriteStringField();
    v5 = v7;
  }

  if (self->_userActivityData)
  {
    PBDataWriterWriteDataField();
    v5 = v7;
  }

  if (self->_linkPreviewMetadata)
  {
    PBDataWriterWriteDataField();
    v5 = v7;
  }

  if (*&self->_has)
  {
    previewLoadLevel = self->_previewLoadLevel;
    PBDataWriterWriteInt64Field();
    v5 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setItemIdentifierData:self->_itemIdentifierData];
  if (self->_displayTitle)
  {
    [v5 setDisplayTitle:?];
  }

  if (self->_sourceIdentifier)
  {
    [v5 setSourceIdentifier:?];
  }

  v4 = v5;
  if (self->_sourceLastKnownName)
  {
    [v5 setSourceLastKnownName:?];
    v4 = v5;
  }

  if (self->_itemURL)
  {
    [v5 setItemURL:?];
    v4 = v5;
  }

  if (self->_userActivityData)
  {
    [v5 setUserActivityData:?];
    v4 = v5;
  }

  if (self->_linkPreviewMetadata)
  {
    [v5 setLinkPreviewMetadata:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[1] = self->_previewLoadLevel;
    *(v4 + 72) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_itemIdentifierData copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_displayTitle copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_sourceIdentifier copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_sourceLastKnownName copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(NSString *)self->_itemURL copyWithZone:a3];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  v16 = [(NSData *)self->_userActivityData copyWithZone:a3];
  v17 = *(v5 + 64);
  *(v5 + 64) = v16;

  v18 = [(NSData *)self->_linkPreviewMetadata copyWithZone:a3];
  v19 = *(v5 + 40);
  *(v5 + 40) = v18;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_previewLoadLevel;
    *(v5 + 72) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  itemIdentifierData = self->_itemIdentifierData;
  if (itemIdentifierData | *(v4 + 3))
  {
    if (![(NSData *)itemIdentifierData isEqual:?])
    {
      goto LABEL_20;
    }
  }

  displayTitle = self->_displayTitle;
  if (displayTitle | *(v4 + 2))
  {
    if (![(NSString *)displayTitle isEqual:?])
    {
      goto LABEL_20;
    }
  }

  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier | *(v4 + 6))
  {
    if (![(NSString *)sourceIdentifier isEqual:?])
    {
      goto LABEL_20;
    }
  }

  sourceLastKnownName = self->_sourceLastKnownName;
  if (sourceLastKnownName | *(v4 + 7))
  {
    if (![(NSString *)sourceLastKnownName isEqual:?])
    {
      goto LABEL_20;
    }
  }

  itemURL = self->_itemURL;
  if (itemURL | *(v4 + 4))
  {
    if (![(NSString *)itemURL isEqual:?])
    {
      goto LABEL_20;
    }
  }

  userActivityData = self->_userActivityData;
  if (userActivityData | *(v4 + 8))
  {
    if (![(NSData *)userActivityData isEqual:?])
    {
      goto LABEL_20;
    }
  }

  linkPreviewMetadata = self->_linkPreviewMetadata;
  if (linkPreviewMetadata | *(v4 + 5))
  {
    if (![(NSData *)linkPreviewMetadata isEqual:?])
    {
      goto LABEL_20;
    }
  }

  v12 = (*(v4 + 72) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) != 0 && self->_previewLoadLevel == *(v4 + 1))
    {
      v12 = 1;
      goto LABEL_21;
    }

LABEL_20:
    v12 = 0;
  }

LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_itemIdentifierData hash];
  v4 = [(NSString *)self->_displayTitle hash];
  v5 = [(NSString *)self->_sourceIdentifier hash];
  v6 = [(NSString *)self->_sourceLastKnownName hash];
  v7 = [(NSString *)self->_itemURL hash];
  v8 = [(NSData *)self->_userActivityData hash];
  v9 = [(NSData *)self->_linkPreviewMetadata hash];
  if (*&self->_has)
  {
    v10 = 2654435761 * self->_previewLoadLevel;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(SYPBContentItem *)self setItemIdentifierData:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(SYPBContentItem *)self setDisplayTitle:?];
    v4 = v5;
  }

  if (v4[6])
  {
    [(SYPBContentItem *)self setSourceIdentifier:?];
    v4 = v5;
  }

  if (v4[7])
  {
    [(SYPBContentItem *)self setSourceLastKnownName:?];
    v4 = v5;
  }

  if (v4[4])
  {
    [(SYPBContentItem *)self setItemURL:?];
    v4 = v5;
  }

  if (v4[8])
  {
    [(SYPBContentItem *)self setUserActivityData:?];
    v4 = v5;
  }

  if (v4[5])
  {
    [(SYPBContentItem *)self setLinkPreviewMetadata:?];
    v4 = v5;
  }

  if (v4[9])
  {
    self->_previewLoadLevel = v4[1];
    *&self->_has |= 1u;
  }
}

@end