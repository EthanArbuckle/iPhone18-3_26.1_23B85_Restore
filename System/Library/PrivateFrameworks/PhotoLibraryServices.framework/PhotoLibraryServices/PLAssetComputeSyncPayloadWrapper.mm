@interface PLAssetComputeSyncPayloadWrapper
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PLAssetComputeSyncPayloadWrapper

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[12])
  {
    self->_assetPayloadVersion = fromCopy[4];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(PLAssetComputeSyncPayloadWrapper *)self setAssetPayload:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(PLAssetComputeSyncPayloadWrapper *)self setMediaAnalysisPayload:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(PLAssetComputeSyncPayloadWrapper *)self setDeviceBuild:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(PLAssetComputeSyncPayloadWrapper *)self setDeviceHwModel:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_assetPayloadVersion;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_assetPayload hash]^ v3;
  v5 = [(NSData *)self->_mediaAnalysisPayload hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_deviceBuild hash];
  return v6 ^ [(NSString *)self->_deviceHwModel hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_assetPayloadVersion != *(equalCopy + 4))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  assetPayload = self->_assetPayload;
  if (assetPayload | *(equalCopy + 1) && ![(NSData *)assetPayload isEqual:?])
  {
    goto LABEL_15;
  }

  mediaAnalysisPayload = self->_mediaAnalysisPayload;
  if (mediaAnalysisPayload | *(equalCopy + 5))
  {
    if (![(NSData *)mediaAnalysisPayload isEqual:?])
    {
      goto LABEL_15;
    }
  }

  deviceBuild = self->_deviceBuild;
  if (deviceBuild | *(equalCopy + 3))
  {
    if (![(NSString *)deviceBuild isEqual:?])
    {
      goto LABEL_15;
    }
  }

  deviceHwModel = self->_deviceHwModel;
  if (deviceHwModel | *(equalCopy + 4))
  {
    v9 = [(NSString *)deviceHwModel isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_16:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_assetPayloadVersion;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSData *)self->_assetPayload copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSData *)self->_mediaAnalysisPayload copyWithZone:zone];
  v10 = v6[5];
  v6[5] = v9;

  v11 = [(NSString *)self->_deviceBuild copyWithZone:zone];
  v12 = v6[3];
  v6[3] = v11;

  v13 = [(NSString *)self->_deviceHwModel copyWithZone:zone];
  v14 = v6[4];
  v6[4] = v13;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_assetPayloadVersion;
    *(toCopy + 48) |= 1u;
  }

  v5 = toCopy;
  if (self->_assetPayload)
  {
    [toCopy setAssetPayload:?];
    toCopy = v5;
  }

  if (self->_mediaAnalysisPayload)
  {
    [v5 setMediaAnalysisPayload:?];
    toCopy = v5;
  }

  if (self->_deviceBuild)
  {
    [v5 setDeviceBuild:?];
    toCopy = v5;
  }

  if (self->_deviceHwModel)
  {
    [v5 setDeviceHwModel:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_assetPayload)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_mediaAnalysisPayload)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_deviceBuild)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_deviceHwModel)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_assetPayloadVersion];
    [dictionary setObject:v4 forKey:@"assetPayloadVersion"];
  }

  assetPayload = self->_assetPayload;
  if (assetPayload)
  {
    [dictionary setObject:assetPayload forKey:@"assetPayload"];
  }

  mediaAnalysisPayload = self->_mediaAnalysisPayload;
  if (mediaAnalysisPayload)
  {
    [dictionary setObject:mediaAnalysisPayload forKey:@"mediaAnalysisPayload"];
  }

  deviceBuild = self->_deviceBuild;
  if (deviceBuild)
  {
    [dictionary setObject:deviceBuild forKey:@"deviceBuild"];
  }

  deviceHwModel = self->_deviceHwModel;
  if (deviceHwModel)
  {
    [dictionary setObject:deviceHwModel forKey:@"deviceHwModel"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PLAssetComputeSyncPayloadWrapper;
  v4 = [(PLAssetComputeSyncPayloadWrapper *)&v8 description];
  dictionaryRepresentation = [(PLAssetComputeSyncPayloadWrapper *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end