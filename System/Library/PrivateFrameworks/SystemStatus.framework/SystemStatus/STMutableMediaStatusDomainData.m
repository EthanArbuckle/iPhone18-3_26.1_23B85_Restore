@interface STMutableMediaStatusDomainData
- (BOOL)applyDiff:(id)a3;
- (STMutableListData)cameraAttributionListData;
- (STMutableListData)microphoneAttributionListData;
- (STMutableListData)mutedMicrophoneRecordingAttributionListData;
- (STMutableListData)screenCaptureAttributionListData;
- (STMutableListData)systemAudioRecordingAttributionListData;
- (STMutableMediaStatusDomainData)initWithMicrophoneAttributionListData:(id)a3 mutedMicrophoneRecordingAttributionListData:(id)a4 systemAudioRecordingAttributionListData:(id)a5 cameraAttributionListData:(id)a6 screenCaptureAttributionListData:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addCameraAttribution:(id)a3;
- (void)addCameraCaptureAttribution:(id)a3;
- (void)addMicrophoneAttribution:(id)a3;
- (void)addMicrophoneRecordingAttribution:(id)a3;
- (void)addMutedMicrophoneRecordingAttribution:(id)a3;
- (void)addScreenCaptureAttribution:(id)a3;
- (void)addSystemAudioRecordingAttribution:(id)a3;
- (void)removeCameraAttribution:(id)a3;
- (void)removeCameraCaptureAttribution:(id)a3;
- (void)removeMicrophoneAttribution:(id)a3;
- (void)removeMicrophoneRecordingAttribution:(id)a3;
- (void)removeMutedMicrophoneRecordingAttribution:(id)a3;
- (void)removeScreenCaptureAttribution:(id)a3;
- (void)removeSystemAudioRecordingAttribution:(id)a3;
- (void)setAudioRecordingAttributions:(id)a3;
- (void)setCameraAttributions:(id)a3;
- (void)setCameraCaptureAttributionList:(id)a3;
- (void)setCameraCaptureAttributions:(id)a3;
- (void)setMicrophoneAttributions:(id)a3;
- (void)setMicrophoneRecordingAttributions:(id)a3;
- (void)setMutedAudioRecordingAttributions:(id)a3;
- (void)setMutedMicrophoneRecordingAttributions:(id)a3;
- (void)setScreenCaptureAttributions:(id)a3;
- (void)setSystemAudioRecordingAttributions:(id)a3;
@end

@implementation STMutableMediaStatusDomainData

- (STMutableListData)microphoneAttributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableMediaStatusDomainData;
  v2 = [(STMediaStatusDomainData *)&v4 microphoneAttributionListData];

  return v2;
}

- (STMutableListData)mutedMicrophoneRecordingAttributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableMediaStatusDomainData;
  v2 = [(STMediaStatusDomainData *)&v4 mutedMicrophoneRecordingAttributionListData];

  return v2;
}

- (STMutableListData)systemAudioRecordingAttributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableMediaStatusDomainData;
  v2 = [(STMediaStatusDomainData *)&v4 systemAudioRecordingAttributionListData];

  return v2;
}

- (STMutableListData)cameraAttributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableMediaStatusDomainData;
  v2 = [(STMediaStatusDomainData *)&v4 cameraAttributionListData];

  return v2;
}

- (STMutableListData)screenCaptureAttributionListData
{
  v4.receiver = self;
  v4.super_class = STMutableMediaStatusDomainData;
  v2 = [(STMediaStatusDomainData *)&v4 screenCaptureAttributionListData];

  return v2;
}

- (STMutableMediaStatusDomainData)initWithMicrophoneAttributionListData:(id)a3 mutedMicrophoneRecordingAttributionListData:(id)a4 systemAudioRecordingAttributionListData:(id)a5 cameraAttributionListData:(id)a6 screenCaptureAttributionListData:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [a3 mutableCopy];
  v17 = [v15 mutableCopy];

  v18 = [v14 mutableCopy];
  v19 = [v13 mutableCopy];

  v20 = [v12 mutableCopy];
  v23.receiver = self;
  v23.super_class = STMutableMediaStatusDomainData;
  v21 = [(STMediaStatusDomainData *)&v23 _initWithMicrophoneAttributionListData:v16 mutedMicrophoneRecordingAttributionListData:v17 systemAudioRecordingAttributionListData:v18 cameraAttributionListData:v19 screenCaptureAttributionListData:v20];

  return v21;
}

- (void)setCameraAttributions:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(STMediaStatusDomainData *)self cameraAttributions];
    v5 = [v4 isEqualToArray:v8];

    if ((v5 & 1) == 0)
    {
      v6 = [(STMutableMediaStatusDomainData *)self cameraAttributionListData];
      v7 = [v8 copy];
      [v6 setObjects:v7];
    }
  }
}

- (void)addCameraAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableMediaStatusDomainData *)self cameraAttributionListData];
    [v5 addObject:v4];
  }
}

- (void)removeCameraAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableMediaStatusDomainData *)self cameraAttributionListData];
    [v5 removeObject:v4];
  }
}

- (void)setScreenCaptureAttributions:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(STMediaStatusDomainData *)self screenCaptureAttributions];
    v5 = [v4 isEqualToArray:v8];

    if ((v5 & 1) == 0)
    {
      v6 = [(STMutableMediaStatusDomainData *)self screenCaptureAttributionListData];
      v7 = [v8 copy];
      [v6 setObjects:v7];
    }
  }
}

- (void)addScreenCaptureAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableMediaStatusDomainData *)self screenCaptureAttributionListData];
    [v5 addObject:v4];
  }
}

- (void)removeScreenCaptureAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableMediaStatusDomainData *)self screenCaptureAttributionListData];
    [v5 removeObject:v4];
  }
}

- (void)setMicrophoneAttributions:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(STMediaStatusDomainData *)self microphoneAttributions];
    v5 = [v4 isEqualToArray:v8];

    if ((v5 & 1) == 0)
    {
      v6 = [(STMutableMediaStatusDomainData *)self microphoneAttributionListData];
      v7 = [v8 copy];
      [v6 setObjects:v7];
    }
  }
}

- (void)addMicrophoneAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableMediaStatusDomainData *)self microphoneAttributionListData];
    [v5 addObject:v4];
  }
}

- (void)removeMicrophoneAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableMediaStatusDomainData *)self microphoneAttributionListData];
    [v5 removeObject:v4];
  }
}

- (void)setMicrophoneRecordingAttributions:(id)a3
{
  if (a3)
  {
    v4 = [a3 bs_map:&__block_literal_global_163];
    [(STMutableMediaStatusDomainData *)self setMicrophoneAttributions:v4];
  }
}

STMediaStatusDomainMicrophoneRecordingAttribution *__69__STMutableMediaStatusDomainData_setMicrophoneRecordingAttributions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[STMediaStatusDomainMicrophoneRecordingAttribution alloc] initWithActivityAttribution:v2];

  return v3;
}

- (void)addMicrophoneRecordingAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[STMediaStatusDomainMicrophoneRecordingAttribution alloc] initWithActivityAttribution:v4];

    [(STMutableMediaStatusDomainData *)self addMicrophoneAttribution:v5];
  }
}

- (void)removeMicrophoneRecordingAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[STMediaStatusDomainMicrophoneRecordingAttribution alloc] initWithActivityAttribution:v4];

    [(STMutableMediaStatusDomainData *)self removeMicrophoneAttribution:v5];
  }
}

- (void)setMutedMicrophoneRecordingAttributions:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(STMediaStatusDomainData *)self mutedMicrophoneRecordingAttributions];
    v5 = [v4 isEqualToArray:v8];

    if ((v5 & 1) == 0)
    {
      v6 = [(STMutableMediaStatusDomainData *)self mutedMicrophoneRecordingAttributionListData];
      v7 = [v8 copy];
      [v6 setObjects:v7];
    }
  }
}

- (void)addMutedMicrophoneRecordingAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableMediaStatusDomainData *)self mutedMicrophoneRecordingAttributionListData];
    [v5 addObject:v4];
  }
}

- (void)removeMutedMicrophoneRecordingAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableMediaStatusDomainData *)self mutedMicrophoneRecordingAttributionListData];
    [v5 removeObject:v4];
  }
}

- (void)setSystemAudioRecordingAttributions:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(STMediaStatusDomainData *)self systemAudioRecordingAttributions];
    v5 = [v4 isEqualToArray:v8];

    if ((v5 & 1) == 0)
    {
      v6 = [(STMutableMediaStatusDomainData *)self systemAudioRecordingAttributionListData];
      v7 = [v8 copy];
      [v6 setObjects:v7];
    }
  }
}

- (void)addSystemAudioRecordingAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableMediaStatusDomainData *)self systemAudioRecordingAttributionListData];
    [v5 addObject:v4];
  }
}

- (void)removeSystemAudioRecordingAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(STMutableMediaStatusDomainData *)self systemAudioRecordingAttributionListData];
    [v5 removeObject:v4];
  }
}

- (void)setAudioRecordingAttributions:(id)a3
{
  v4 = [a3 allObjects];
  [(STMutableMediaStatusDomainData *)self setAudioRecordingAttributionList:v4];
}

- (void)setMutedAudioRecordingAttributions:(id)a3
{
  v4 = [a3 allObjects];
  [(STMutableMediaStatusDomainData *)self setMutedAudioRecordingAttributionList:v4];
}

- (void)setCameraCaptureAttributionList:(id)a3
{
  if (a3)
  {
    v4 = [a3 bs_map:&__block_literal_global_165];
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

- (void)addCameraCaptureAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [STMediaStatusDomainCameraCaptureAttribution alloc];
    v7 = objc_alloc_init(STMediaStatusDomainCameraDescriptor);
    v6 = [(STMediaStatusDomainCameraCaptureAttribution *)v5 initWithCameraDescriptor:v7 activityAttribution:v4];

    [(STMutableMediaStatusDomainData *)self addCameraAttribution:v6];
  }
}

- (void)removeCameraCaptureAttribution:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [STMediaStatusDomainCameraCaptureAttribution alloc];
    v7 = objc_alloc_init(STMediaStatusDomainCameraDescriptor);
    v6 = [(STMediaStatusDomainCameraCaptureAttribution *)v5 initWithCameraDescriptor:v7 activityAttribution:v4];

    [(STMutableMediaStatusDomainData *)self removeCameraAttribution:v6];
  }
}

- (void)setCameraCaptureAttributions:(id)a3
{
  v4 = [a3 allObjects];
  [(STMutableMediaStatusDomainData *)self setCameraCaptureAttributionList:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STMediaStatusDomainData allocWithZone:a3];

  return [(STMediaStatusDomainData *)v4 initWithData:?];
}

- (BOOL)applyDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v4 applyToMutableData:self];
  }

  return isKindOfClass & 1;
}

@end