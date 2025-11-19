@interface VUITimedMetadataPlaybackInfo
- (id)description;
@end

@implementation VUITimedMetadataPlaybackInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(VUITimedMetadataPlaybackInfo *)self programId];
  [(VUITimedMetadataPlaybackInfo *)self currentTime];
  v6 = v5;
  v7 = [(VUITimedMetadataPlaybackInfo *)self timeStamp];
  [(VUITimedMetadataPlaybackInfo *)self playbackRate];
  v9 = v8;
  [(VUITimedMetadataPlaybackInfo *)self featureStartTime];
  v11 = v10;
  v12 = [(VUITimedMetadataPlaybackInfo *)self audioLanguage];
  v13 = [(VUITimedMetadataPlaybackInfo *)self adamId];
  v14 = [(VUITimedMetadataPlaybackInfo *)self rawTimedMetadata];
  v15 = [v3 stringWithFormat:@"<TimedMetadataPlaybackInfo(%p) programId: %@, currentTime: %f, timeStamp: %@, playbackRate: %f, featureStartTime: %f, audioLanguage: %@, adamId: %@, hasRawTimedMetadata: %d>", self, v4, v6, v7, v9, v11, v12, v13, v14 != 0];

  return v15;
}

@end