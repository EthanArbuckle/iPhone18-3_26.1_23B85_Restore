@interface APPCVideoRepresentation
- ($F24F406B2B787EFB06265DBA3D28CBD5)videoSize;
- (APPCVideoRepresentation)initWithIdentifier:(id)a3 adType:(int64_t)a4 desiredPosition:(int64_t)a5 videoURL:(id)a6 duration:(double)a7 fileSize:(int64_t)a8 skipThreshold:(double)a9 skipEnabled:(BOOL)a10 unbranded:(BOOL)a11 bitrate:(double)a12 connectionType:(int64_t)a13 signalStrength:(unint64_t)a14 videoSize:(id)a15 tapAction:(id)a16 adPolicyData:(id)a17;
- (NSURL)videoURL;
- (void)setVideoURL:(id)a3;
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
  v8 = self;
  sub_1C1B0C774(v7);

  v9 = sub_1C1B94478();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (void)setVideoURL:(id)a3
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
  v14 = self;
  sub_1C1B0CFC4(v7, &self->APPCContentRepresentation_opaque[v13]);
  swift_endAccess();
}

- (APPCVideoRepresentation)initWithIdentifier:(id)a3 adType:(int64_t)a4 desiredPosition:(int64_t)a5 videoURL:(id)a6 duration:(double)a7 fileSize:(int64_t)a8 skipThreshold:(double)a9 skipEnabled:(BOOL)a10 unbranded:(BOOL)a11 bitrate:(double)a12 connectionType:(int64_t)a13 signalStrength:(unint64_t)a14 videoSize:(id)a15 tapAction:(id)a16 adPolicyData:(id)a17
{
  v37 = a10;
  v35 = a5;
  v36 = a8;
  var1 = a15.var1;
  var0 = a15.var0;
  v34 = self;
  v23 = sub_1C1B944A8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1C1B945F8();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v34 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B945D8();
  sub_1C1B94488();
  v31 = a16;
  v32 = a17;
  return sub_1C1B0D724(v30, a4, v35, v26, v36, v37, a11, a13, a7, a9, a12, var0, var1, a14, a16, a17);
}

@end