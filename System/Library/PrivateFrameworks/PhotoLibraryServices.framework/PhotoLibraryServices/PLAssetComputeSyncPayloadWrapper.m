@interface PLAssetComputeSyncPayloadWrapper
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLAssetComputeSyncPayloadWrapper

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[12])
  {
    self->_assetPayloadVersion = v4[4];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 1))
  {
    [(PLAssetComputeSyncPayloadWrapper *)self setAssetPayload:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(PLAssetComputeSyncPayloadWrapper *)self setMediaAnalysisPayload:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(PLAssetComputeSyncPayloadWrapper *)self setDeviceBuild:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(PLAssetComputeSyncPayloadWrapper *)self setDeviceHwModel:?];
    v4 = v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_assetPayloadVersion != *(v4 + 4))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  assetPayload = self->_assetPayload;
  if (assetPayload | *(v4 + 1) && ![(NSData *)assetPayload isEqual:?])
  {
    goto LABEL_15;
  }

  mediaAnalysisPayload = self->_mediaAnalysisPayload;
  if (mediaAnalysisPayload | *(v4 + 5))
  {
    if (![(NSData *)mediaAnalysisPayload isEqual:?])
    {
      goto LABEL_15;
    }
  }

  deviceBuild = self->_deviceBuild;
  if (deviceBuild | *(v4 + 3))
  {
    if (![(NSString *)deviceBuild isEqual:?])
    {
      goto LABEL_15;
    }
  }

  deviceHwModel = self->_deviceHwModel;
  if (deviceHwModel | *(v4 + 4))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_assetPayloadVersion;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSData *)self->_assetPayload copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSData *)self->_mediaAnalysisPayload copyWithZone:a3];
  v10 = v6[5];
  v6[5] = v9;

  v11 = [(NSString *)self->_deviceBuild copyWithZone:a3];
  v12 = v6[3];
  v6[3] = v11;

  v13 = [(NSString *)self->_deviceHwModel copyWithZone:a3];
  v14 = v6[4];
  v6[4] = v13;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_assetPayloadVersion;
    *(v4 + 48) |= 1u;
  }

  v5 = v4;
  if (self->_assetPayload)
  {
    [v4 setAssetPayload:?];
    v4 = v5;
  }

  if (self->_mediaAnalysisPayload)
  {
    [v5 setMediaAnalysisPayload:?];
    v4 = v5;
  }

  if (self->_deviceBuild)
  {
    [v5 setDeviceBuild:?];
    v4 = v5;
  }

  if (self->_deviceHwModel)
  {
    [v5 setDeviceHwModel:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
    v4 = v5;
  }

  if (self->_assetPayload)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_mediaAnalysisPayload)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_deviceBuild)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_deviceHwModel)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_assetPayloadVersion];
    [v3 setObject:v4 forKey:@"assetPayloadVersion"];
  }

  assetPayload = self->_assetPayload;
  if (assetPayload)
  {
    [v3 setObject:assetPayload forKey:@"assetPayload"];
  }

  mediaAnalysisPayload = self->_mediaAnalysisPayload;
  if (mediaAnalysisPayload)
  {
    [v3 setObject:mediaAnalysisPayload forKey:@"mediaAnalysisPayload"];
  }

  deviceBuild = self->_deviceBuild;
  if (deviceBuild)
  {
    [v3 setObject:deviceBuild forKey:@"deviceBuild"];
  }

  deviceHwModel = self->_deviceHwModel;
  if (deviceHwModel)
  {
    [v3 setObject:deviceHwModel forKey:@"deviceHwModel"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PLAssetComputeSyncPayloadWrapper;
  v4 = [(PLAssetComputeSyncPayloadWrapper *)&v8 description];
  v5 = [(PLAssetComputeSyncPayloadWrapper *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end