@interface PTTimedRenderingMetadataVersion1
- (BOOL)writeToData:(id)data withOptions:(id)options;
- (PTTimedRenderingMetadataVersion1)initWithData:(id)data minorVersion:(unsigned int)version;
- (PTTimedRenderingMetadataVersion1)initWithMinorVersion:(unsigned int)version;
- (void)applyToRenderRequest:(id)request;
@end

@implementation PTTimedRenderingMetadataVersion1

- (PTTimedRenderingMetadataVersion1)initWithMinorVersion:(unsigned int)version
{
  v8.receiver = self;
  v8.super_class = PTTimedRenderingMetadataVersion1;
  v3 = [(PTTimedRenderingMetadata *)&v8 initWithMajorVersion:1 minorVersion:*&version];
  v5 = v3;
  if (v3)
  {
    LODWORD(v4) = 1.0;
    [(PTTimedRenderingMetadataVersion1 *)v3 setAlphaLowLight:v4];
    v5->_frameId = arc4random();
    v6 = v5;
  }

  return v5;
}

- (BOOL)writeToData:(id)data withOptions:(id)options
{
  dataCopy = data;
  optionsCopy = options;
  v8 = [(PTTimedRenderingMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:optionsCopy];
  if ([dataCopy length] < v8 || -[PTTimedRenderingMetadata majorVersion](self, "majorVersion") != 1 || (v9 = objc_msgSend(dataCopy, "mutableBytes"), *v9 = bswap32(-[PTTimedRenderingMetadataVersion1 sizeOfSerializedObjectWithOptions:](self, "sizeOfSerializedObjectWithOptions:", optionsCopy)), v9[1] = 1684956530, v17 = v9 + 2, *&v10 = self->_focusDistance, v11 = 1, +[PTParameterPairSerialization appendFloatParameter:value:toOutput:](PTParameterPairSerialization, "appendFloatParameter:value:toOutput:", 1, &v17, v10), *&v12 = self->_aperture, +[PTParameterPairSerialization appendFloatParameter:value:toOutput:](PTParameterPairSerialization, "appendFloatParameter:value:toOutput:", 2, &v17, v12), +[PTParameterPairSerialization appendUIntParameter:value:toOutput:](PTParameterPairSerialization, "appendUIntParameter:value:toOutput:", 3, self->_agc, &v17), *&v13 = self->_alphaLowLight, +[PTParameterPairSerialization appendFloatParameter:value:toOutput:](PTParameterPairSerialization, "appendFloatParameter:value:toOutput:", 4, &v17, v13), +[PTParameterPairSerialization appendUIntParameter:value:toOutput:](PTParameterPairSerialization, "appendUIntParameter:value:toOutput:", 5, self->_frameId, &v17), v14 = v17, v15 = v14 - objc_msgSend(dataCopy, "bytes"), v15 != -[PTTimedRenderingMetadataVersion1 sizeOfSerializedObjectWithOptions:](self, "sizeOfSerializedObjectWithOptions:", optionsCopy)))
  {
    v11 = 0;
  }

  return v11;
}

- (void)applyToRenderRequest:(id)request
{
  aperture = self->_aperture;
  requestCopy = request;
  *&v6 = aperture;
  [requestCopy setFNumber:v6];
  *&v7 = self->_focusDistance;
  [requestCopy setFocusDisparity:v7];
  [requestCopy setAGC:self->_agc];
  *&v8 = self->_alphaLowLight;
  [requestCopy setAlphaLowLight:v8];
  [requestCopy setFrameId:self->_frameId];

  if (!self->_readSuccessAll)
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PTTimedRenderingMetadataVersion1 applyToRenderRequest:v9];
    }
  }
}

- (PTTimedRenderingMetadataVersion1)initWithData:(id)data minorVersion:(unsigned int)version
{
  v4 = *&version;
  dataCopy = data;
  v7 = [(PTTimedRenderingMetadataVersion1 *)self initWithMinorVersion:v4];
  if (v7 && ((v8 = [dataCopy bytes], v9 = bswap32(*v8), objc_msgSend(dataCopy, "length") == v9) ? (v10 = (v9 & 7) == 0) : (v10 = 0), v10))
  {
    v11 = (v9 + 0x7FFFFFFF8) >> 3;
    v71 = 0;
    v7->_readSuccessAll = 1;
    v12 = [OUTLINED_FUNCTION_1_1() getFloatParameter:1 fromPairs:? numPairs:? didFindValue:?];
    v7->_focusDistance = v13;
    OUTLINED_FUNCTION_0_1(v12, v14, v15, v16, v17, v18, v19, v20, v57, *v62, *&v62[4], v62[6], v71);
    v21 = [OUTLINED_FUNCTION_1_1() getFloatParameter:2 fromPairs:? numPairs:? didFindValue:?];
    v7->_aperture = v22;
    OUTLINED_FUNCTION_0_1(v21, v23, v24, v25, v26, v27, v28, v29, v58, v63, v67, v69, v71);
    v30 = [OUTLINED_FUNCTION_1_1() getUIntParameter:3 fromPairs:? numPairs:? didFindValue:?];
    v7->_agc = v30;
    OUTLINED_FUNCTION_0_1(v30, v31, v32, v33, v34, v35, v36, v37, v59, v64, v68, v70, v71);
    if (v4 >= 2)
    {
      v38 = [OUTLINED_FUNCTION_1_1() getFloatParameter:4 fromPairs:? numPairs:? didFindValue:?];
      v7->_alphaLowLight = v39;
      OUTLINED_FUNCTION_0_1(v38, v40, v41, v42, v43, v44, v45, v46, v60, *v65, *&v65[4], v65[6], v71);
      if (v4 >= 5)
      {
        v47 = [PTParameterPairSerialization getUIntParameter:5 fromPairs:v8 + 2 numPairs:v11 withDefault:v7->_frameId didFindValue:&v71];
        v7->_frameId = v47;
        OUTLINED_FUNCTION_0_1(v47, v48, v49, v50, v51, v52, v53, v54, v61, *v66, *&v66[4], v66[6], v71);
      }
    }

    v55 = v7;
  }

  else
  {
    v55 = 0;
  }

  return v55;
}

@end