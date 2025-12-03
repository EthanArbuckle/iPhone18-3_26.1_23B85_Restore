@interface ABSPBContactWrapper
- (BOOL)containsCustomPoster;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addGroupName:(id)name;
- (void)addLinkTo:(id)to;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsMe:(BOOL)me;
- (void)setHasSharedPhotoDisplayPreference:(BOOL)preference;
- (void)setHasSourceType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ABSPBContactWrapper

- (void)setHasSourceType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addGroupName:(id)name
{
  nameCopy = name;
  groupNames = self->_groupNames;
  v8 = nameCopy;
  if (!groupNames)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_groupNames;
    self->_groupNames = v6;

    nameCopy = v8;
    groupNames = self->_groupNames;
  }

  [(NSMutableArray *)groupNames addObject:nameCopy];
}

- (void)setHasIsMe:(BOOL)me
{
  if (me)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addLinkTo:(id)to
{
  toCopy = to;
  linkTos = self->_linkTos;
  v8 = toCopy;
  if (!linkTos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_linkTos;
    self->_linkTos = v6;

    toCopy = v8;
    linkTos = self->_linkTos;
  }

  [(NSMutableArray *)linkTos addObject:toCopy];
}

- (void)setHasSharedPhotoDisplayPreference:(BOOL)preference
{
  if (preference)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ABSPBContactWrapper;
  v3 = [(ABSPBContactWrapper *)&v7 description];
  dictionaryRepresentation = [(ABSPBContactWrapper *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  vcardData = self->_vcardData;
  if (vcardData)
  {
    [v3 setObject:vcardData forKey:@"vcardData"];
  }

  fastEncodingData = self->_fastEncodingData;
  if (fastEncodingData)
  {
    [v4 setObject:fastEncodingData forKey:@"fastEncodingData"];
  }

  archive = self->_archive;
  if (archive)
  {
    [v4 setObject:archive forKey:@"archive"];
  }

  pb = self->_pb;
  if (pb)
  {
    dictionaryRepresentation = [(ABSPBContact *)pb dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"pb"];
  }

  reserved1 = self->_reserved1;
  if (reserved1)
  {
    [v4 setObject:reserved1 forKey:@"reserved1"];
  }

  reserved2 = self->_reserved2;
  if (reserved2)
  {
    [v4 setObject:reserved2 forKey:@"reserved2"];
  }

  reserved3 = self->_reserved3;
  if (reserved3)
  {
    [v4 setObject:reserved3 forKey:@"reserved3"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v13 = [NSNumber numberWithInt:self->_sourceType];
    [v4 setObject:v13 forKey:@"sourceType"];
  }

  groupNames = self->_groupNames;
  if (groupNames)
  {
    [v4 setObject:groupNames forKey:@"groupName"];
  }

  guid = self->_guid;
  if (guid)
  {
    [v4 setObject:guid forKey:@"guid"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v17 = [NSNumber numberWithBool:self->_isMe];
    [v4 setObject:v17 forKey:@"isMe"];

    has = self->_has;
  }

  if (has)
  {
    v18 = [NSNumber numberWithDouble:self->_modDate];
    [v4 setObject:v18 forKey:@"modDate"];
  }

  externalGuid = self->_externalGuid;
  if (externalGuid)
  {
    [v4 setObject:externalGuid forKey:@"externalGuid"];
  }

  thumbnail = self->_thumbnail;
  if (thumbnail)
  {
    [v4 setObject:thumbnail forKey:@"thumbnail"];
  }

  if ([(NSMutableArray *)self->_linkTos count])
  {
    v21 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_linkTos, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v22 = self->_linkTos;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v41;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation2 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          [v21 addObject:dictionaryRepresentation2];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v24);
    }

    [v4 setObject:v21 forKey:@"linkTo"];
  }

  linkGuid = self->_linkGuid;
  if (linkGuid)
  {
    [v4 setObject:linkGuid forKey:@"linkGuid"];
  }

  accountExternalIdentifier = self->_accountExternalIdentifier;
  if (accountExternalIdentifier)
  {
    [v4 setObject:accountExternalIdentifier forKey:@"accountExternalIdentifier"];
  }

  imageData = self->_imageData;
  if (imageData)
  {
    [v4 setObject:imageData forKey:@"imageData"];
  }

  imageType = self->_imageType;
  if (imageType)
  {
    [v4 setObject:imageType forKey:@"imageType"];
  }

  containerAttributes = self->_containerAttributes;
  if (containerAttributes)
  {
    dictionaryRepresentation3 = [(ABSPBContainerAttributes *)containerAttributes dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"containerAttributes"];
  }

  wallpaperImageData = self->_wallpaperImageData;
  if (wallpaperImageData)
  {
    [v4 setObject:wallpaperImageData forKey:@"wallpaperImageData"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v35 = [NSNumber numberWithLongLong:self->_sharedPhotoDisplayPreference];
    [v4 setObject:v35 forKey:@"sharedPhotoDisplayPreference"];
  }

  encryptedPronounData = self->_encryptedPronounData;
  if (encryptedPronounData)
  {
    [v4 setObject:encryptedPronounData forKey:@"encryptedPronounData"];
  }

  wallpaperDataRepresentation = self->_wallpaperDataRepresentation;
  if (wallpaperDataRepresentation)
  {
    [v4 setObject:wallpaperDataRepresentation forKey:@"wallpaperDataRepresentation"];
  }

  sensitiveContentConfiguration = self->_sensitiveContentConfiguration;
  if (sensitiveContentConfiguration)
  {
    [v4 setObject:sensitiveContentConfiguration forKey:@"sensitiveContentConfiguration"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    sourceType = self->_sourceType;
    PBDataWriterWriteInt32Field();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_groupNames;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  if (self->_vcardData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    isMe = self->_isMe;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    modDate = self->_modDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_externalGuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_thumbnail)
  {
    PBDataWriterWriteDataField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = self->_linkTos;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v22 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  if (self->_fastEncodingData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_linkGuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_archive)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_pb)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_accountExternalIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_imageData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_imageType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_reserved1)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_reserved2)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_reserved3)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_containerAttributes)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_wallpaperImageData)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 2) != 0)
  {
    sharedPhotoDisplayPreference = self->_sharedPhotoDisplayPreference;
    PBDataWriterWriteInt64Field();
  }

  if (self->_encryptedPronounData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_wallpaperDataRepresentation)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_sensitiveContentConfiguration)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[40] = self->_sourceType;
    *(toCopy + 204) |= 4u;
  }

  v16 = toCopy;
  if ([(ABSPBContactWrapper *)self groupNamesCount])
  {
    [v16 clearGroupNames];
    groupNamesCount = [(ABSPBContactWrapper *)self groupNamesCount];
    if (groupNamesCount)
    {
      v6 = groupNamesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ABSPBContactWrapper *)self groupNameAtIndex:i];
        [v16 addGroupName:v8];
      }
    }
  }

  if (self->_vcardData)
  {
    [v16 setVcardData:?];
  }

  v9 = v16;
  if (self->_guid)
  {
    [v16 setGuid:?];
    v9 = v16;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v9[200] = self->_isMe;
    v9[204] |= 8u;
    has = self->_has;
  }

  if (has)
  {
    *(v9 + 1) = *&self->_modDate;
    v9[204] |= 1u;
  }

  if (self->_externalGuid)
  {
    [v16 setExternalGuid:?];
  }

  if (self->_thumbnail)
  {
    [v16 setThumbnail:?];
  }

  if ([(ABSPBContactWrapper *)self linkTosCount])
  {
    [v16 clearLinkTos];
    linkTosCount = [(ABSPBContactWrapper *)self linkTosCount];
    if (linkTosCount)
    {
      v12 = linkTosCount;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(ABSPBContactWrapper *)self linkToAtIndex:j];
        [v16 addLinkTo:v14];
      }
    }
  }

  if (self->_fastEncodingData)
  {
    [v16 setFastEncodingData:?];
  }

  v15 = v16;
  if (self->_linkGuid)
  {
    [v16 setLinkGuid:?];
    v15 = v16;
  }

  if (self->_archive)
  {
    [v16 setArchive:?];
    v15 = v16;
  }

  if (self->_pb)
  {
    [v16 setPb:?];
    v15 = v16;
  }

  if (self->_accountExternalIdentifier)
  {
    [v16 setAccountExternalIdentifier:?];
    v15 = v16;
  }

  if (self->_imageData)
  {
    [v16 setImageData:?];
    v15 = v16;
  }

  if (self->_imageType)
  {
    [v16 setImageType:?];
    v15 = v16;
  }

  if (self->_reserved1)
  {
    [v16 setReserved1:?];
    v15 = v16;
  }

  if (self->_reserved2)
  {
    [v16 setReserved2:?];
    v15 = v16;
  }

  if (self->_reserved3)
  {
    [v16 setReserved3:?];
    v15 = v16;
  }

  if (self->_containerAttributes)
  {
    [v16 setContainerAttributes:?];
    v15 = v16;
  }

  if (self->_wallpaperImageData)
  {
    [v16 setWallpaperImageData:?];
    v15 = v16;
  }

  if ((*&self->_has & 2) != 0)
  {
    v15[2] = self->_sharedPhotoDisplayPreference;
    *(v15 + 204) |= 2u;
  }

  if (self->_encryptedPronounData)
  {
    [v16 setEncryptedPronounData:?];
    v15 = v16;
  }

  if (self->_wallpaperDataRepresentation)
  {
    [v16 setWallpaperDataRepresentation:?];
    v15 = v16;
  }

  if (self->_sensitiveContentConfiguration)
  {
    [v16 setSensitiveContentConfiguration:?];
    v15 = v16;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[40] = self->_sourceType;
    *(v5 + 204) |= 4u;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v7 = self->_groupNames;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v64;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v64 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v63 + 1) + 8 * i) copyWithZone:zone];
        [v6 addGroupName:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v9);
  }

  v13 = [(NSData *)self->_vcardData copyWithZone:zone];
  v14 = *(v6 + 22);
  *(v6 + 22) = v13;

  v15 = [(NSString *)self->_guid copyWithZone:zone];
  v16 = *(v6 + 10);
  *(v6 + 10) = v15;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 200) = self->_isMe;
    *(v6 + 204) |= 8u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 1) = *&self->_modDate;
    *(v6 + 204) |= 1u;
  }

  v18 = [(NSString *)self->_externalGuid copyWithZone:zone];
  v19 = *(v6 + 7);
  *(v6 + 7) = v18;

  v20 = [(NSData *)self->_thumbnail copyWithZone:zone];
  v21 = *(v6 + 21);
  *(v6 + 21) = v20;

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v22 = self->_linkTos;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v60;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v60 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v59 + 1) + 8 * j) copyWithZone:{zone, v59}];
        [v6 addLinkTo:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v24);
  }

  v28 = [(NSData *)self->_fastEncodingData copyWithZone:zone];
  v29 = *(v6 + 8);
  *(v6 + 8) = v28;

  v30 = [(NSString *)self->_linkGuid copyWithZone:zone];
  v31 = *(v6 + 13);
  *(v6 + 13) = v30;

  v32 = [(NSData *)self->_archive copyWithZone:zone];
  v33 = *(v6 + 4);
  *(v6 + 4) = v32;

  v34 = [(ABSPBContact *)self->_pb copyWithZone:zone];
  v35 = *(v6 + 15);
  *(v6 + 15) = v34;

  v36 = [(NSString *)self->_accountExternalIdentifier copyWithZone:zone];
  v37 = *(v6 + 3);
  *(v6 + 3) = v36;

  v38 = [(NSData *)self->_imageData copyWithZone:zone];
  v39 = *(v6 + 11);
  *(v6 + 11) = v38;

  v40 = [(NSString *)self->_imageType copyWithZone:zone];
  v41 = *(v6 + 12);
  *(v6 + 12) = v40;

  v42 = [(NSData *)self->_reserved1 copyWithZone:zone];
  v43 = *(v6 + 16);
  *(v6 + 16) = v42;

  v44 = [(NSData *)self->_reserved2 copyWithZone:zone];
  v45 = *(v6 + 17);
  *(v6 + 17) = v44;

  v46 = [(NSData *)self->_reserved3 copyWithZone:zone];
  v47 = *(v6 + 18);
  *(v6 + 18) = v46;

  v48 = [(ABSPBContainerAttributes *)self->_containerAttributes copyWithZone:zone];
  v49 = *(v6 + 5);
  *(v6 + 5) = v48;

  v50 = [(NSData *)self->_wallpaperImageData copyWithZone:zone];
  v51 = *(v6 + 24);
  *(v6 + 24) = v50;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 2) = self->_sharedPhotoDisplayPreference;
    *(v6 + 204) |= 2u;
  }

  v52 = [(NSData *)self->_encryptedPronounData copyWithZone:zone, v59];
  v53 = *(v6 + 6);
  *(v6 + 6) = v52;

  v54 = [(NSData *)self->_wallpaperDataRepresentation copyWithZone:zone];
  v55 = *(v6 + 23);
  *(v6 + 23) = v54;

  v56 = [(NSData *)self->_sensitiveContentConfiguration copyWithZone:zone];
  v57 = *(v6 + 19);
  *(v6 + 19) = v56;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  v5 = *(equalCopy + 204);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 204) & 4) == 0 || self->_sourceType != *(equalCopy + 40))
    {
      goto LABEL_58;
    }
  }

  else if ((*(equalCopy + 204) & 4) != 0)
  {
    goto LABEL_58;
  }

  groupNames = self->_groupNames;
  if (groupNames | *(equalCopy + 9) && ![(NSMutableArray *)groupNames isEqual:?])
  {
    goto LABEL_58;
  }

  vcardData = self->_vcardData;
  if (vcardData | *(equalCopy + 22))
  {
    if (![(NSData *)vcardData isEqual:?])
    {
      goto LABEL_58;
    }
  }

  guid = self->_guid;
  if (guid | *(equalCopy + 10))
  {
    if (![(NSString *)guid isEqual:?])
    {
      goto LABEL_58;
    }
  }

  v9 = *(equalCopy + 204);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 204) & 8) == 0)
    {
      goto LABEL_58;
    }

    v10 = *(equalCopy + 200);
    if (self->_isMe)
    {
      if ((*(equalCopy + 200) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (*(equalCopy + 200))
    {
      goto LABEL_58;
    }
  }

  else if ((*(equalCopy + 204) & 8) != 0)
  {
    goto LABEL_58;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 204) & 1) == 0 || self->_modDate != *(equalCopy + 1))
    {
      goto LABEL_58;
    }
  }

  else if (*(equalCopy + 204))
  {
    goto LABEL_58;
  }

  externalGuid = self->_externalGuid;
  if (externalGuid | *(equalCopy + 7) && ![(NSString *)externalGuid isEqual:?])
  {
    goto LABEL_58;
  }

  thumbnail = self->_thumbnail;
  if (thumbnail | *(equalCopy + 21))
  {
    if (![(NSData *)thumbnail isEqual:?])
    {
      goto LABEL_58;
    }
  }

  linkTos = self->_linkTos;
  if (linkTos | *(equalCopy + 14))
  {
    if (![(NSMutableArray *)linkTos isEqual:?])
    {
      goto LABEL_58;
    }
  }

  fastEncodingData = self->_fastEncodingData;
  if (fastEncodingData | *(equalCopy + 8))
  {
    if (![(NSData *)fastEncodingData isEqual:?])
    {
      goto LABEL_58;
    }
  }

  linkGuid = self->_linkGuid;
  if (linkGuid | *(equalCopy + 13))
  {
    if (![(NSString *)linkGuid isEqual:?])
    {
      goto LABEL_58;
    }
  }

  archive = self->_archive;
  if (archive | *(equalCopy + 4))
  {
    if (![(NSData *)archive isEqual:?])
    {
      goto LABEL_58;
    }
  }

  pb = self->_pb;
  if (pb | *(equalCopy + 15))
  {
    if (![(ABSPBContact *)pb isEqual:?])
    {
      goto LABEL_58;
    }
  }

  accountExternalIdentifier = self->_accountExternalIdentifier;
  if (accountExternalIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)accountExternalIdentifier isEqual:?])
    {
      goto LABEL_58;
    }
  }

  imageData = self->_imageData;
  if (imageData | *(equalCopy + 11))
  {
    if (![(NSData *)imageData isEqual:?])
    {
      goto LABEL_58;
    }
  }

  imageType = self->_imageType;
  if (imageType | *(equalCopy + 12))
  {
    if (![(NSString *)imageType isEqual:?])
    {
      goto LABEL_58;
    }
  }

  reserved1 = self->_reserved1;
  if (reserved1 | *(equalCopy + 16))
  {
    if (![(NSData *)reserved1 isEqual:?])
    {
      goto LABEL_58;
    }
  }

  reserved2 = self->_reserved2;
  if (reserved2 | *(equalCopy + 17))
  {
    if (![(NSData *)reserved2 isEqual:?])
    {
      goto LABEL_58;
    }
  }

  reserved3 = self->_reserved3;
  if (reserved3 | *(equalCopy + 18))
  {
    if (![(NSData *)reserved3 isEqual:?])
    {
      goto LABEL_58;
    }
  }

  containerAttributes = self->_containerAttributes;
  if (containerAttributes | *(equalCopy + 5))
  {
    if (![(ABSPBContainerAttributes *)containerAttributes isEqual:?])
    {
      goto LABEL_58;
    }
  }

  wallpaperImageData = self->_wallpaperImageData;
  if (wallpaperImageData | *(equalCopy + 24))
  {
    if (![(NSData *)wallpaperImageData isEqual:?])
    {
      goto LABEL_58;
    }
  }

  v26 = *(equalCopy + 204);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 204) & 2) == 0)
    {
      goto LABEL_62;
    }

LABEL_58:
    v27 = 0;
    goto LABEL_59;
  }

  if ((*(equalCopy + 204) & 2) == 0 || self->_sharedPhotoDisplayPreference != *(equalCopy + 2))
  {
    goto LABEL_58;
  }

LABEL_62:
  encryptedPronounData = self->_encryptedPronounData;
  if (encryptedPronounData | *(equalCopy + 6) && ![(NSData *)encryptedPronounData isEqual:?])
  {
    goto LABEL_58;
  }

  wallpaperDataRepresentation = self->_wallpaperDataRepresentation;
  if (wallpaperDataRepresentation | *(equalCopy + 23))
  {
    if (![(NSData *)wallpaperDataRepresentation isEqual:?])
    {
      goto LABEL_58;
    }
  }

  sensitiveContentConfiguration = self->_sensitiveContentConfiguration;
  if (sensitiveContentConfiguration | *(equalCopy + 19))
  {
    v27 = [(NSData *)sensitiveContentConfiguration isEqual:?];
  }

  else
  {
    v27 = 1;
  }

LABEL_59:

  return v27;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v35 = 2654435761 * self->_sourceType;
  }

  else
  {
    v35 = 0;
  }

  v34 = [(NSMutableArray *)self->_groupNames hash];
  v33 = [(NSData *)self->_vcardData hash];
  v32 = [(NSString *)self->_guid hash];
  if ((*&self->_has & 8) != 0)
  {
    v31 = 2654435761 * self->_isMe;
  }

  else
  {
    v31 = 0;
  }

  if (*&self->_has)
  {
    modDate = self->_modDate;
    if (modDate < 0.0)
    {
      modDate = -modDate;
    }

    *v3.i64 = floor(modDate + 0.5);
    v6 = (modDate - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v3.i64[0] = vbslq_s8(vnegq_f64(v7), v4, v3).i64[0];
    v8 = 2654435761u * *v3.i64;
    v9 = v8 + v6;
    if (v6 <= 0.0)
    {
      v9 = 2654435761u * *v3.i64;
    }

    v10 = v8 - fabs(v6);
    if (v6 >= 0.0)
    {
      v10 = v9;
    }

    v30 = v10;
  }

  else
  {
    v30 = 0;
  }

  v29 = [(NSString *)self->_externalGuid hash];
  v28 = [(NSData *)self->_thumbnail hash];
  v27 = [(NSMutableArray *)self->_linkTos hash];
  v26 = [(NSData *)self->_fastEncodingData hash];
  v25 = [(NSString *)self->_linkGuid hash];
  v11 = [(NSData *)self->_archive hash];
  v12 = [(ABSPBContact *)self->_pb hash];
  v13 = [(NSString *)self->_accountExternalIdentifier hash];
  v14 = [(NSData *)self->_imageData hash];
  v15 = [(NSString *)self->_imageType hash];
  v16 = [(NSData *)self->_reserved1 hash];
  v17 = [(NSData *)self->_reserved2 hash];
  v18 = [(NSData *)self->_reserved3 hash];
  v19 = [(ABSPBContainerAttributes *)self->_containerAttributes hash];
  v20 = [(NSData *)self->_wallpaperImageData hash];
  if ((*&self->_has & 2) != 0)
  {
    v21 = 2654435761 * self->_sharedPhotoDisplayPreference;
  }

  else
  {
    v21 = 0;
  }

  v22 = v34 ^ v35 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ [(NSData *)self->_encryptedPronounData hash];
  v23 = [(NSData *)self->_wallpaperDataRepresentation hash];
  return v22 ^ v23 ^ [(NSData *)self->_sensitiveContentConfiguration hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((*(fromCopy + 204) & 4) != 0)
  {
    self->_sourceType = *(fromCopy + 40);
    *&self->_has |= 4u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = *(fromCopy + 9);
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ABSPBContactWrapper *)self addGroupName:*(*(&v25 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  if (*(v5 + 22))
  {
    [(ABSPBContactWrapper *)self setVcardData:?];
  }

  if (*(v5 + 10))
  {
    [(ABSPBContactWrapper *)self setGuid:?];
  }

  v11 = *(v5 + 204);
  if ((v11 & 8) != 0)
  {
    self->_isMe = *(v5 + 200);
    *&self->_has |= 8u;
    v11 = *(v5 + 204);
  }

  if (v11)
  {
    self->_modDate = *(v5 + 1);
    *&self->_has |= 1u;
  }

  if (*(v5 + 7))
  {
    [(ABSPBContactWrapper *)self setExternalGuid:?];
  }

  if (*(v5 + 21))
  {
    [(ABSPBContactWrapper *)self setThumbnail:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = *(v5 + 14);
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(ABSPBContactWrapper *)self addLinkTo:*(*(&v21 + 1) + 8 * j), v21];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  if (*(v5 + 8))
  {
    [(ABSPBContactWrapper *)self setFastEncodingData:?];
  }

  if (*(v5 + 13))
  {
    [(ABSPBContactWrapper *)self setLinkGuid:?];
  }

  if (*(v5 + 4))
  {
    [(ABSPBContactWrapper *)self setArchive:?];
  }

  pb = self->_pb;
  v18 = *(v5 + 15);
  if (pb)
  {
    if (v18)
    {
      [(ABSPBContact *)pb mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(ABSPBContactWrapper *)self setPb:?];
  }

  if (*(v5 + 3))
  {
    [(ABSPBContactWrapper *)self setAccountExternalIdentifier:?];
  }

  if (*(v5 + 11))
  {
    [(ABSPBContactWrapper *)self setImageData:?];
  }

  if (*(v5 + 12))
  {
    [(ABSPBContactWrapper *)self setImageType:?];
  }

  if (*(v5 + 16))
  {
    [(ABSPBContactWrapper *)self setReserved1:?];
  }

  if (*(v5 + 17))
  {
    [(ABSPBContactWrapper *)self setReserved2:?];
  }

  if (*(v5 + 18))
  {
    [(ABSPBContactWrapper *)self setReserved3:?];
  }

  containerAttributes = self->_containerAttributes;
  v20 = *(v5 + 5);
  if (containerAttributes)
  {
    if (v20)
    {
      [(ABSPBContainerAttributes *)containerAttributes mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(ABSPBContactWrapper *)self setContainerAttributes:?];
  }

  if (*(v5 + 24))
  {
    [(ABSPBContactWrapper *)self setWallpaperImageData:?];
  }

  if ((*(v5 + 204) & 2) != 0)
  {
    self->_sharedPhotoDisplayPreference = *(v5 + 2);
    *&self->_has |= 2u;
  }

  if (*(v5 + 6))
  {
    [(ABSPBContactWrapper *)self setEncryptedPronounData:?];
  }

  if (*(v5 + 23))
  {
    [(ABSPBContactWrapper *)self setWallpaperDataRepresentation:?];
  }

  if (*(v5 + 19))
  {
    [(ABSPBContactWrapper *)self setSensitiveContentConfiguration:?];
  }
}

- (BOOL)containsCustomPoster
{
  if ([(ABSPBContactWrapper *)self sharedPhotoDisplayPreference]&& [(ABSPBContactWrapper *)self sharedPhotoDisplayPreference]!= 2)
  {
    isMe = [(ABSPBContactWrapper *)self isMe];
  }

  else
  {
    isMe = 1;
  }

  v4 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"shared";
    if (isMe)
    {
      v5 = @"custom";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CNContactSharedPhotoDisplayPreference indicates a %@ poster", &v7, 0xCu);
  }

  return isMe;
}

@end