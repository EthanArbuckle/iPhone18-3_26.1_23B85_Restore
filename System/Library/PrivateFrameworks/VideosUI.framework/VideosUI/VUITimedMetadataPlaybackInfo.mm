@interface VUITimedMetadataPlaybackInfo
- (id)description;
@end

@implementation VUITimedMetadataPlaybackInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  programId = [(VUITimedMetadataPlaybackInfo *)self programId];
  [(VUITimedMetadataPlaybackInfo *)self currentTime];
  v6 = v5;
  timeStamp = [(VUITimedMetadataPlaybackInfo *)self timeStamp];
  [(VUITimedMetadataPlaybackInfo *)self playbackRate];
  v9 = v8;
  [(VUITimedMetadataPlaybackInfo *)self featureStartTime];
  v11 = v10;
  audioLanguage = [(VUITimedMetadataPlaybackInfo *)self audioLanguage];
  adamId = [(VUITimedMetadataPlaybackInfo *)self adamId];
  rawTimedMetadata = [(VUITimedMetadataPlaybackInfo *)self rawTimedMetadata];
  v15 = [v3 stringWithFormat:@"<TimedMetadataPlaybackInfo(%p) programId: %@, currentTime: %f, timeStamp: %@, playbackRate: %f, featureStartTime: %f, audioLanguage: %@, adamId: %@, hasRawTimedMetadata: %d>", self, programId, v6, timeStamp, v9, v11, audioLanguage, adamId, rawTimedMetadata != 0];

  return v15;
}

@end