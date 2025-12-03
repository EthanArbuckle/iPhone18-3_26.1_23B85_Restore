@interface GVSSmoothingBuffers
- ($01BB1521EC52D44A8E7628F5261DCEC8)appliedCenterAdjustmentInput;
- ($01BB1521EC52D44A8E7628F5261DCEC8)motionBlurAdjustmentInput;
- ($31EBA679730B189A3597AFA92097BD7B)cameraMetadataInput;
- (GVSFaceSmoothingArrays)getFaceSmoothingArrays;
- (GVSFaceStabilizationData)faceStabilizationDataInput;
- (GVSQuaternionSmoothingArrays)getQuaternionSmoothingArrays;
- (GVSRollSmoothingArrays)getRollSmoothingArraysForBaseTransform:(SEL)transform;
- (GVSSmoothingAnalysisArrays)getSmoothingAnalysisArrays;
- (GVSSmoothingBuffers)initWithSize:(int)size options:(unsigned int)options;
- (GVSZoomSmoothingArrays)getZoomSmoothingArrays;
- (RollPitch)rollPitchInput;
- (ZoomSmoothingMetadata)zoomSmoothingMetadataInput;
- (__n128)setHorizonQuaternionsInput:(uint64_t)input;
- (int)_allocateBuffersWithOptions:(unsigned int)options;
- (priorQuaternionAverage)precomputedAveragesInput;
- (void)_purgeResources;
- (void)_shiftBuffers;
- (void)commitData;
- (void)dealloc;
- (void)openForNewData;
- (void)setAppliedCenterAdjustmentInput:(id)input;
- (void)setCameraMetadataInput:(id *)input;
- (void)setDidHaveMotionDataInput:(BOOL)input;
- (void)setFaceStabilizationDataInput:(GVSFaceStabilizationData)input;
- (void)setFrameDurationInput:(float)input;
- (void)setFrameDurationPrevious:(float)previous;
- (void)setIsLivePhotoKeyFrameInput:(BOOL)input;
- (void)setIsPhysicalTripodInput:(BOOL)input;
- (void)setMotionBlurAdjustmentInput:(id)input;
- (void)setNormalizedInputShiftInput:(GVSSmoothingBuffers *)self;
- (void)setNormalizedOutputShiftInput:(GVSSmoothingBuffers *)self;
- (void)setOutputFrameTimeInput:(double)input;
- (void)setPrecomputedAveragesInput:(priorQuaternionAverage *)input;
- (void)setRollHorizonTargetInput:(float)input;
- (void)setRollPitchInput:(RollPitch)input;
- (void)setRotationRateInput:(float)input;
- (void)setSerialNumberInput:(unint64_t)input;
- (void)setZoomSmoothingMetadataInput:(ZoomSmoothingMetadata *)input;
@end

@implementation GVSSmoothingBuffers

- (GVSSmoothingBuffers)initWithSize:(int)size options:(unsigned int)options
{
  selfCopy = self;
  if (size <= 0)
  {
    [GVSSmoothingBuffers initWithSize:options:];
    goto LABEL_9;
  }

  v5 = *&options;
  v10.receiver = self;
  v10.super_class = GVSSmoothingBuffers;
  v7 = [(GVSSmoothingBuffers *)&v10 init];
  selfCopy = v7;
  if (v7)
  {
    v7->_size = size;
    if (![(GVSSmoothingBuffers *)v7 _allocateBuffersWithOptions:v5])
    {
      [(GVSSmoothingBuffers *)selfCopy reset];
      goto LABEL_5;
    }

    [GVSSmoothingBuffers initWithSize:options:];
LABEL_9:
    v8 = 0;
    goto LABEL_6;
  }

LABEL_5:
  selfCopy = selfCopy;
  v8 = selfCopy;
LABEL_6:

  return v8;
}

- (void)_purgeResources
{
  originalQuaternions = self->_originalQuaternions;
  v4 = 7;
  do
  {
    v5 = *(originalQuaternions - 7);
    if (v5)
    {
      *(originalQuaternions - 7) = 0;
      free(v5);
    }

    v6 = *originalQuaternions;
    if (*originalQuaternions)
    {
      *originalQuaternions = 0;
      free(v6);
    }

    ++originalQuaternions;
    --v4;
  }

  while (v4);
  zoomSmoothingMetadata = self->_zoomSmoothingMetadata;
  if (zoomSmoothingMetadata)
  {
    self->_zoomSmoothingMetadata = 0;
    free(zoomSmoothingMetadata);
  }

  isLivePhotoKeyFrame = self->_isLivePhotoKeyFrame;
  if (isLivePhotoKeyFrame)
  {
    self->_isLivePhotoKeyFrame = 0;
    free(isLivePhotoKeyFrame);
  }

  appliedCenterAdjustment = self->_appliedCenterAdjustment;
  if (appliedCenterAdjustment)
  {
    self->_appliedCenterAdjustment = 0;
    free(appliedCenterAdjustment);
  }

  motionBlurAdjustment = self->_motionBlurAdjustment;
  if (motionBlurAdjustment)
  {
    self->_motionBlurAdjustment = 0;
    free(motionBlurAdjustment);
  }

  frameDuration = self->_frameDuration;
  if (frameDuration)
  {
    self->_frameDuration = 0;
    free(frameDuration);
  }

  v12 = *self->_normalizedInputShift;
  if (v12)
  {
    *self->_normalizedInputShift = 0;
    free(v12);
  }

  v13 = *self->_normalizedOutputShift;
  if (v13)
  {
    *self->_normalizedOutputShift = 0;
    free(v13);
  }

  cameraMetadata = self->_cameraMetadata;
  if (cameraMetadata)
  {
    self->_cameraMetadata = 0;
    free(cameraMetadata);
  }

  didHaveMotionData = self->_didHaveMotionData;
  if (didHaveMotionData)
  {
    self->_didHaveMotionData = 0;
    free(didHaveMotionData);
  }

  isPhysicalTripod = self->_isPhysicalTripod;
  if (isPhysicalTripod)
  {
    self->_isPhysicalTripod = 0;
    free(isPhysicalTripod);
  }

  undesiredMotionBlur = self->_undesiredMotionBlur;
  if (undesiredMotionBlur)
  {
    self->_undesiredMotionBlur = 0;
    free(undesiredMotionBlur);
  }

  outputFrameTime = self->_outputFrameTime;
  if (outputFrameTime)
  {
    self->_outputFrameTime = 0;
    free(outputFrameTime);
  }

  precomputedAverages = self->_precomputedAverages;
  if (precomputedAverages)
  {
    self->_precomputedAverages = 0;
    free(precomputedAverages);
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    self->_serialNumber = 0;
    free(serialNumber);
  }

  rollPitch = self->_rollPitch;
  if (rollPitch)
  {
    self->_rollPitch = 0;
    free(rollPitch);
  }

  rollHorizonTarget = self->_rollHorizonTarget;
  if (rollHorizonTarget)
  {
    self->_rollHorizonTarget = 0;
    free(rollHorizonTarget);
  }

  horizonQuaternions = self->_horizonQuaternions;
  if (horizonQuaternions)
  {
    self->_horizonQuaternions = 0;
    free(horizonQuaternions);
  }

  faceStabilizationData = self->_faceStabilizationData;
  if (faceStabilizationData)
  {
    self->_faceStabilizationData = 0;
    free(faceStabilizationData);
  }

  rotationRate = self->_rotationRate;
  if (rotationRate)
  {
    self->_rotationRate = 0;
    free(rotationRate);
  }

  self->_size = 0;
}

- (int)_allocateBuffersWithOptions:(unsigned int)options
{
  optionsCopy = options;
  v5 = 0;
  self->_quaternions[6] = 0;
  *&self->_quaternions[4] = 0u;
  *&self->_quaternions[2] = 0u;
  *self->_quaternions = 0u;
  *self->_originalQuaternions = 0u;
  *&self->_originalQuaternions[2] = 0u;
  *&self->_originalQuaternions[4] = 0u;
  self->_originalQuaternions[6] = 0;
  do
  {
    v6 = malloc_type_malloc(32 * self->_size, 0x1000040E0EAB150uLL);
    self->_quaternions[v5] = v6;
    if (!v6)
    {
      [GVSSmoothingBuffers _allocateBuffersWithOptions:];
      return -12786;
    }

    v7 = malloc_type_malloc(32 * self->_size, 0x1000040E0EAB150uLL);
    self->_originalQuaternions[v5] = v7;
    if (!v7)
    {
      [GVSSmoothingBuffers _allocateBuffersWithOptions:];
      return -12786;
    }

    ++v5;
  }

  while (v5 != 7);
  v8 = malloc_type_malloc(32 * self->_size, 0x1000040E0EAB150uLL);
  self->_appliedCenterAdjustment = v8;
  if (v8)
  {
    v9 = malloc_type_malloc(32 * self->_size, 0x1000040E0EAB150uLL);
    self->_motionBlurAdjustment = v9;
    if (v9)
    {
      v10 = malloc_type_calloc(self->_size, 4uLL, 0x100004052888210uLL);
      self->_frameDuration = v10;
      if (v10)
      {
        v11 = malloc_type_malloc(8 * self->_size, 0x100004000313F17uLL);
        *self->_normalizedInputShift = v11;
        if (v11)
        {
          v12 = malloc_type_malloc(8 * self->_size, 0x100004000313F17uLL);
          *self->_normalizedOutputShift = v12;
          if (v12)
          {
            v13 = malloc_type_calloc(self->_size, 1uLL, 0x100004077774924uLL);
            self->_isLivePhotoKeyFrame = v13;
            if (v13)
            {
              v14 = malloc_type_malloc(144 * self->_size, 0x1000040A20FB7F6uLL);
              self->_cameraMetadata = v14;
              if (v14)
              {
                v15 = malloc_type_malloc(self->_size, 0x100004077774924uLL);
                self->_didHaveMotionData = v15;
                if (v15)
                {
                  v16 = malloc_type_calloc(self->_size, 4uLL, 0x100004052888210uLL);
                  self->_undesiredMotionBlur = v16;
                  if (v16)
                  {
                    v17 = malloc_type_malloc(8 * self->_size, 0x100004000313F17uLL);
                    self->_outputFrameTime = v17;
                    if (v17)
                    {
                      v18 = malloc_type_malloc(self->_size, 0x100004077774924uLL);
                      self->_isPhysicalTripod = v18;
                      if (v18)
                      {
                        v19 = malloc_type_malloc(80 * self->_size, 0x1000040BDD33909uLL);
                        self->_precomputedAverages = v19;
                        if (v19)
                        {
                          v20 = malloc_type_calloc(self->_size, 8uLL, 0x100004000313F17uLL);
                          self->_serialNumber = v20;
                          if (v20)
                          {
                            if (optionsCopy)
                            {
                              v21 = malloc_type_calloc(self->_size, 8uLL, 0x100004000313F17uLL);
                              self->_rollPitch = v21;
                              if (v21)
                              {
                                v22 = malloc_type_calloc(self->_size, 4uLL, 0x100004052888210uLL);
                                self->_rollHorizonTarget = v22;
                                if (v22)
                                {
                                  v23 = malloc_type_calloc(self->_size, 0x10uLL, 0x1000040451B5BE8uLL);
                                  self->_horizonQuaternions = v23;
                                  if (v23)
                                  {
                                    goto LABEL_22;
                                  }

                                  [GVSSmoothingBuffers _allocateBuffersWithOptions:];
                                }

                                else
                                {
                                  [GVSSmoothingBuffers _allocateBuffersWithOptions:];
                                }
                              }

                              else
                              {
                                [GVSSmoothingBuffers _allocateBuffersWithOptions:];
                              }
                            }

                            else
                            {
LABEL_22:
                              if ((optionsCopy & 2) == 0 || (v24 = malloc_type_malloc(20 * self->_size, 0x1000040A86A77D5uLL), (self->_zoomSmoothingMetadata = v24) != 0))
                              {
                                if ((optionsCopy & 4) != 0)
                                {
                                  v25 = malloc_type_calloc(self->_size, 0x30uLL, 0x10000405457EBFFuLL);
                                  self->_faceStabilizationData = v25;
                                  if (!v25)
                                  {
                                    [GVSSmoothingBuffers _allocateBuffersWithOptions:];
                                    return -12786;
                                  }

                                  v26 = malloc_type_calloc(self->_size, 4uLL, 0x100004052888210uLL);
                                  self->_rotationRate = v26;
                                  if (!v26)
                                  {
                                    [GVSSmoothingBuffers _allocateBuffersWithOptions:];
                                    return -12786;
                                  }
                                }

                                [(GVSSmoothingBuffers *)self reset];
                                return 0;
                              }

                              [GVSSmoothingBuffers _allocateBuffersWithOptions:];
                            }
                          }

                          else
                          {
                            [GVSSmoothingBuffers _allocateBuffersWithOptions:];
                          }
                        }

                        else
                        {
                          [GVSSmoothingBuffers _allocateBuffersWithOptions:];
                        }
                      }

                      else
                      {
                        [GVSSmoothingBuffers _allocateBuffersWithOptions:];
                      }
                    }

                    else
                    {
                      [GVSSmoothingBuffers _allocateBuffersWithOptions:];
                    }
                  }

                  else
                  {
                    [GVSSmoothingBuffers _allocateBuffersWithOptions:];
                  }
                }

                else
                {
                  [GVSSmoothingBuffers _allocateBuffersWithOptions:];
                }
              }

              else
              {
                [GVSSmoothingBuffers _allocateBuffersWithOptions:];
              }
            }

            else
            {
              [GVSSmoothingBuffers _allocateBuffersWithOptions:];
            }
          }

          else
          {
            [GVSSmoothingBuffers _allocateBuffersWithOptions:];
          }
        }

        else
        {
          [GVSSmoothingBuffers _allocateBuffersWithOptions:];
        }
      }

      else
      {
        [GVSSmoothingBuffers _allocateBuffersWithOptions:];
      }
    }

    else
    {
      [GVSSmoothingBuffers _allocateBuffersWithOptions:];
    }
  }

  else
  {
    [GVSSmoothingBuffers _allocateBuffersWithOptions:];
  }

  return -12786;
}

- (void)dealloc
{
  [(GVSSmoothingBuffers *)self _purgeResources];
  v3.receiver = self;
  v3.super_class = GVSSmoothingBuffers;
  [(GVSSmoothingBuffers *)&v3 dealloc];
}

- (void)_shiftBuffers
{
  originalQuaternions = self->_originalQuaternions;
  v4 = 7;
  do
  {
    v5 = *(originalQuaternions - 7);
    if (v5)
    {
      memmove(v5, (v5 + 32), 32 * self->_size - 32);
    }

    if (*originalQuaternions)
    {
      memmove(*originalQuaternions, *originalQuaternions + 32, 32 * self->_size - 32);
    }

    ++originalQuaternions;
    --v4;
  }

  while (v4);
  appliedCenterAdjustment = self->_appliedCenterAdjustment;
  if (appliedCenterAdjustment)
  {
    memmove(appliedCenterAdjustment, &appliedCenterAdjustment[1], 32 * self->_size - 32);
  }

  motionBlurAdjustment = self->_motionBlurAdjustment;
  if (motionBlurAdjustment)
  {
    memmove(motionBlurAdjustment, &motionBlurAdjustment[1], 32 * self->_size - 32);
  }

  frameDuration = self->_frameDuration;
  if (frameDuration)
  {
    memmove(frameDuration, frameDuration + 1, 4 * self->_size - 4);
  }

  v9 = *self->_normalizedInputShift;
  if (v9)
  {
    memmove(v9, (v9 + 8), 8 * self->_size - 8);
  }

  v10 = *self->_normalizedOutputShift;
  if (v10)
  {
    memmove(v10, (v10 + 8), 8 * self->_size - 8);
  }

  cameraMetadata = self->_cameraMetadata;
  if (cameraMetadata)
  {
    memmove(cameraMetadata, &cameraMetadata[1], 144 * self->_size - 144);
  }

  zoomSmoothingMetadata = self->_zoomSmoothingMetadata;
  if (zoomSmoothingMetadata)
  {
    memmove(zoomSmoothingMetadata, &zoomSmoothingMetadata[1], 20 * self->_size - 20);
  }

  didHaveMotionData = self->_didHaveMotionData;
  if (didHaveMotionData)
  {
    memmove(didHaveMotionData, didHaveMotionData + 1, self->_size - 1);
  }

  isPhysicalTripod = self->_isPhysicalTripod;
  if (isPhysicalTripod)
  {
    memmove(isPhysicalTripod, isPhysicalTripod + 1, self->_size - 1);
  }

  isLivePhotoKeyFrame = self->_isLivePhotoKeyFrame;
  if (isLivePhotoKeyFrame)
  {
    memmove(isLivePhotoKeyFrame, isLivePhotoKeyFrame + 1, self->_size - 1);
  }

  precomputedAverages = self->_precomputedAverages;
  if (precomputedAverages)
  {
    memmove(precomputedAverages, &precomputedAverages[1].var1.var3, 80 * self->_size - 80);
  }

  undesiredMotionBlur = self->_undesiredMotionBlur;
  if (undesiredMotionBlur)
  {
    memmove(undesiredMotionBlur, undesiredMotionBlur + 1, 4 * self->_size - 4);
  }

  outputFrameTime = self->_outputFrameTime;
  if (outputFrameTime)
  {
    memmove(outputFrameTime, outputFrameTime + 1, 8 * self->_size - 8);
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    memmove(serialNumber, serialNumber + 1, 8 * self->_size - 8);
  }

  rollPitch = self->_rollPitch;
  if (rollPitch)
  {
    memmove(rollPitch, &rollPitch[1], 8 * self->_size - 8);
  }

  rollHorizonTarget = self->_rollHorizonTarget;
  if (rollHorizonTarget)
  {
    memmove(rollHorizonTarget, rollHorizonTarget + 1, 4 * self->_size - 4);
  }

  horizonQuaternions = self->_horizonQuaternions;
  if (horizonQuaternions)
  {
    memmove(horizonQuaternions, horizonQuaternions + 16, 16 * self->_size - 16);
  }

  faceStabilizationData = self->_faceStabilizationData;
  if (faceStabilizationData)
  {
    memmove(faceStabilizationData, &faceStabilizationData[12], 48 * self->_size - 48);
  }

  rotationRate = self->_rotationRate;
  if (rotationRate)
  {
    memmove(rotationRate, rotationRate + 1, 4 * self->_size - 4);
  }

  --self->_centerIndex;
  inputIndex = self->_inputIndex;
  if (inputIndex >= 2)
  {
    v26 = inputIndex - 1;
  }

  else
  {
    v26 = 0;
  }

  self->_inputIndex = v26;
}

- (void)openForNewData
{
  if (!self->_isOpenForWriting)
  {
    while (self->_inputIndex >= self->_size)
    {
      [(GVSSmoothingBuffers *)self _shiftBuffers];
    }

    originalQuaternionsInput = self->_originalQuaternionsInput;
    v4 = 7;
    do
    {
      FigMotionInitializeQuaternion(&originalQuaternionsInput[-7].w);
      FigMotionInitializeQuaternion(originalQuaternionsInput++);
      --v4;
    }

    while (v4);
    *(&self->_precomputedAverages->var0 + 20 * self->_inputIndex) = 0;
    self->_isOpenForWriting = 1;
  }
}

- (void)commitData
{
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    quaternionsInput = self->_quaternionsInput;
    originalQuaternions = self->_originalQuaternions;
    v5 = 7;
    do
    {
      v6 = (*(originalQuaternions - 7) + 32 * self->_inputIndex);
      v7 = *&quaternionsInput->y;
      *v6 = *&quaternionsInput->w;
      v6[1] = v7;
      v8 = *originalQuaternions++;
      v9 = (v8 + 32 * self->_inputIndex);
      v10 = *&quaternionsInput[7].y;
      *v9 = *&quaternionsInput[7].w;
      v9[1] = v10;
      ++quaternionsInput;
      --v5;
    }

    while (v5);
    self->_isOpenForWriting = 0;
    ++self->_inputIndex;
  }
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)appliedCenterAdjustmentInput
{
  [(GVSSmoothingBuffers *)self _checkInputIsWritable];
  v3 = &self->_appliedCenterAdjustment[self->_inputIndex];
  var0 = v3->var0;
  var1 = v3->var1;
  var2 = v3->var2;
  var3 = v3->var3;
  result.var3 = var3;
  result.var2 = var2;
  result.var1 = var1;
  result.var0 = var0;
  return result;
}

- (void)setAppliedCenterAdjustmentInput:(id)input
{
  var3 = input.var3;
  var2 = input.var2;
  var1 = input.var1;
  var0 = input.var0;
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    v8 = &self->_appliedCenterAdjustment[self->_inputIndex];
    v8->var0 = var0;
    v8->var1 = var1;
    v8->var2 = var2;
    v8->var3 = var3;
  }
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)motionBlurAdjustmentInput
{
  [(GVSSmoothingBuffers *)self _checkInputIsWritable];
  v3 = &self->_motionBlurAdjustment[self->_inputIndex];
  var0 = v3->var0;
  var1 = v3->var1;
  var2 = v3->var2;
  var3 = v3->var3;
  result.var3 = var3;
  result.var2 = var2;
  result.var1 = var1;
  result.var0 = var0;
  return result;
}

- (void)setMotionBlurAdjustmentInput:(id)input
{
  var3 = input.var3;
  var2 = input.var2;
  var1 = input.var1;
  var0 = input.var0;
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    v8 = &self->_motionBlurAdjustment[self->_inputIndex];
    v8->var0 = var0;
    v8->var1 = var1;
    v8->var2 = var2;
    v8->var3 = var3;
  }
}

- (void)setFrameDurationInput:(float)input
{
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    self->_frameDuration[self->_inputIndex] = input;
  }
}

- (void)setNormalizedInputShiftInput:(GVSSmoothingBuffers *)self
{
  v3 = v2;
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    *(*self->_normalizedInputShift + 8 * self->_inputIndex) = v3;
  }
}

- (void)setNormalizedOutputShiftInput:(GVSSmoothingBuffers *)self
{
  v3 = v2;
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    *(*self->_normalizedOutputShift + 8 * self->_inputIndex) = v3;
  }
}

- ($31EBA679730B189A3597AFA92097BD7B)cameraMetadataInput
{
  result = [(GVSSmoothingBuffers *)self _checkInputIsWritable];
  v6 = &self->_cameraMetadata[self->_inputIndex];
  v7 = *&v6->var15.origin.y;
  *&retstr->var14.var1.var0 = *&v6->var14.var1.var0;
  *&retstr->var15.origin.y = v7;
  *&retstr->var15.size.height = *&v6->var15.size.height;
  v8 = *&v6->var9;
  *&retstr->var7 = *&v6->var7;
  *&retstr->var9 = v8;
  v9 = *&v6->var13.var0;
  *&retstr->var11 = *&v6->var11;
  *&retstr->var13.var0 = v9;
  v10 = *&v6->var4;
  *&retstr->var0 = *&v6->var0;
  *&retstr->var4 = v10;
  return result;
}

- (void)setCameraMetadataInput:(id *)input
{
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    v5 = &self->_cameraMetadata[self->_inputIndex];
    v6 = *&input->var11;
    v8 = *&input->var4;
    v7 = *&input->var7;
    *&v5->var9 = *&input->var9;
    *&v5->var11 = v6;
    *&v5->var4 = v8;
    *&v5->var7 = v7;
    v9 = *&input->var15.size.height;
    v11 = *&input->var13.var0;
    v10 = *&input->var14.var1.var0;
    *&v5->var15.origin.y = *&input->var15.origin.y;
    *&v5->var15.size.height = v9;
    *&v5->var13.var0 = v11;
    *&v5->var14.var1.var0 = v10;
    *&v5->var0 = *&input->var0;
  }
}

- (void)setDidHaveMotionDataInput:(BOOL)input
{
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    self->_didHaveMotionData[self->_inputIndex] = input;
  }
}

- (void)setIsPhysicalTripodInput:(BOOL)input
{
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    self->_isPhysicalTripod[self->_inputIndex] = input;
  }
}

- (void)setIsLivePhotoKeyFrameInput:(BOOL)input
{
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    self->_isLivePhotoKeyFrame[self->_inputIndex] = input;
  }
}

- (void)setOutputFrameTimeInput:(double)input
{
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    self->_outputFrameTime[self->_inputIndex] = input;
  }
}

- (void)setSerialNumberInput:(unint64_t)input
{
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    self->_serialNumber[self->_inputIndex] = input;
  }
}

- (RollPitch)rollPitchInput
{
  [(GVSSmoothingBuffers *)self _checkInputIsWritable];
  v3 = &self->_rollPitch[self->_inputIndex];
  var0 = v3->var0;
  var1 = v3->var1;
  result.var1 = var1;
  result.var0 = var0;
  return result;
}

- (void)setRollPitchInput:(RollPitch)input
{
  var1 = input.var1;
  var0 = input.var0;
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    v6 = &self->_rollPitch[self->_inputIndex];
    v6->var0 = var0;
    v6->var1 = var1;
  }
}

- (void)setRollHorizonTargetInput:(float)input
{
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    self->_rollHorizonTarget[self->_inputIndex] = input;
  }
}

- (priorQuaternionAverage)precomputedAveragesInput
{
  result = [(GVSSmoothingBuffers *)self _checkInputIsWritable];
  v6 = (&self->_precomputedAverages->var0 + 20 * self->_inputIndex);
  v7 = v6[3];
  *&retstr->var1.var3 = v6[2];
  *&retstr[1].var0 = v7;
  *&retstr[1].var1.var1 = v6[4];
  v8 = v6[1];
  *&retstr->var0 = *v6;
  *&retstr->var1.var1 = v8;
  return result;
}

- (void)setPrecomputedAveragesInput:(priorQuaternionAverage *)input
{
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    v5 = (&self->_precomputedAverages->var0 + 20 * self->_inputIndex);
    v6 = *&input[1].var1.var1;
    v8 = *&input->var1.var1;
    v7 = *&input->var1.var3;
    v5[3] = *&input[1].var0;
    v5[4] = v6;
    v5[1] = v8;
    v5[2] = v7;
    *v5 = *&input->var0;
  }
}

- (ZoomSmoothingMetadata)zoomSmoothingMetadataInput
{
  result = [(GVSSmoothingBuffers *)self _checkInputIsWritable];
  *retstr = self->_zoomSmoothingMetadata[self->_inputIndex];
  return result;
}

- (void)setZoomSmoothingMetadataInput:(ZoomSmoothingMetadata *)input
{
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    v5 = &self->_zoomSmoothingMetadata[self->_inputIndex];
    v6 = *&input->var0;
    v5->var4 = input->var4;
    *&v5->var0 = v6;
  }
}

- (__n128)setHorizonQuaternionsInput:(uint64_t)input
{
  if ([input _checkInputIsWritable])
  {
    result = a2;
    *(*(input + 248) + 16 * *(input + 276)) = a2;
  }

  return result;
}

- (GVSFaceStabilizationData)faceStabilizationDataInput
{
  v4 = v2;
  [(GVSSmoothingBuffers *)self _checkInputIsWritable];
  v5 = &self->_faceStabilizationData[12 * self->_inputIndex];
  v6 = *&v5[4].var2;
  *v4 = *&v5->var2;
  v4[1] = v6;
  v7 = *&v5[8].var2;
  v4[2] = v7;
  return v7;
}

- (void)setFaceStabilizationDataInput:(GVSFaceStabilizationData)input
{
  v4 = v3;
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    v6 = &self->_faceStabilizationData[12 * self->_inputIndex];
    v7 = *v4;
    v8 = v4[2];
    *&v6[4].var2 = v4[1];
    *&v6[8].var2 = v8;
    *&v6->var2 = v7;
  }
}

- (void)setRotationRateInput:(float)input
{
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    self->_rotationRate[self->_inputIndex] = input;
  }
}

- (void)setFrameDurationPrevious:(float)previous
{
  if ([(GVSSmoothingBuffers *)self _checkInputIsWritable])
  {
    self->_frameDuration[self->_inputIndex - 1] = previous;
  }
}

- (GVSQuaternionSmoothingArrays)getQuaternionSmoothingArrays
{
  retstr->var0 = &self->var1;
  *&retstr->var1 = *&self[1].var10;
  var3 = self[2].var3;
  v4 = *&self[2].var6;
  retstr->var3 = &self[2].var5->var0;
  retstr->var4 = var3;
  *&retstr->var5 = *&self[2].var10;
  *&retstr->var8 = v4;
  retstr->var10 = self[3].var8;
  retstr->var11 = 0;
  LODWORD(var3) = self[3].var9;
  LODWORD(retstr[1].var0) = var3 - 1;
  HIDWORD(retstr[1].var0) = var3;
  LODWORD(var3) = self[3].var10;
  LODWORD(retstr[1].var1) = var3;
  HIDWORD(retstr[1].var1) = (var3 - 1) >> 1;
  return self;
}

- (GVSRollSmoothingArrays)getRollSmoothingArraysForBaseTransform:(SEL)transform
{
  *&retstr->var11 = 0;
  v4 = *(&self->var1 + a4);
  retstr->var0 = self[3].var1;
  retstr->var1 = v4;
  *&retstr->var2 = *&self[2].var11;
  retstr->var4 = self[2].var1;
  *&retstr->var5 = *&self[2].var6;
  retstr->var7 = self[3].var4;
  retstr->var8 = 0;
  var4_high = HIDWORD(self[3].var4);
  retstr->var9 = var4_high - 1;
  retstr->var10 = var4_high;
  retstr->var11 = (LODWORD(self[3].var5) - 1) >> 1;
  return self;
}

- (GVSZoomSmoothingArrays)getZoomSmoothingArrays
{
  *&retstr->var7 = 0;
  retstr->var0 = self[3].var2;
  *&retstr->var1 = *&self[4].var2;
  retstr->var3 = self[5].var5;
  retstr->var4 = 0;
  var6 = self[5].var6;
  retstr->var5 = var6 - 1;
  retstr->var6 = var6;
  retstr->var7 = (self[5].var7 - 1) >> 1;
  return self;
}

- (GVSSmoothingAnalysisArrays)getSmoothingAnalysisArrays
{
  *&retstr->var13 = 0;
  retstr->var0 = &self->var8;
  *&retstr->var1 = *&self[1].var3;
  var1 = self[2].var1;
  var2 = self[2].var2;
  retstr->var3 = self[1].var7;
  retstr->var4 = var2;
  *&retstr->var5 = *&self[1].var11;
  retstr->var7 = self[2].var4;
  retstr->var8 = var1;
  retstr->var9 = self[2].var11;
  retstr->var10 = 0;
  var12 = self[2].var12;
  retstr->var11 = var12 - 1;
  retstr->var12 = var12;
  retstr->var13 = (self[2].var13 - 1) >> 1;
  return self;
}

- (GVSFaceSmoothingArrays)getFaceSmoothingArrays
{
  *&retstr->var8 = 0;
  v3 = *&self[3].var6;
  *&retstr->var0 = *&self[4].var4;
  *&retstr->var2 = v3;
  retstr->var4 = self[4].var8;
  retstr->var5 = 0;
  v4 = *(&self[4].var8 + 1);
  retstr->var6 = v4 - 1;
  retstr->var7 = v4;
  retstr->var8 = (LODWORD(self[5].var0) - 1) >> 1;
  return self;
}

- (uint64_t)initWithSize:options:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.15()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.16()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.17()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.18()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.19()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.20()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_allocateBuffersWithOptions:.cold.21()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end