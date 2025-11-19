@interface MTUPPMetadata
- (id)_playheadToString;
- (id)description;
@end

@implementation MTUPPMetadata

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MTUPPMetadata *)self metadataIdentifier];
  v5 = [(MTUPPMetadata *)self _playheadToString];
  if ([(MTUPPMetadata *)self hasBeenPlayed])
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  v7 = [(MTUPPMetadata *)self playCount];
  v8 = MEMORY[0x1E695DF00];
  [(MTUPPMetadata *)self timestamp];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  v10 = [v3 stringWithFormat:@"Identifier <%@> Playhead <%@> Has been played <%@> Play count <%lld> Timestamp <%@>", v4, v5, v6, v7, v9];

  return v10;
}

- (id)_playheadToString
{
  [(MTUPPMetadata *)self bookmarkTime];
  v4 = (v3 / 3600.0);
  [(MTUPPMetadata *)self bookmarkTime];
  v5 = (3600 * v4);
  v7 = ((v6 - v5) / 60.0);
  [(MTUPPMetadata *)self bookmarkTime];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%02d:%02d:%02d", v4, v7, (v8 - v5 - (60 * v7))];
}

@end