@interface APPCVideoRepresentation
- ($F24F406B2B787EFB06265DBA3D28CBD5)videoSize;
- (APPCVideoRepresentation)initWithIdentifier:(id)identifier adType:(int64_t)type desiredPosition:(int64_t)position videoURL:(id)l duration:(double)duration fileSize:(int64_t)size skipThreshold:(double)threshold skipEnabled:(BOOL)self0 unbranded:(BOOL)self1 bitrate:(double)self2 connectionType:(int64_t)self3 signalStrength:(unint64_t)self4 videoSize:(id)self5 tapAction:(id)self6 adPolicyData:(id)self7;
- (NSURL)videoURL;
- (void)setVideoURL:(id)l;
@end

@implementation APPCVideoRepresentation

- ($F24F406B2B787EFB06265DBA3D28CBD5)videoSize
{
  v2 = *&self->APPCContentRepresentation_opaque[OBJC_IVAR___APPCVideoRepresentation_videoSize];
  v3 = *&self->APPCContentRepresentation_opaque[OBJC_IVAR___APPCVideoRepresentation_videoSize + 8];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (NSURL)videoURL
{
  v3 = sub_1C1B944A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1C1B0C774(v7);

  v9 = sub_1C1B94478();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (void)setVideoURL:(id)l
{
  v4 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_1C1B944A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B94488();
  (*(v9 + 32))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v13 = OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL;
  swift_beginAccess();
  selfCopy = self;
  sub_1C1B0CFC4(v7, &self->APPCContentRepresentation_opaque[v13]);
  swift_endAccess();
}

- (APPCVideoRepresentation)initWithIdentifier:(id)identifier adType:(int64_t)type desiredPosition:(int64_t)position videoURL:(id)l duration:(double)duration fileSize:(int64_t)size skipThreshold:(double)threshold skipEnabled:(BOOL)self0 unbranded:(BOOL)self1 bitrate:(double)self2 connectionType:(int64_t)self3 signalStrength:(unint64_t)self4 videoSize:(id)self5 tapAction:(id)self6 adPolicyData:(id)self7
{
  enabledCopy = enabled;
  positionCopy = position;
  sizeCopy = size;
  var1 = videoSize.var1;
  var0 = videoSize.var0;
  selfCopy = self;
  v23 = sub_1C1B944A8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &selfCopy - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1C1B945F8();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &selfCopy - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B945D8();
  sub_1C1B94488();
  actionCopy = action;
  dataCopy = data;
  return sub_1C1B0D724(v30, type, positionCopy, v26, sizeCopy, enabledCopy, unbranded, connectionType, duration, threshold, bitrate, var0, var1, strength, action, data);
}

@end