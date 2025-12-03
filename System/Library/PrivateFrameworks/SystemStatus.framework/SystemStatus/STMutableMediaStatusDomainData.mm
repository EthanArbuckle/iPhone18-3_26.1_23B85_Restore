@interface STMutableMediaStatusDomainData
- (BOOL)applyDiff:(id)diff;
- (STMutableListData)cameraAttributionListData;
- (STMutableListData)microphoneAttributionListData;
- (STMutableListData)mutedMicrophoneRecordingAttributionListData;
- (STMutableListData)screenCaptureAttributionListData;
- (STMutableListData)systemAudioRecordingAttributionListData;
- (STMutableMediaStatusDomainData)initWithMicrophoneAttributionListData:(id)data mutedMicrophoneRecordingAttributionListData:(id)listData systemAudioRecordingAttributionListData:(id)attributionListData cameraAttributionListData:(id)cameraAttributionListData screenCaptureAttributionListData:(id)captureAttributionListData;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addCameraAttribution:(id)attribution;
- (void)addCameraCaptureAttribution:(id)attribution;
- (void)addMicrophoneAttribution:(id)attribution;
- (void)addMicrophoneRecordingAttribution:(id)attribution;
- (void)addMutedMicrophoneRecordingAttribution:(id)attribution;
- (void)addScreenCaptureAttribution:(id)attribution;
- (void)addSystemAudioRecordingAttribution:(id)attribution;
- (void)removeCameraAttribution:(id)attribution;
- (void)removeCameraCaptureAttribution:(id)attribution;
- (void)removeMicrophoneAttribution:(id)attribution;
- (void)removeMicrophoneRecordingAttribution:(id)attribution;
- (void)removeMutedMicrophoneRecordingAttribution:(id)attribution;
- (void)removeScreenCaptureAttribution:(id)attribution;
- (void)removeSystemAudioRecordingAttribution:(id)attribution;
- (void)setAudioRecordingAttributions:(id)attributions;
- (void)setCameraAttributions:(id)attributions;
- (void)setCameraCaptureAttributionList:(id)list;
- (void)setCameraCaptureAttributions:(id)attributions;
- (void)setMicrophoneAttributions:(id)attributions;
- (void)setMicrophoneRecordingAttributions:(id)attributions;
- (void)setMutedAudioRecordingAttributions:(id)attributions;
- (void)setMutedMicrophoneRecordingAttributions:(id)attributions;
- (void)setScreenCaptureAttributions:(id)attributions;
- (void)setSystemAudioRecordingAttributions:(id)attributions;
@end

@implementation STMutableMediaStatusDomainData

- (STMutableListData)microphoneAttributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableMediaStatusDomainData;
  microphoneAttributionListData = [(STMediaStatusDomainData *)&v4 microphoneAttributionListData];

  return microphoneAttributionListData;
}

- (STMutableListData)mutedMicrophoneRecordingAttributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableMediaStatusDomainData;
  mutedMicrophoneRecordingAttributionListData = [(STMediaStatusDomainData *)&v4 mutedMicrophoneRecordingAttributionListData];

  return mutedMicrophoneRecordingAttributionListData;
}

- (STMutableListData)systemAudioRecordingAttributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableMediaStatusDomainData;
  systemAudioRecordingAttributionListData = [(STMediaStatusDomainData *)&v4 systemAudioRecordingAttributionListData];

  return systemAudioRecordingAttributionListData;
}

- (STMutableListData)cameraAttributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableMediaStatusDomainData;
  cameraAttributionListData = [(STMediaStatusDomainData *)&v4 cameraAttributionListData];

  return cameraAttributionListData;
}

- (STMutableListData)screenCaptureAttributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableMediaStatusDomainData;
  screenCaptureAttributionListData = [(STMediaStatusDomainData *)&v4 screenCaptureAttributionListData];

  return screenCaptureAttributionListData;
}

- (STMutableMediaStatusDomainData)initWithMicrophoneAttributionListData:(id)data mutedMicrophoneRecordingAttributionListData:(id)listData systemAudioRecordingAttributionListData:(id)attributionListData cameraAttributionListData:(id)cameraAttributionListData screenCaptureAttributionListData:(id)captureAttributionListData
{
  captureAttributionListDataCopy = captureAttributionListData;
  cameraAttributionListDataCopy = cameraAttributionListData;
  attributionListDataCopy = attributionListData;
  listDataCopy = listData;
  v16 = [data mutableCopy];
  v17 = [listDataCopy mutableCopy];

  v18 = [attributionListDataCopy mutableCopy];
  v19 = [cameraAttributionListDataCopy mutableCopy];

  v20 = [captureAttributionListDataCopy mutableCopy];
  v23.receiver = self;
  v23.super_class = STMutableMediaStatusDomainData;
  v21 = [(STMediaStatusDomainData *)&v23 _initWithMicrophoneAttributionListData:v16 mutedMicrophoneRecordingAttributionListData:v17 systemAudioRecordingAttributionListData:v18 cameraAttributionListData:v19 screenCaptureAttributionListData:v20];

  return v21;
}

- (void)setCameraAttributions:(id)attributions
{
  attributionsCopy = attributions;
  if (attributionsCopy)
  {
    cameraAttributions = [(STMediaStatusDomainData *)self cameraAttributions];
    v5 = [cameraAttributions isEqualToArray:attributionsCopy];

    if ((v5 & 1) == 0)
    {
      cameraAttributionListData = [(STMutableMediaStatusDomainData *)self cameraAttributionListData];
      v7 = [attributionsCopy copy];
      [cameraAttributionListData setObjects:v7];
    }
  }
}

- (void)addCameraAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    cameraAttributionListData = [(STMutableMediaStatusDomainData *)self cameraAttributionListData];
    [cameraAttributionListData addObject:attributionCopy];
  }
}

- (void)removeCameraAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    cameraAttributionListData = [(STMutableMediaStatusDomainData *)self cameraAttributionListData];
    [cameraAttributionListData removeObject:attributionCopy];
  }
}

- (void)setScreenCaptureAttributions:(id)attributions
{
  attributionsCopy = attributions;
  if (attributionsCopy)
  {
    screenCaptureAttributions = [(STMediaStatusDomainData *)self screenCaptureAttributions];
    v5 = [screenCaptureAttributions isEqualToArray:attributionsCopy];

    if ((v5 & 1) == 0)
    {
      screenCaptureAttributionListData = [(STMutableMediaStatusDomainData *)self screenCaptureAttributionListData];
      v7 = [attributionsCopy copy];
      [screenCaptureAttributionListData setObjects:v7];
    }
  }
}

- (void)addScreenCaptureAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    screenCaptureAttributionListData = [(STMutableMediaStatusDomainData *)self screenCaptureAttributionListData];
    [screenCaptureAttributionListData addObject:attributionCopy];
  }
}

- (void)removeScreenCaptureAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    screenCaptureAttributionListData = [(STMutableMediaStatusDomainData *)self screenCaptureAttributionListData];
    [screenCaptureAttributionListData removeObject:attributionCopy];
  }
}

- (void)setMicrophoneAttributions:(id)attributions
{
  attributionsCopy = attributions;
  if (attributionsCopy)
  {
    microphoneAttributions = [(STMediaStatusDomainData *)self microphoneAttributions];
    v5 = [microphoneAttributions isEqualToArray:attributionsCopy];

    if ((v5 & 1) == 0)
    {
      microphoneAttributionListData = [(STMutableMediaStatusDomainData *)self microphoneAttributionListData];
      v7 = [attributionsCopy copy];
      [microphoneAttributionListData setObjects:v7];
    }
  }
}

- (void)addMicrophoneAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    microphoneAttributionListData = [(STMutableMediaStatusDomainData *)self microphoneAttributionListData];
    [microphoneAttributionListData addObject:attributionCopy];
  }
}

- (void)removeMicrophoneAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    microphoneAttributionListData = [(STMutableMediaStatusDomainData *)self microphoneAttributionListData];
    [microphoneAttributionListData removeObject:attributionCopy];
  }
}

- (void)setMicrophoneRecordingAttributions:(id)attributions
{
  if (attributions)
  {
    v4 = [attributions bs_map:&__block_literal_global_163];
    [(STMutableMediaStatusDomainData *)self setMicrophoneAttributions:v4];
  }
}

STMediaStatusDomainMicrophoneRecordingAttribution *__69__STMutableMediaStatusDomainData_setMicrophoneRecordingAttributions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[STMediaStatusDomainMicrophoneRecordingAttribution alloc] initWithActivityAttribution:v2];

  return v3;
}

- (void)addMicrophoneRecordingAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    v5 = [[STMediaStatusDomainMicrophoneRecordingAttribution alloc] initWithActivityAttribution:attributionCopy];

    [(STMutableMediaStatusDomainData *)self addMicrophoneAttribution:v5];
  }
}

- (void)removeMicrophoneRecordingAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    v5 = [[STMediaStatusDomainMicrophoneRecordingAttribution alloc] initWithActivityAttribution:attributionCopy];

    [(STMutableMediaStatusDomainData *)self removeMicrophoneAttribution:v5];
  }
}

- (void)setMutedMicrophoneRecordingAttributions:(id)attributions
{
  attributionsCopy = attributions;
  if (attributionsCopy)
  {
    mutedMicrophoneRecordingAttributions = [(STMediaStatusDomainData *)self mutedMicrophoneRecordingAttributions];
    v5 = [mutedMicrophoneRecordingAttributions isEqualToArray:attributionsCopy];

    if ((v5 & 1) == 0)
    {
      mutedMicrophoneRecordingAttributionListData = [(STMutableMediaStatusDomainData *)self mutedMicrophoneRecordingAttributionListData];
      v7 = [attributionsCopy copy];
      [mutedMicrophoneRecordingAttributionListData setObjects:v7];
    }
  }
}

- (void)addMutedMicrophoneRecordingAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    mutedMicrophoneRecordingAttributionListData = [(STMutableMediaStatusDomainData *)self mutedMicrophoneRecordingAttributionListData];
    [mutedMicrophoneRecordingAttributionListData addObject:attributionCopy];
  }
}

- (void)removeMutedMicrophoneRecordingAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    mutedMicrophoneRecordingAttributionListData = [(STMutableMediaStatusDomainData *)self mutedMicrophoneRecordingAttributionListData];
    [mutedMicrophoneRecordingAttributionListData removeObject:attributionCopy];
  }
}

- (void)setSystemAudioRecordingAttributions:(id)attributions
{
  attributionsCopy = attributions;
  if (attributionsCopy)
  {
    systemAudioRecordingAttributions = [(STMediaStatusDomainData *)self systemAudioRecordingAttributions];
    v5 = [systemAudioRecordingAttributions isEqualToArray:attributionsCopy];

    if ((v5 & 1) == 0)
    {
      systemAudioRecordingAttributionListData = [(STMutableMediaStatusDomainData *)self systemAudioRecordingAttributionListData];
      v7 = [attributionsCopy copy];
      [systemAudioRecordingAttributionListData setObjects:v7];
    }
  }
}

- (void)addSystemAudioRecordingAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    systemAudioRecordingAttributionListData = [(STMutableMediaStatusDomainData *)self systemAudioRecordingAttributionListData];
    [systemAudioRecordingAttributionListData addObject:attributionCopy];
  }
}

- (void)removeSystemAudioRecordingAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    systemAudioRecordingAttributionListData = [(STMutableMediaStatusDomainData *)self systemAudioRecordingAttributionListData];
    [systemAudioRecordingAttributionListData removeObject:attributionCopy];
  }
}

- (void)setAudioRecordingAttributions:(id)attributions
{
  allObjects = [attributions allObjects];
  [(STMutableMediaStatusDomainData *)self setAudioRecordingAttributionList:allObjects];
}

- (void)setMutedAudioRecordingAttributions:(id)attributions
{
  allObjects = [attributions allObjects];
  [(STMutableMediaStatusDomainData *)self setMutedAudioRecordingAttributionList:allObjects];
}

- (void)setCameraCaptureAttributionList:(id)list
{
  if (list)
  {
    v4 = [list bs_map:&__block_literal_global_165];
    [(STMutableMediaStatusDomainData *)self setCameraAttributions:v4];
  }
}

STMediaStatusDomainCameraCaptureAttribution *__66__STMutableMediaStatusDomainData_setCameraCaptureAttributionList___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [STMediaStatusDomainCameraCaptureAttribution alloc];
  v4 = objc_alloc_init(STMediaStatusDomainCameraDescriptor);
  v5 = [(STMediaStatusDomainCameraCaptureAttribution *)v3 initWithCameraDescriptor:v4 activityAttribution:v2];

  return v5;
}

- (void)addCameraCaptureAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    v5 = [STMediaStatusDomainCameraCaptureAttribution alloc];
    v7 = objc_alloc_init(STMediaStatusDomainCameraDescriptor);
    v6 = [(STMediaStatusDomainCameraCaptureAttribution *)v5 initWithCameraDescriptor:v7 activityAttribution:attributionCopy];

    [(STMutableMediaStatusDomainData *)self addCameraAttribution:v6];
  }
}

- (void)removeCameraCaptureAttribution:(id)attribution
{
  if (attribution)
  {
    attributionCopy = attribution;
    v5 = [STMediaStatusDomainCameraCaptureAttribution alloc];
    v7 = objc_alloc_init(STMediaStatusDomainCameraDescriptor);
    v6 = [(STMediaStatusDomainCameraCaptureAttribution *)v5 initWithCameraDescriptor:v7 activityAttribution:attributionCopy];

    [(STMutableMediaStatusDomainData *)self removeCameraAttribution:v6];
  }
}

- (void)setCameraCaptureAttributions:(id)attributions
{
  allObjects = [attributions allObjects];
  [(STMutableMediaStatusDomainData *)self setCameraCaptureAttributionList:allObjects];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STMediaStatusDomainData allocWithZone:zone];

  return [(STMediaStatusDomainData *)v4 initWithData:?];
}

- (BOOL)applyDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [diffCopy applyToMutableData:self];
  }

  return isKindOfClass & 1;
}

@end