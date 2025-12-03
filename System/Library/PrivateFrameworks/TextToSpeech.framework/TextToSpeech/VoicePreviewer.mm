@interface VoicePreviewer
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
@end

@implementation VoicePreviewer

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  v6 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v14 - v9;
  v11 = sub_1A957C688();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = playing;
  playingCopy = playing;

  sub_1A938A404(0, 0, v10, &unk_1A9593200, v12);
}

@end