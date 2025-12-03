@interface PTCinematographyFixedFocusTrack
- (PTCinematographyFixedFocusTrack)initWithDetection:(id)detection;
- (PTCinematographyFixedFocusTrack)initWithFocusDistance:(float)distance;
- (id)_asCinematographyDictionary;
- (id)_calculateTimeRanges;
- (id)_fixedFocusDetectionAtTime:(id *)time;
- (id)_initWithCinematographyDictionary:(id)dictionary;
- (id)_initWithFixedFocusTrack:(id)track;
- (id)detectionAtOrBeforeTime:(id *)time;
- (id)detectionInFrame:(id)frame;
- (id)detectionNearestTime:(id *)time;
- (id)detectionsInTimeRange:(id *)range;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation PTCinematographyFixedFocusTrack

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 _initWithFixedFocusTrack:self];
}

- (id)_initWithFixedFocusTrack:(id)track
{
  trackCopy = track;
  v10.receiver = self;
  v10.super_class = PTCinematographyFixedFocusTrack;
  v5 = -[PTCinematographyTrack initWithDetectionType:](&v10, sel_initWithDetectionType_, [trackCopy detectionType]);
  if (v5)
  {
    detection = [trackCopy detection];
    v7 = [detection copy];
    detection = v5->_detection;
    v5->_detection = v7;
  }

  return v5;
}

- (PTCinematographyFixedFocusTrack)initWithDetection:(id)detection
{
  detectionCopy = detection;
  v5 = -[PTCinematographyTrack initWithDetectionType:](self, "initWithDetectionType:", [detectionCopy detectionType]);
  if (v5)
  {
    v6 = [detectionCopy copy];
    detection = v5->_detection;
    v5->_detection = v6;
  }

  return v5;
}

- (PTCinematographyFixedFocusTrack)initWithFocusDistance:(float)distance
{
  v5 = [PTCinematographyDetection alloc];
  v10 = *MEMORY[0x277CC0888];
  v11 = *(MEMORY[0x277CC0888] + 16);
  *&v6 = distance;
  v7 = [(PTCinematographyDetection *)v5 initWithTime:&v10 rect:*MEMORY[0x277CBF3A0] focusDistance:*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), v6];
  v8 = [(PTCinematographyFixedFocusTrack *)self initWithDetection:v7];

  return v8;
}

- (id)_fixedFocusDetectionAtTime:(id *)time
{
  detection = [(PTCinematographyFixedFocusTrack *)self detection];
  v8 = *time;
  v6 = [detection _detectionByChangingTime:&v8];

  [v6 setDetectionType:101];
  [v6 setTrackIdentifier:{-[PTCinematographyTrack trackIdentifier](self, "trackIdentifier")}];

  return v6;
}

- (id)detectionNearestTime:(id *)time
{
  v5 = *time;
  v3 = [(PTCinematographyFixedFocusTrack *)self _fixedFocusDetectionAtTime:&v5];

  return v3;
}

- (id)detectionAtOrBeforeTime:(id *)time
{
  v5 = *time;
  v3 = [(PTCinematographyFixedFocusTrack *)self _fixedFocusDetectionAtTime:&v5];

  return v3;
}

- (id)detectionsInTimeRange:(id *)range
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = _PTLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(PTCinematographyFixedFocusTrack *)self detectionsInTimeRange:v4];
  }

  v8 = *MEMORY[0x277CC0888];
  v9 = *(MEMORY[0x277CC0888] + 16);
  v5 = [(PTCinematographyFixedFocusTrack *)self _fixedFocusDetectionAtTime:&v8];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  return v6;
}

- (id)detectionInFrame:(id)frame
{
  if (frame)
  {
    [frame time];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  v4 = [(PTCinematographyFixedFocusTrack *)self _fixedFocusDetectionAtTime:v6];

  return v4;
}

- (id)_calculateTimeRanges
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAE60];
  script = [(PTCinematographyTrack *)self script];
  v4 = script;
  if (script)
  {
    [script timeRange];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v5 = [v2 valueWithCMTimeRange:v8];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  return v6;
}

- (id)_asCinematographyDictionary
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = PTCinematographyFixedFocusTrack;
  _asMutableCinematographyDictionary = [(PTCinematographyTrack *)&v9 _asMutableCinematographyDictionary];
  detection = [(PTCinematographyFixedFocusTrack *)self detection];
  _asCinematographyDictionary = [detection _asCinematographyDictionary];
  v10[0] = _asCinematographyDictionary;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [_asMutableCinematographyDictionary setObject:v6 forKeyedSubscript:@"detections"];

  v7 = [_asMutableCinematographyDictionary copy];

  return v7;
}

- (id)_initWithCinematographyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"detections"];
  if ([v5 count])
  {
    v6 = [PTCinematographyDetection alloc];
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = [(PTCinematographyDetection *)v6 _initWithCinematographyDictionary:v7];

    v13.receiver = self;
    v13.super_class = PTCinematographyFixedFocusTrack;
    v9 = [(PTCinematographyTrack *)&v13 _initWithCinematographyDictionary:dictionaryCopy];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 8, v8);
    }

    self = v10;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)detectionsInTimeRange:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "attempt to get detections in time range for continuous track %@", &v2, 0xCu);
}

@end