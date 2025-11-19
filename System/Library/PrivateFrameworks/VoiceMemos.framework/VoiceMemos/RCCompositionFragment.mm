@interface RCCompositionFragment
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeInComposition;
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeInContentToUse;
- (NSString)description;
- (RCCompositionFragment)initWithAVOutputURL:(id)a3 contentDuration:(double)a4 timeRangeInContentToUse:(id)a5 timeRangeInComposition:(id)a6 trackIndex:(unint64_t)a7;
- (RCCompositionFragment)initWithDictionaryPListRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryPListRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)fileSizeOfAssets;
- (void)deleteFromFilesystem;
@end

@implementation RCCompositionFragment

- (RCCompositionFragment)initWithAVOutputURL:(id)a3 contentDuration:(double)a4 timeRangeInContentToUse:(id)a5 timeRangeInComposition:(id)a6 trackIndex:(unint64_t)a7
{
  var1 = a6.var1;
  var0 = a6.var0;
  v10 = a5.var1;
  v11 = a5.var0;
  v16 = a3;
  if (a4 < 0.0)
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
    objc_storeStrong(&v17->_AVOutputURL, a3);
    v18->_contentDuration = a4;
    v18->_timeRangeInContentToUse.beginTime = v11;
    v18->_timeRangeInContentToUse.endTime = v10;
    v18->_timeRangeInComposition.beginTime = fmax(var0, 0.0);
    v18->_timeRangeInComposition.endTime = var1;
    v18->_trackIndex = a7;
  }

  return v18;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v18.receiver = self;
  v18.super_class = RCCompositionFragment;
  v4 = [(RCCompositionFragment *)&v18 description];
  v5 = [(NSURL *)self->_AVOutputURL path];
  v6 = [(RCCompositionFragment *)self waveformURL];
  v7 = [v6 path];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_contentDuration];
  [(RCCompositionFragment *)self timeRangeInContentToUse];
  v11 = NSStringFromRCTimeRange(v9, v10);
  [(RCCompositionFragment *)self timeRangeInComposition];
  v14 = NSStringFromRCTimeRange(v12, v13);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_trackIndex];
  v16 = [v3 stringWithFormat:@"%@ AVURL = %@ (waveformURL = %@), contentDuration = %@, timeRangeInContentToUse = %@, timeRangeInComposition = %@, trackIndex = %@", v4, v5, v7, v8, v11, v14, v15];

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
    v11 = self;
    _os_log_impl(&dword_272442000, v3, OS_LOG_TYPE_INFO, "%s -- deleting fragment assets %@", &v8, 0x16u);
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  [v4 removeItemAtURL:self->_AVOutputURL error:0];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(RCCompositionFragment *)self waveformURL];
  [v5 removeItemAtURL:v6 error:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (unint64_t)fileSizeOfAssets
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(NSURL *)self->_AVOutputURL path];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = [(NSURL *)self->_AVOutputURL path];
    v7 = [v3 attributesOfItemAtPath:v6 error:0];
    v8 = [v7 objectForKey:*MEMORY[0x277CCA1C0]];
    v9 = [v8 longLongValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
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

- (RCCompositionFragment)initWithDictionaryPListRepresentation:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = RCCompositionFragment;
  v5 = [(RCCompositionFragment *)&v24 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = [v4 objectForKey:@"RCAVOutputURL"];
    v8 = [v6 URLWithString:v7];
    AVOutputURL = v5->_AVOutputURL;
    v5->_AVOutputURL = v8;

    v10 = [(NSURL *)v5->_AVOutputURL rc_URLByFixingUpPersistentMediaRecordingsDirectory];
    v11 = v5->_AVOutputURL;
    v5->_AVOutputURL = v10;

    v12 = [v4 objectForKey:@"RCContentDuration"];
    [v12 doubleValue];
    v5->_contentDuration = v13;

    v14 = [v4 objectForKey:@"RCTimeRangeInContentToUse.beginTime"];
    [v14 doubleValue];
    v5->_timeRangeInContentToUse.beginTime = v15;

    v16 = [v4 objectForKey:@"RCTimeRangeInContentToUse.endTime"];
    [v16 doubleValue];
    v5->_timeRangeInContentToUse.endTime = v17;

    v18 = [v4 objectForKey:@"RCTimeRangeInComposition.beginTime"];
    [v18 doubleValue];
    v5->_timeRangeInComposition.beginTime = v19;

    v20 = [v4 objectForKey:@"RCTimeRangeInComposition.endTime"];
    [v20 doubleValue];
    v5->_timeRangeInComposition.endTime = v21;

    v22 = [v4 objectForKey:@"RCTrackIndex"];
    v5->_trackIndex = [v22 unsignedIntegerValue];
  }

  return v5;
}

- (id)dictionaryPListRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(NSURL *)self->_AVOutputURL absoluteString];
  [v3 setObject:v4 forKey:@"RCAVOutputURL"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_contentDuration];
  [v3 setObject:v5 forKey:@"RCContentDuration"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeRangeInContentToUse.beginTime];
  [v3 setObject:v6 forKey:@"RCTimeRangeInContentToUse.beginTime"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeRangeInContentToUse.endTime];
  [v3 setObject:v7 forKey:@"RCTimeRangeInContentToUse.endTime"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeRangeInComposition.beginTime];
  [v3 setObject:v8 forKey:@"RCTimeRangeInComposition.beginTime"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeRangeInComposition.endTime];
  [v3 setObject:v9 forKey:@"RCTimeRangeInComposition.endTime"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_trackIndex];
  [v3 setObject:v10 forKey:@"RCTrackIndex"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RCCompositionFragment alloc];
  v5 = [(RCCompositionFragment *)self AVOutputURL];
  contentDuration = self->_contentDuration;
  [(RCCompositionFragment *)self timeRangeInComposition];
  v9 = [(RCCompositionFragment *)v4 initWithAVOutputURL:v5 contentDuration:[(RCCompositionFragment *)self trackIndex] timeRangeInContentToUse:contentDuration timeRangeInComposition:self->_timeRangeInContentToUse.beginTime trackIndex:self->_timeRangeInContentToUse.endTime, v7, v8];

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [RCMutableCompositionFragment alloc];
  v5 = [(RCCompositionFragment *)self AVOutputURL];
  contentDuration = self->_contentDuration;
  [(RCCompositionFragment *)self timeRangeInComposition];
  v9 = [(RCCompositionFragment *)v4 initWithAVOutputURL:v5 contentDuration:[(RCCompositionFragment *)self trackIndex] timeRangeInContentToUse:contentDuration timeRangeInComposition:self->_timeRangeInContentToUse.beginTime trackIndex:self->_timeRangeInContentToUse.endTime, v7, v8];

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