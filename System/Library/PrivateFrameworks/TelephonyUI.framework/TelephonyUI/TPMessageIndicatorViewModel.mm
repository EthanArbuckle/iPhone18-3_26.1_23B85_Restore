@interface TPMessageIndicatorViewModel
- (CGSize)indicatorImageSize;
- (NSUUID)messageUUID;
- (TPMessageIndicatorViewModel)initWithDuration:(double)duration identifier:(id)identifier mediaURL:(id)l thumbnailURL:(id)rL transcriptSummary:(id)summary isRead:(BOOL)read isSensitive:(BOOL)sensitive isVideo:(BOOL)self0 fromHandle:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)indicatorImageWithDefaultTintColor:(id)color;
@end

@implementation TPMessageIndicatorViewModel

- (NSUUID)messageUUID
{
  if (self->_identifier)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:self->_identifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TPMessageIndicatorViewModel)initWithDuration:(double)duration identifier:(id)identifier mediaURL:(id)l thumbnailURL:(id)rL transcriptSummary:(id)summary isRead:(BOOL)read isSensitive:(BOOL)sensitive isVideo:(BOOL)self0 fromHandle:(id)self1
{
  identifierCopy = identifier;
  lCopy = l;
  rLCopy = rL;
  summaryCopy = summary;
  handleCopy = handle;
  v35.receiver = self;
  v35.super_class = TPMessageIndicatorViewModel;
  v23 = [(TPMessageIndicatorViewModel *)&v35 init];
  v24 = v23;
  if (v23)
  {
    v23->_duration = duration;
    v25 = [identifierCopy copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v27 = [lCopy copy];
    mediaURL = v24->_mediaURL;
    v24->_mediaURL = v27;

    v29 = [rLCopy copy];
    thumbnailURL = v24->_thumbnailURL;
    v24->_thumbnailURL = v29;

    v31 = [summaryCopy copy];
    transcriptSummary = v24->_transcriptSummary;
    v24->_transcriptSummary = v31;

    v24->_isRead = read;
    v24->_isSensitive = sensitive;
    v24->_isVideo = video;
    objc_storeStrong(&v24->_fromHandle, handle);
    v33 = v24;
  }

  return v24;
}

- (id)indicatorImageWithDefaultTintColor:(id)color
{
  colorCopy = color;
  if (![(TPMessageIndicatorViewModel *)self isSensitive])
  {
    if (![(TPMessageIndicatorViewModel *)self isRead])
    {
      v6 = UIImageGetUnreadIndicator();
      videoMessageRecordGlyphImage = v6;
      goto LABEL_8;
    }

    videoMessageRecordGlyphImage = [MEMORY[0x1E69DCAB8] videoMessageRecordGlyphImage];
LABEL_6:
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v8 = [videoMessageRecordGlyphImage imageWithTintColor:labelColor];

    goto LABEL_9;
  }

  videoMessageRecordGlyphImage = [MEMORY[0x1E69DCAB8] videoMessageSensitiveGlyphImage];
  if ([(TPMessageIndicatorViewModel *)self isRead])
  {
    goto LABEL_6;
  }

  v6 = videoMessageRecordGlyphImage;
LABEL_8:
  v8 = [v6 imageWithTintColor:colorCopy];
LABEL_9:

  return v8;
}

- (CGSize)indicatorImageSize
{
  if ([(TPMessageIndicatorViewModel *)self isRead]|| (v3 = [(TPMessageIndicatorViewModel *)self isSensitive], v4 = 11.0, v5 = 11.0, v3))
  {
    v4 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p - duration: %f, identifier: %@, mediaURL: %@, thumbnailURL: %@, isRead: %d, isSensitive: %d, idVideo: %d>", v5, self, *&self->_duration, self->_identifier, self->_mediaURL, self->_thumbnailURL, self->_isRead, self->_isSensitive, self->_isVideo];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  LOBYTE(v6) = self->_isVideo;
  return [v4 initWithDuration:self->_identifier identifier:self->_mediaURL mediaURL:self->_thumbnailURL thumbnailURL:self->_transcriptSummary transcriptSummary:self->_isRead isRead:self->_isSensitive isSensitive:self->_duration isVideo:v6 fromHandle:self->_fromHandle];
}

@end