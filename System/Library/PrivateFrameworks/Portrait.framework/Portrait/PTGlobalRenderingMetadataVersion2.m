@interface PTGlobalRenderingMetadataVersion2
- (BOOL)applyToRenderState:(id)a3 error:(id *)a4;
- (BOOL)matchesRenderState:(id)a3;
- (BOOL)writeToData:(id)a3 withOptions:(id)a4;
- (PTGlobalRenderingMetadataVersion2)initWithData:(id)a3;
- (PTGlobalRenderingMetadataVersion2)initWithMinorVersion:(unsigned int)a3;
- (void)applyToRenderRequest:(id)a3;
@end

@implementation PTGlobalRenderingMetadataVersion2

- (PTGlobalRenderingMetadataVersion2)initWithMinorVersion:(unsigned int)a3
{
  v6.receiver = self;
  v6.super_class = PTGlobalRenderingMetadataVersion2;
  v3 = [(PTGlobalRenderingMetadata *)&v6 initWithMajorVersion:2 minorVersion:*&a3];
  if (v3)
  {
    *(&v3->super._renderingVersion + 1) = +[PTRenderPipeline latestVersion];
    v4 = v3;
  }

  return v3;
}

- (BOOL)writeToData:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PTGlobalRenderingMetadataVersion2 *)self sizeOfSerializedObjectWithOptions:v7];
  if ([v6 length] < v8 || -[PTGlobalRenderingMetadata majorVersion](self, "majorVersion") != 2)
  {
    goto LABEL_8;
  }

  v9 = [v6 mutableBytes];
  *v9 = bswap32([(PTGlobalRenderingMetadataVersion2 *)self sizeOfSerializedObjectWithOptions:v7]);
  v9[1] = 1684956530;
  v9[2] = bswap32([(PTGlobalRenderingMetadata *)self majorVersion]);
  v9[3] = bswap32([(PTGlobalRenderingMetadata *)self minorVersion]);
  v15 = v9 + 4;
  [PTParameterPairSerialization appendUIntParameter:1 value:*(&self->super._renderingVersion + 1) toOutput:&v15];
  [PTParameterPairSerialization appendUIntParameter:2 value:*&self->_readSuccessAll toOutput:&v15];
  [PTParameterPairSerialization appendUIntParameter:3 value:self->_hwModelID toOutput:&v15];
  [PTParameterPairSerialization appendUIntParameter:4 value:self->_sensorID toOutput:&v15];
  v10 = *(&self->super._renderingVersion + 1);
  if (v10 == +[PTRenderPipeline latestVersion])
  {
    [PTParameterPairSerialization appendUIntParameter:5 value:3 toOutput:&v15];
  }

  v11 = v15;
  v12 = v11 - [v6 bytes];
  if (v12 == [(PTGlobalRenderingMetadataVersion2 *)self sizeOfSerializedObjectWithOptions:v7])
  {
    v13 = 1;
  }

  else
  {
LABEL_8:
    v13 = 0;
  }

  return v13;
}

- (BOOL)matchesRenderState:(id)a3
{
  v4 = a3;
  v5 = *(&self->super._renderingVersion + 1);
  if ([v4 renderingVersion] == v5 && (v6 = *&self->_readSuccessAll, v6 == objc_msgSend(v4, "hwModelID")))
  {
    sensorID = self->_sensorID;
    v8 = sensorID == [v4 sourceColorBitDepth];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)applyToRenderState:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (a4 && ![PTRenderPipeline isRenderVersionSupported:*(&self->super._renderingVersion + 1)])
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Portrait.RenderingMetadata" code:2 userInfo:0];
  }

  v7 = [(PTGlobalRenderingMetadataVersion2 *)self matchesRenderState:v6];
  [v6 setSourceColorBitDepth:self->_sensorID];
  [v6 setRenderingVersion:*(&self->super._renderingVersion + 1)];
  [v6 setHwModelID:*&self->_readSuccessAll];
  [v6 prepareForRendering:!v7];
  renderingVersion = self->_renderingVersion;
  if ((renderingVersion & 1) == 0)
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PTTimedRenderingMetadataVersion1 applyToRenderRequest:v9];
    }
  }

  return renderingVersion;
}

- (void)applyToRenderRequest:(id)a3
{
  hwModelID = self->_hwModelID;
  v5 = a3;
  [v5 setSensorID:hwModelID];
  [v5 setNetworkBias:0.0];

  if ((self->_renderingVersion & 1) == 0)
  {
    v6 = _PTLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PTTimedRenderingMetadataVersion1 applyToRenderRequest:v6];
    }
  }
}

- (PTGlobalRenderingMetadataVersion2)initWithData:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 bytes];
  v6 = [(PTGlobalRenderingMetadataVersion2 *)self initWithMinorVersion:bswap32(v5[3])];
  if (v6 && (v7 = bswap32(*v5), [v4 length] == v7) && (v7 & 7) == 0 && -[PTGlobalRenderingMetadata majorVersion](v6, "majorVersion") == 2 && -[PTGlobalRenderingMetadata majorVersion](v6, "majorVersion") == bswap32(v5[2]))
  {
    v8 = (v7 + 0x7FFFFFFF0) >> 3;
    v50 = 0;
    LOBYTE(v6->_renderingVersion) = 1;
    v9 = [PTParameterPairSerialization getUIntParameter:1 fromPairs:v5 + 4 numPairs:v8 didFindValue:&v50];
    *(&v6->super._renderingVersion + 1) = v9;
    v17 = [OUTLINED_FUNCTION_0_7(v9 v10];
    *&v6->_readSuccessAll = v17;
    v25 = [OUTLINED_FUNCTION_0_7(v17 v18];
    v6->_hwModelID = v25;
    v6->_sensorID = [OUTLINED_FUNCTION_0_7(v25 v26];
    LOBYTE(v6->_renderingVersion) &= v50;
    if (![PTRenderPipeline isRenderVersionSupported:*(&v6->super._renderingVersion + 1)])
    {
      v33 = _PTLogSystem();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = *(&v6->super._renderingVersion + 1);
        *buf = 67109120;
        LODWORD(v52) = v34;
        _os_log_impl(&dword_2243FB000, v33, OS_LOG_TYPE_INFO, "Render version not supported: %i", buf, 8u);
      }

      *(&v6->super._renderingVersion + 1) = [PTParameterPairSerialization getUIntParameter:5 fromPairs:v5 + 4 numPairs:v8 withDefault:*(&v6->super._renderingVersion + 1) didFindValue:&v50];
      v35 = _PTLogSystem();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = v50;
        if (v50 == 1)
        {
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"found: %i", *(&v6->super._renderingVersion + 1)];
        }

        else
        {
          v37 = @"not found";
        }

        *buf = 138412290;
        v52 = v37;
        _os_log_impl(&dword_2243FB000, v35, OS_LOG_TYPE_INFO, "Fallback version %@", buf, 0xCu);
        if (v36)
        {
        }
      }
    }

    v38 = v6;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

@end