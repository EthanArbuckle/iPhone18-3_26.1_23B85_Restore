@interface PTGlobalRenderingMetadataVersion1
- (BOOL)applyToRenderState:(id)a3 error:(id *)a4;
- (BOOL)matchesRenderState:(id)a3;
- (BOOL)writeToData:(id)a3 withOptions:(id)a4;
- (CGRect)sensorCropRect;
- (PTGlobalRenderingMetadataVersion1)initWithData:(id)a3;
- (PTGlobalRenderingMetadataVersion1)initWithMinorVersion:(unsigned int)a3;
- (__n128)setExtrinsicsMatrix:(__n128)a3;
- (void)applyToRenderRequest:(id)a3;
@end

@implementation PTGlobalRenderingMetadataVersion1

- (PTGlobalRenderingMetadataVersion1)initWithMinorVersion:(unsigned int)a3
{
  v7.receiver = self;
  v7.super_class = PTGlobalRenderingMetadataVersion1;
  v3 = [(PTGlobalRenderingMetadata *)&v7 initWithMajorVersion:1 minorVersion:*&a3];
  v4 = v3;
  if (v3)
  {
    v3->_sourceColorBitDepth = 10;
    v3->_noiseScaleFactor = NAN;
    v3->_hwModelID = 0;
    v3->_renderingVersion = 2;
    v5 = v3;
  }

  return v4;
}

- (BOOL)writeToData:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PTGlobalRenderingMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:v7];
  if ([v6 length] < v8 || -[PTGlobalRenderingMetadata majorVersion](self, "majorVersion") != 1)
  {
    goto LABEL_14;
  }

  v9 = [v6 mutableBytes];
  *v9 = bswap32([(PTGlobalRenderingMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:v7]);
  v9[1] = 1684956530;
  v9[2] = bswap32([(PTGlobalRenderingMetadata *)self majorVersion]);
  v9[3] = bswap32([(PTGlobalRenderingMetadata *)self minorVersion]);
  v29 = v9 + 4;
  *&v10 = self->_defaultAperture;
  [PTParameterPairSerialization appendFloatParameter:1 value:&v29 toOutput:v10];
  *&v11 = self->_minAperture;
  [PTParameterPairSerialization appendFloatParameter:2 value:&v29 toOutput:v11];
  *&v12 = self->_maxAperture;
  [PTParameterPairSerialization appendFloatParameter:3 value:&v29 toOutput:v12];
  *&v13 = self->_highlightBoostFactor;
  [PTParameterPairSerialization appendFloatParameter:4 value:&v29 toOutput:v13];
  *&v14 = self->_highlightChromaFactor;
  [PTParameterPairSerialization appendFloatParameter:5 value:&v29 toOutput:v14];
  *&v15 = self->_focalLength35mm;
  [PTParameterPairSerialization appendFloatParameter:6 value:&v29 toOutput:v15];
  [PTParameterPairSerialization appendUIntParameter:7 value:self->_conversionGain toOutput:&v29];
  [PTParameterPairSerialization appendUIntParameter:8 value:self->_readNoise1x toOutput:&v29];
  [PTParameterPairSerialization appendUIntParameter:9 value:self->_readNoise8x toOutput:&v29];
  [PTParameterPairSerialization appendUIntParameter:10 value:self->_rawSensorSize.width toOutput:&v29];
  [PTParameterPairSerialization appendUIntParameter:11 value:self->_rawSensorSize.height toOutput:&v29];
  x = self->_sensorCropRect.origin.x;
  *&x = x;
  [PTParameterPairSerialization appendFloatParameter:12 value:&v29 toOutput:x];
  y = self->_sensorCropRect.origin.y;
  *&y = y;
  [PTParameterPairSerialization appendFloatParameter:13 value:&v29 toOutput:y];
  width = self->_sensorCropRect.size.width;
  *&width = width;
  [PTParameterPairSerialization appendFloatParameter:14 value:&v29 toOutput:width];
  height = self->_sensorCropRect.size.height;
  *&height = height;
  [PTParameterPairSerialization appendFloatParameter:15 value:&v29 toOutput:height];
  for (i = 0; i != 12; ++i)
  {
    LODWORD(v20) = *(&self[1].super.super.isa + 4 * (i / 3u) + ((i + i / 3u) & 3));
    [PTParameterPairSerialization appendFloatParameter:i | 0x10u value:&v29 toOutput:v20];
  }

  [PTParameterPairSerialization appendFloatParameter:28 value:&v29 toOutput:*self->_visCropFactor];
  LODWORD(v22) = *&self->_visCropFactor[4];
  [PTParameterPairSerialization appendFloatParameter:29 value:&v29 toOutput:v22];
  [PTParameterPairSerialization appendUIntParameter:30 value:self->_sensorID toOutput:&v29];
  [PTParameterPairSerialization appendUIntParameter:31 value:self->_renderingVersion toOutput:&v29];
  if ([(PTGlobalRenderingMetadata *)self minorVersion]> 3)
  {
    [PTParameterPairSerialization appendUIntParameter:32 value:self->_sourceColorBitDepth toOutput:&v29];
  }

  if ([(PTGlobalRenderingMetadata *)self minorVersion]>= 5)
  {
    *&v23 = self->_networkBias;
    [PTParameterPairSerialization appendFloatParameter:33 value:&v29 toOutput:v23];
  }

  if ([(PTGlobalRenderingMetadata *)self minorVersion]>= 6)
  {
    *&v24 = self->_noiseScaleFactor;
    [PTParameterPairSerialization appendFloatParameter:34 value:&v29 toOutput:v24];
    [PTParameterPairSerialization appendUIntParameter:35 value:self->_hwModelID toOutput:&v29];
  }

  v25 = v29;
  v26 = v25 - [v6 bytes];
  if (v26 == [(PTGlobalRenderingMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:v7])
  {
    v27 = 1;
  }

  else
  {
LABEL_14:
    v27 = 0;
  }

  return v27;
}

- (BOOL)matchesRenderState:(id)a3
{
  v4 = a3;
  sourceColorBitDepth = self->_sourceColorBitDepth;
  if (sourceColorBitDepth == [v4 sourceColorBitDepth] && (renderingVersion = self->_renderingVersion, objc_msgSend(v4, "renderingVersion") == renderingVersion) && (noiseScaleFactor = self->_noiseScaleFactor, objc_msgSend(v4, "noiseScaleFactor"), LODWORD(v9) = v8, *&v10 = noiseScaleFactor, -[PTGlobalRenderingMetadataVersion1 nanAwareEqual:with:](self, "nanAwareEqual:with:", v10, v9)))
  {
    hwModelID = self->_hwModelID;
    v12 = hwModelID == [v4 hwModelID];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)applyToRenderState:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (a4 && ![PTRenderPipeline isRenderVersionSupported:self->_renderingVersion])
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Portrait.RenderingMetadata" code:2 userInfo:0];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = [(PTGlobalRenderingMetadataVersion1 *)self matchesRenderState:v6];
  [v6 setSourceColorBitDepth:self->_sourceColorBitDepth];
  [v6 setRenderingVersion:self->_renderingVersion];
  *&v9 = self->_noiseScaleFactor;
  [v6 setNoiseScaleFactor:v9];
  [v6 setHwModelID:self->_hwModelID];
  [v6 prepareForRendering:!v8];
  if (!self->_readSuccessAll)
  {
    v10 = _PTLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PTTimedRenderingMetadataVersion1 applyToRenderRequest:v10];
    }

    v7 = 0;
  }

  return v7;
}

- (void)applyToRenderRequest:(id)a3
{
  focalLength35mm = self->_focalLength35mm;
  v5 = a3;
  *&v6 = focalLength35mm;
  [v5 setFocalLenIn35mmFilm:v6];
  [v5 setConversionGain:self->_conversionGain];
  [v5 setReadNoise_1x:self->_readNoise1x];
  [v5 setReadNoise_8x:self->_readNoise8x];
  [v5 setTotalSensorCropRectSize:{self->_sensorCropRect.size.width, self->_sensorCropRect.size.height}];
  [v5 setVisCropFactor:*self->_visCropFactor];
  *&v7 = self->_networkBias;
  [v5 setNetworkBias:v7];
  [v5 setSensorID:self->_sensorID];

  if (!self->_readSuccessAll)
  {
    v8 = _PTLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PTTimedRenderingMetadataVersion1 applyToRenderRequest:v8];
    }
  }
}

- (CGRect)sensorCropRect
{
  x = self->_sensorCropRect.origin.x;
  y = self->_sensorCropRect.origin.y;
  width = self->_sensorCropRect.size.width;
  height = self->_sensorCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (__n128)setExtrinsicsMatrix:(__n128)a3
{
  result[9] = a2;
  result[10] = a3;
  result[11] = a4;
  result[12] = a5;
  return result;
}

- (PTGlobalRenderingMetadataVersion1)initWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 bytes];
  v6 = bswap32(v5[3]);
  v7 = [(PTGlobalRenderingMetadataVersion1 *)self initWithMinorVersion:v6];
  if (v7 && (v8 = bswap32(*v5), [v4 length] == v8) && (v8 & 7) == 0 && -[PTGlobalRenderingMetadata majorVersion](v7, "majorVersion") == 1 && -[PTGlobalRenderingMetadata majorVersion](v7, "majorVersion") == bswap32(v5[2]))
  {
    v9 = (v8 + 0x7FFFFFFF0) >> 3;
    v300 = 0;
    v7->_readSuccessAll = 1;
    v10 = [OUTLINED_FUNCTION_3_1() getFloatParameter:1 fromPairs:? numPairs:? didFindValue:?];
    v7->_defaultAperture = v11;
    v19 = [OUTLINED_FUNCTION_1_2(v10 v12];
    v7->_minAperture = v20;
    v28 = [OUTLINED_FUNCTION_1_2(v19 v21];
    v7->_maxAperture = v29;
    v37 = [OUTLINED_FUNCTION_0_2(v28 v30];
    v7->_highlightBoostFactor = v38;
    v46 = [OUTLINED_FUNCTION_0_2(v37 v39];
    v7->_highlightChromaFactor = v47;
    v55 = [OUTLINED_FUNCTION_0_2(v46 v48];
    v7->_focalLength35mm = v56;
    v64 = [OUTLINED_FUNCTION_0_2(v55 v57];
    v7->_conversionGain = v64;
    v72 = [OUTLINED_FUNCTION_0_2(v64 v65];
    v7->_readNoise1x = v72;
    v80 = [OUTLINED_FUNCTION_0_2(v72 v73];
    v7->_readNoise8x = v80;
    v88 = [OUTLINED_FUNCTION_0_2(v80 v81];
    v7->_rawSensorSize.width = v88;
    v96 = [OUTLINED_FUNCTION_0_2(v88 v89];
    v7->_rawSensorSize.height = v96;
    v104 = [OUTLINED_FUNCTION_0_2(v96 v97];
    v7->_sensorCropRect.origin.x = v105;
    v113 = [OUTLINED_FUNCTION_0_2(v104 v106];
    v7->_sensorCropRect.origin.y = v114;
    v122 = [OUTLINED_FUNCTION_0_2(v113 v115];
    v7->_sensorCropRect.size.width = v123;
    v131 = [OUTLINED_FUNCTION_0_2(v122 v124];
    v132 = 0;
    v7->_sensorCropRect.size.height = v133;
    OUTLINED_FUNCTION_0_1(v131, v134, v135, v136, v137, v138, v139, v140, v230, v252, v275, v294, v300);
    do
    {
      [PTParameterPairSerialization getFloatParameter:v132 | 0x10u fromPairs:v5 + 4 numPairs:v9 didFindValue:&v300];
      LOBYTE(v142) = v132 % 3u;
      if (((v132 % 3u) & 0xFE) != 0)
      {
        v142 = 2;
      }

      else
      {
        v142 = v142;
      }

      *(&v7[1].super.super.isa + 4 * (v132 / 3u) + v142) = v141;
      v7->_readSuccessAll &= v300;
      ++v132;
    }

    while (v132 != 12);
    v143 = [OUTLINED_FUNCTION_3_1() getFloatParameter:28 fromPairs:? numPairs:? didFindValue:?];
    *v7->_visCropFactor = v144;
    v152 = [OUTLINED_FUNCTION_0_2(v143 v145];
    *&v7->_visCropFactor[4] = v153;
    v161 = [OUTLINED_FUNCTION_0_2(v152 v154];
    v7->_sensorID = v161;
    v169 = [OUTLINED_FUNCTION_0_2(v161 v162];
    v7->_renderingVersion = v169;
    OUTLINED_FUNCTION_0_1(v169, v170, v171, v172, v173, v174, v175, v176, v234, v256, v278, v297, v300);
    v177 = *v257;
    if (*v257 > 3u && (v178 = [OUTLINED_FUNCTION_3_1() getUIntParameter:32 fromPairs:? numPairs:? didFindValue:?], v7->_sourceColorBitDepth = v178, OUTLINED_FUNCTION_0_1(v178, v179, v180, v181, v182, v183, v184, v185, v235, *v257, *&v257[4], v257[6], v300), v177 > 5))
    {
      v189 = [OUTLINED_FUNCTION_3_1() getFloatParameter:33 fromPairs:? numPairs:? didFindValue:?];
      v7->_networkBias = v190;
      v198 = [OUTLINED_FUNCTION_0_2(v189 v191];
      v7->_noiseScaleFactor = v199;
      v207 = [OUTLINED_FUNCTION_0_2(v198 v200];
      v7->_hwModelID = v207;
      OUTLINED_FUNCTION_0_1(v207, v208, v209, v210, v211, v212, v213, v214, v238, v260, v280, v299, v300);
    }

    else
    {
      sensorID_low = LOBYTE(v7->_sensorID);
      if (sensorID_low == 20)
      {
        v7->_networkBias = 0.0;
      }

      else
      {
        if (sensorID_low == 19)
        {
          v187 = 1056964608;
        }

        else
        {
          v187 = 1061997773;
        }

        LODWORD(v7->_networkBias) = v187;
      }
    }

    v188 = v7;
  }

  else
  {
    v188 = 0;
  }

  return v188;
}

@end