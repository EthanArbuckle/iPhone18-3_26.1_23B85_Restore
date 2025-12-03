@interface PTGlobalCinematographyMetadataVersion1
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maximumRackFocusPullTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumRackFocusPullTime;
- (BOOL)writeToData:(id)data withOptions:(id)options;
- (PTGlobalCinematographyMetadataVersion1)initWithData:(id)data;
- (PTGlobalCinematographyMetadataVersion1)initWithMinorVersion:(unsigned int)version;
- (void)setMaximumRackFocusPullTime:(id *)time;
- (void)setMinimumRackFocusPullTime:(id *)time;
@end

@implementation PTGlobalCinematographyMetadataVersion1

- (PTGlobalCinematographyMetadataVersion1)initWithMinorVersion:(unsigned int)version
{
  v8.receiver = self;
  v8.super_class = PTGlobalCinematographyMetadataVersion1;
  v3 = [(PTGlobalCinematographyMetadata *)&v8 initWithMajorVersion:1 minorVersion:*&version];
  if (v3)
  {
    CMTimeMake(&v7, 1, 3);
    v4 = *&v7.value;
    *(v3 + 44) = v7.epoch;
    *(v3 + 28) = v4;
    CMTimeMake(&v7, 1, 3);
    v5 = *&v7.value;
    *(v3 + 68) = v7.epoch;
    *(v3 + 52) = v5;
    *(v3 + 19) = 1056964608;
  }

  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumRackFocusPullTime
{
  *&retstr->var0 = *(&self[1].var0 + 4);
  retstr->var3 = *(&self[1].var3 + 4);
  return self;
}

- (void)setMinimumRackFocusPullTime:(id *)time
{
  var3 = time->var3;
  *(&self->_focusPullerResistance + 1) = *&time->var0;
  *&self->_minimumRackFocusPullTime.flags = var3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maximumRackFocusPullTime
{
  *&retstr->var0 = *(&self[2].var0 + 4);
  retstr->var3 = *(&self[2].var3 + 4);
  return self;
}

- (void)setMaximumRackFocusPullTime:(id *)time
{
  var3 = time->var3;
  *(&self->_minimumRackFocusPullTime.epoch + 4) = *&time->var0;
  *&self->_maximumRackFocusPullTime.flags = var3;
}

- (PTGlobalCinematographyMetadataVersion1)initWithData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v6 = bswap32(bytes[3]);
  v61.receiver = self;
  v61.super_class = PTGlobalCinematographyMetadataVersion1;
  v7 = [(PTGlobalCinematographyMetadata *)&v61 initWithMajorVersion:1 minorVersion:v6];
  if (v7 && (v8 = bswap32(*bytes), [dataCopy length] == v8) && (v8 & 7) == 0 && -[PTGlobalCinematographyMetadata majorVersion](v7, "majorVersion") == 1 && -[PTGlobalCinematographyMetadata majorVersion](v7, "majorVersion") == bswap32(bytes[2]))
  {
    [OUTLINED_FUNCTION_4_0() getFloatParameter:1 fromPairs:? numPairs:? didFindValue:?];
    v7->_focusPullerAlpha = v9;
    [OUTLINED_FUNCTION_4_0() getFloatParameter:2 fromPairs:? numPairs:? didFindValue:?];
    v7->_focusPullerMaxV = v10;
    v11 = [OUTLINED_FUNCTION_4_0() getFloatParameter:3 fromPairs:? numPairs:? didFindValue:?];
    v7->_focusPullerResistance = v12;
    OUTLINED_FUNCTION_1_4(v11, v13, v14, v15, v16, v17, v18, v19, v51);
    v20 = [OUTLINED_FUNCTION_3_4() getCMTimeParameter:4 scale:90000 fromPairs:? numPairs:? withDefault:?];
    OUTLINED_FUNCTION_5_1(v20, v21, v22, v23, v24, v25, v26, v27, v52, v55, v57, v28, v59);
    OUTLINED_FUNCTION_1_4(v29, v30, v31, v32, v33, v34, v35, v36, v53);
    v37 = [OUTLINED_FUNCTION_3_4() getCMTimeParameter:5 scale:90000 fromPairs:? numPairs:? withDefault:?];
    OUTLINED_FUNCTION_5_1(v37, v38, v39, v40, v41, v42, v43, v44, v54, v56, v58, v45, v60);
    v46 = OUTLINED_FUNCTION_4_0();
    LODWORD(v47) = 0.5;
    [v46 getFloatParameter:6 fromPairs:v47 numPairs:? withDefault:?];
    HIDWORD(v7->_maximumRackFocusPullTime.epoch) = v48;
    v49 = v7;
  }

  else
  {
    v49 = 0;
  }

  return v49;
}

- (BOOL)writeToData:(id)data withOptions:(id)options
{
  dataCopy = data;
  optionsCopy = options;
  v8 = [(PTGlobalCinematographyMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:optionsCopy];
  if ([dataCopy length] >= v8 && -[PTGlobalCinematographyMetadata majorVersion](self, "majorVersion") == 1)
  {
    mutableBytes = [dataCopy mutableBytes];
    *mutableBytes = bswap32([(PTGlobalCinematographyMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:optionsCopy]);
    mutableBytes[1] = 1735683683;
    mutableBytes[2] = bswap32([(PTGlobalCinematographyMetadata *)self majorVersion]);
    mutableBytes[3] = bswap32([(PTGlobalCinematographyMetadata *)self minorVersion]);
    *&v10 = OUTLINED_FUNCTION_2_2(16);
    [v11 appendFloatParameter:1 value:v10 toOutput:?];
    *&v12 = OUTLINED_FUNCTION_2_2(20);
    [v13 appendFloatParameter:2 value:v12 toOutput:?];
    *&v14 = OUTLINED_FUNCTION_2_2(24);
    [v15 appendFloatParameter:3 value:v14 toOutput:?];
    *&v16 = OUTLINED_FUNCTION_0_8(28).n128_u64[0];
    [v17 appendCMTimeParameter:4 value:v16 scale:? toOutput:?];
    *&v18 = OUTLINED_FUNCTION_0_8(52).n128_u64[0];
    [v19 appendCMTimeParameter:5 value:v18 scale:? toOutput:?];
    *&v20 = OUTLINED_FUNCTION_2_2(76);
    [v21 appendFloatParameter:6 value:v20 toOutput:?];
    v22 = mutableBytes - [dataCopy bytes] + 16;
    v23 = v22 == [(PTGlobalCinematographyMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:optionsCopy];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end