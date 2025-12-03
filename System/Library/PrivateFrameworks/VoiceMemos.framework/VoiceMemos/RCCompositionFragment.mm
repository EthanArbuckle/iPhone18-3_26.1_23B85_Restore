@interface RCCompositionFragment
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeInComposition;
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeInContentToUse;
- (NSString)description;
- (RCCompositionFragment)initWithAVOutputURL:(id)l contentDuration:(double)duration timeRangeInContentToUse:(id)use timeRangeInComposition:(id)composition trackIndex:(unint64_t)index;
- (RCCompositionFragment)initWithDictionaryPListRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryPListRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)fileSizeOfAssets;
- (void)deleteFromFilesystem;
@end

@implementation RCCompositionFragment

- (RCCompositionFragment)initWithAVOutputURL:(id)l contentDuration:(double)duration timeRangeInContentToUse:(id)use timeRangeInComposition:(id)composition trackIndex:(unint64_t)index
{
  var1 = composition.var1;
  var0 = composition.var0;
  v10 = use.var1;
  v11 = use.var0;
  lCopy = l;
  if (duration < 0.0)
  {
    [RCCompositionFragment initWithAVOutputURL:a2 contentDuration:self timeRangeInContentToUse:? timeRangeInComposition:? trackIndex:?];
  }

  if (RCTimeRangeDeltaWithExactPrecision(v11, v10) < 0.0)
  {
    [RCCompositionFragment initWithAVOutputURL:a2 contentDuration:self timeRangeInContentToUse:? timeRangeInComposition:? trackIndex:?];
  }

  v20.receiver = self;
  v20.super_class = RCCompositionFragment;
  v17 = [(RCCompositionFragment *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_AVOutputURL, l);
    v18->_contentDuration = duration;
    v18->_timeRangeInContentToUse.beginTime = v11;
    v18->_timeRangeInContentToUse.endTime = v10;
    v18->_timeRangeInComposition.beginTime = fmax(var0, 0.0);
    v18->_timeRangeInComposition.endTime = var1;
    v18->_trackIndex = index;
  }

  return v18;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v18.receiver = self;
  v18.super_class = RCCompositionFragment;
  v4 = [(RCCompositionFragment *)&v18 description];
  path = [(NSURL *)self->_AVOutputURL path];
  waveformURL = [(RCCompositionFragment *)self waveformURL];
  path2 = [waveformURL path];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_contentDuration];
  [(RCCompositionFragment *)self timeRangeInContentToUse];
  v11 = NSStringFromRCTimeRange(v9, v10);
  [(RCCompositionFragment *)self timeRangeInComposition];
  v14 = NSStringFromRCTimeRange(v12, v13);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_trackIndex];
  v16 = [v3 stringWithFormat:@"%@ AVURL = %@ (waveformURL = %@), contentDuration = %@, timeRangeInContentToUse = %@, timeRangeInComposition = %@, trackIndex = %@", v4, path, path2, v8, v11, v14, v15];

  return v16;
}

- (void)deleteFromFilesystem
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[RCCompositionFragment deleteFromFilesystem]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_272442000, v3, OS_LOG_TYPE_INFO, "%s -- deleting fragment assets %@", &v8, 0x16u);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtURL:self->_AVOutputURL error:0];

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  waveformURL = [(RCCompositionFragment *)self waveformURL];
  [defaultManager2 removeItemAtURL:waveformURL error:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (unint64_t)fileSizeOfAssets
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->_AVOutputURL path];
  v5 = [defaultManager fileExistsAtPath:path];

  if (v5)
  {
    path2 = [(NSURL *)self->_AVOutputURL path];
    v7 = [defaultManager attributesOfItemAtPath:path2 error:0];
    v8 = [v7 objectForKey:*MEMORY[0x277CCA1C0]];
    longLongValue = [v8 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeInContentToUse
{
  if (RCTimeRangeEqualToTimeRange(self->_timeRangeInContentToUse.beginTime, self->_timeRangeInContentToUse.endTime, -1.79769313e308, 1.79769313e308))
  {
    RCTimeRangeMake(0.0, self->_contentDuration);
  }

  else
  {
    beginTime = self->_timeRangeInContentToUse.beginTime;
    endTime = self->_timeRangeInContentToUse.endTime;
  }

  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

- (RCCompositionFragment)initWithDictionaryPListRepresentation:(id)representation
{
  representationCopy = representation;
  v24.receiver = self;
  v24.super_class = RCCompositionFragment;
  v5 = [(RCCompositionFragment *)&v24 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = [representationCopy objectForKey:@"RCAVOutputURL"];
    v8 = [v6 URLWithString:v7];
    AVOutputURL = v5->_AVOutputURL;
    v5->_AVOutputURL = v8;

    rc_URLByFixingUpPersistentMediaRecordingsDirectory = [(NSURL *)v5->_AVOutputURL rc_URLByFixingUpPersistentMediaRecordingsDirectory];
    v11 = v5->_AVOutputURL;
    v5->_AVOutputURL = rc_URLByFixingUpPersistentMediaRecordingsDirectory;

    v12 = [representationCopy objectForKey:@"RCContentDuration"];
    [v12 doubleValue];
    v5->_contentDuration = v13;

    v14 = [representationCopy objectForKey:@"RCTimeRangeInContentToUse.beginTime"];
    [v14 doubleValue];
    v5->_timeRangeInContentToUse.beginTime = v15;

    v16 = [representationCopy objectForKey:@"RCTimeRangeInContentToUse.endTime"];
    [v16 doubleValue];
    v5->_timeRangeInContentToUse.endTime = v17;

    v18 = [representationCopy objectForKey:@"RCTimeRangeInComposition.beginTime"];
    [v18 doubleValue];
    v5->_timeRangeInComposition.beginTime = v19;

    v20 = [representationCopy objectForKey:@"RCTimeRangeInComposition.endTime"];
    [v20 doubleValue];
    v5->_timeRangeInComposition.endTime = v21;

    v22 = [representationCopy objectForKey:@"RCTrackIndex"];
    v5->_trackIndex = [v22 unsignedIntegerValue];
  }

  return v5;
}

- (id)dictionaryPListRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  absoluteString = [(NSURL *)self->_AVOutputURL absoluteString];
  [dictionary setObject:absoluteString forKey:@"RCAVOutputURL"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_contentDuration];
  [dictionary setObject:v5 forKey:@"RCContentDuration"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeRangeInContentToUse.beginTime];
  [dictionary setObject:v6 forKey:@"RCTimeRangeInContentToUse.beginTime"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeRangeInContentToUse.endTime];
  [dictionary setObject:v7 forKey:@"RCTimeRangeInContentToUse.endTime"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeRangeInComposition.beginTime];
  [dictionary setObject:v8 forKey:@"RCTimeRangeInComposition.beginTime"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeRangeInComposition.endTime];
  [dictionary setObject:v9 forKey:@"RCTimeRangeInComposition.endTime"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_trackIndex];
  [dictionary setObject:v10 forKey:@"RCTrackIndex"];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RCCompositionFragment alloc];
  aVOutputURL = [(RCCompositionFragment *)self AVOutputURL];
  contentDuration = self->_contentDuration;
  [(RCCompositionFragment *)self timeRangeInComposition];
  v9 = [(RCCompositionFragment *)v4 initWithAVOutputURL:aVOutputURL contentDuration:[(RCCompositionFragment *)self trackIndex] timeRangeInContentToUse:contentDuration timeRangeInComposition:self->_timeRangeInContentToUse.beginTime trackIndex:self->_timeRangeInContentToUse.endTime, v7, v8];

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [RCMutableCompositionFragment alloc];
  aVOutputURL = [(RCCompositionFragment *)self AVOutputURL];
  contentDuration = self->_contentDuration;
  [(RCCompositionFragment *)self timeRangeInComposition];
  v9 = [(RCCompositionFragment *)v4 initWithAVOutputURL:aVOutputURL contentDuration:[(RCCompositionFragment *)self trackIndex] timeRangeInContentToUse:contentDuration timeRangeInComposition:self->_timeRangeInContentToUse.beginTime trackIndex:self->_timeRangeInContentToUse.endTime, v7, v8];

  return v9;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeInComposition
{
  beginTime = self->_timeRangeInComposition.beginTime;
  endTime = self->_timeRangeInComposition.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

- (void)initWithAVOutputURL:(uint64_t)a1 contentDuration:(uint64_t)a2 timeRangeInContentToUse:timeRangeInComposition:trackIndex:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RCCompositionFragment.m" lineNumber:32 description:@"invalid contentDuration"];
}

- (void)initWithAVOutputURL:(uint64_t)a1 contentDuration:(uint64_t)a2 timeRangeInContentToUse:timeRangeInComposition:trackIndex:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RCCompositionFragment.m" lineNumber:33 description:@"invalid timeRangeInContentToUse"];
}

@end