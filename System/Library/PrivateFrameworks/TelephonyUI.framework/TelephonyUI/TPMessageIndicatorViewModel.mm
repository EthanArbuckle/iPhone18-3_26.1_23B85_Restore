@interface TPMessageIndicatorViewModel
- (CGSize)indicatorImageSize;
- (NSUUID)messageUUID;
- (TPMessageIndicatorViewModel)initWithDuration:(double)a3 identifier:(id)a4 mediaURL:(id)a5 thumbnailURL:(id)a6 transcriptSummary:(id)a7 isRead:(BOOL)a8 isSensitive:(BOOL)a9 isVideo:(BOOL)a10 fromHandle:(id)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)indicatorImageWithDefaultTintColor:(id)a3;
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

- (TPMessageIndicatorViewModel)initWithDuration:(double)a3 identifier:(id)a4 mediaURL:(id)a5 thumbnailURL:(id)a6 transcriptSummary:(id)a7 isRead:(BOOL)a8 isSensitive:(BOOL)a9 isVideo:(BOOL)a10 fromHandle:(id)a11
{
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a11;
  v35.receiver = self;
  v35.super_class = TPMessageIndicatorViewModel;
  v23 = [(TPMessageIndicatorViewModel *)&v35 init];
  v24 = v23;
  if (v23)
  {
    v23->_duration = a3;
    v25 = [v18 copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v27 = [v19 copy];
    mediaURL = v24->_mediaURL;
    v24->_mediaURL = v27;

    v29 = [v20 copy];
    thumbnailURL = v24->_thumbnailURL;
    v24->_thumbnailURL = v29;

    v31 = [v21 copy];
    transcriptSummary = v24->_transcriptSummary;
    v24->_transcriptSummary = v31;

    v24->_isRead = a8;
    v24->_isSensitive = a9;
    v24->_isVideo = a10;
    objc_storeStrong(&v24->_fromHandle, a11);
    v33 = v24;
  }

  return v24;
}

- (id)indicatorImageWithDefaultTintColor:(id)a3
{
  v4 = a3;
  if (![(TPMessageIndicatorViewModel *)self isSensitive])
  {
    if (![(TPMessageIndicatorViewModel *)self isRead])
    {
      v6 = UIImageGetUnreadIndicator();
      v5 = v6;
      goto LABEL_8;
    }

    v5 = [MEMORY[0x1E69DCAB8] videoMessageRecordGlyphImage];
LABEL_6:
    v7 = [MEMORY[0x1E69DC888] labelColor];
    v8 = [v5 imageWithTintColor:v7];

    goto LABEL_9;
  }

  v5 = [MEMORY[0x1E69DCAB8] videoMessageSensitiveGlyphImage];
  if ([(TPMessageIndicatorViewModel *)self isRead])
  {
    goto LABEL_6;
  }

  v6 = v5;
LABEL_8:
  v8 = [v6 imageWithTintColor:v4];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  LOBYTE(v6) = self->_isVideo;
  return [v4 initWithDuration:self->_identifier identifier:self->_mediaURL mediaURL:self->_thumbnailURL thumbnailURL:self->_transcriptSummary transcriptSummary:self->_isRead isRead:self->_isSensitive isSensitive:self->_duration isVideo:v6 fromHandle:self->_fromHandle];
}

@end