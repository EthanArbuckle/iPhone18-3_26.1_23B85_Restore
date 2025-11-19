@interface PTTimedRenderingMetadataVersion2
- (BOOL)writeToData:(id)a3 withOptions:(id)a4;
- (CGSize)totalSensorCropRectSize;
- (PTTimedRenderingMetadataVersion2)initWithData:(id)a3 minorVersion:(unsigned int)a4;
- (PTTimedRenderingMetadataVersion2)initWithMinorVersion:(unsigned int)a3;
- (void)applyToRenderRequest:(id)a3;
@end

@implementation PTTimedRenderingMetadataVersion2

- (PTTimedRenderingMetadataVersion2)initWithMinorVersion:(unsigned int)a3
{
  v6.receiver = self;
  v6.super_class = PTTimedRenderingMetadataVersion2;
  v3 = [(PTTimedRenderingMetadata *)&v6 initWithMajorVersion:2 minorVersion:*&a3];
  if (v3)
  {
    v3->_frameId = arc4random();
    v3->_alphaLowLight = 1.0;
    v4 = v3;
  }

  return v3;
}

- (BOOL)writeToData:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PTTimedRenderingMetadataVersion2 *)self sizeOfSerializedObjectWithOptions:v7];
  if ([v6 length] < v8 || -[PTTimedRenderingMetadata majorVersion](self, "majorVersion") != 2 || (v9 = objc_msgSend(v6, "mutableBytes"), *v9 = bswap32(-[PTTimedRenderingMetadataVersion2 sizeOfSerializedObjectWithOptions:](self, "sizeOfSerializedObjectWithOptions:", v7)), v9[1] = 1684956530, v21 = v9 + 2, *&v10 = self->_focusDisparity, v11 = 1, +[PTParameterPairSerialization appendFloatParameter:value:toOutput:](PTParameterPairSerialization, "appendFloatParameter:value:toOutput:", 1, &v21, v10), *&v12 = self->_fNumber, +[PTParameterPairSerialization appendFloatParameter:value:toOutput:](PTParameterPairSerialization, "appendFloatParameter:value:toOutput:", 2, &v21, v12), *&v13 = self->_focalLenIn35mmFilm, +[PTParameterPairSerialization appendFloatParameter:value:toOutput:](PTParameterPairSerialization, "appendFloatParameter:value:toOutput:", 3, &v21, v13), width = self->_totalSensorCropRectSize.width, *&width = width, +[PTParameterPairSerialization appendFloatParameter:value:toOutput:](PTParameterPairSerialization, "appendFloatParameter:value:toOutput:", 4, &v21, width), height = self->_totalSensorCropRectSize.height, *&height = height, +[PTParameterPairSerialization appendFloatParameter:value:toOutput:](PTParameterPairSerialization, "appendFloatParameter:value:toOutput:", 5, &v21, height), +[PTParameterPairSerialization appendFloatParameter:value:toOutput:](PTParameterPairSerialization, "appendFloatParameter:value:toOutput:", 6, &v21, *self->_visCropFactor), LODWORD(v16) = *&self->_visCropFactor[4], +[PTParameterPairSerialization appendFloatParameter:value:toOutput:](PTParameterPairSerialization, "appendFloatParameter:value:toOutput:", 7, &v21, v16), +[PTParameterPairSerialization appendUIntParameter:value:toOutput:](PTParameterPairSerialization, "appendUIntParameter:value:toOutput:", 8, self->_AGC, &v21), +[PTParameterPairSerialization appendUIntParameter:value:toOutput:](PTParameterPairSerialization, "appendUIntParameter:value:toOutput:", 9, self->_conversionGain, &v21), +[PTParameterPairSerialization appendUIntParameter:value:toOutput:](PTParameterPairSerialization, "appendUIntParameter:value:toOutput:", 10, self->_readNoise_1x, &v21), +[PTParameterPairSerialization appendUIntParameter:value:toOutput:](PTParameterPairSerialization, "appendUIntParameter:value:toOutput:", 11, self->_readNoise_8x, &v21), +[PTParameterPairSerialization appendUIntParameter:value:toOutput:](PTParameterPairSerialization, "appendUIntParameter:value:toOutput:", 12, self->_frameId, &v21), *&v17 = self->_alphaLowLight, +[PTParameterPairSerialization appendFloatParameter:value:toOutput:](PTParameterPairSerialization, "appendFloatParameter:value:toOutput:", 13, &v21, v17), v18 = v21, v19 = v18 - objc_msgSend(v6, "bytes"), v19 != -[PTTimedRenderingMetadataVersion2 sizeOfSerializedObjectWithOptions:](self, "sizeOfSerializedObjectWithOptions:", v7)))
  {
    v11 = 0;
  }

  return v11;
}

- (void)applyToRenderRequest:(id)a3
{
  focusDisparity = self->_focusDisparity;
  v5 = a3;
  *&v6 = focusDisparity;
  [v5 setFocusDisparity:v6];
  *&v7 = self->_fNumber;
  [v5 setFNumber:v7];
  *&v8 = self->_focalLenIn35mmFilm;
  [v5 setFocalLenIn35mmFilm:v8];
  [v5 setTotalSensorCropRectSize:{self->_totalSensorCropRectSize.width, self->_totalSensorCropRectSize.height}];
  [v5 setVisCropFactor:*self->_visCropFactor];
  [v5 setAGC:self->_AGC];
  [v5 setConversionGain:self->_conversionGain];
  [v5 setReadNoise_1x:self->_readNoise_1x];
  [v5 setReadNoise_8x:self->_readNoise_8x];
  [v5 setFrameId:self->_frameId];
  *&v9 = self->_alphaLowLight;
  [v5 setAlphaLowLight:v9];

  if (!self->_readSuccessAll)
  {
    v10 = _PTLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PTTimedRenderingMetadataVersion1 applyToRenderRequest:v10];
    }
  }
}

- (CGSize)totalSensorCropRectSize
{
  width = self->_totalSensorCropRectSize.width;
  height = self->_totalSensorCropRectSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PTTimedRenderingMetadataVersion2)initWithData:(id)a3 minorVersion:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(PTTimedRenderingMetadataVersion2 *)self initWithMinorVersion:v4];
  if (v7 && ((v8 = [v6 bytes], v9 = bswap32(*v8), objc_msgSend(v6, "length") == v9) ? (v10 = (v9 & 7) == 0) : (v10 = 0), v10))
  {
    v163 = 0;
    v7->_readSuccessAll = 1;
    v11 = [PTParameterPairSerialization getFloatParameter:1 fromPairs:v8 + 2 numPairs:(v9 + 0x7FFFFFFF8) >> 3 didFindValue:&v163];
    v7->_focusDisparity = v12;
    v20 = [OUTLINED_FUNCTION_0_5(v11 v13];
    v7->_fNumber = v21;
    v29 = [OUTLINED_FUNCTION_0_5(v20 v22];
    v7->_focalLenIn35mmFilm = v30;
    v38 = [OUTLINED_FUNCTION_0_5(v29 v31];
    v7->_totalSensorCropRectSize.width = v39;
    v47 = [OUTLINED_FUNCTION_0_5(v38 v40];
    v7->_totalSensorCropRectSize.height = v48;
    v56 = [OUTLINED_FUNCTION_0_5(v47 v49];
    *v7->_visCropFactor = v57;
    v65 = [OUTLINED_FUNCTION_0_5(v56 v58];
    *&v7->_visCropFactor[4] = v66;
    v74 = [OUTLINED_FUNCTION_0_5(v65 v67];
    v7->_AGC = v74;
    v82 = [OUTLINED_FUNCTION_0_5(v74 v75];
    v7->_conversionGain = v82;
    v90 = [OUTLINED_FUNCTION_0_5(v82 v83];
    v7->_readNoise_1x = v90;
    v98 = [OUTLINED_FUNCTION_0_5(v90 v91];
    v7->_readNoise_8x = v98;
    v106 = [OUTLINED_FUNCTION_0_5(v98 v99];
    v7->_frameId = v106;
    [OUTLINED_FUNCTION_0_5(v106 v107];
    v7->_alphaLowLight = v114;
    v7->_readSuccessAll &= v163;
    v115 = v7;
  }

  else
  {
    v115 = 0;
  }

  return v115;
}

@end