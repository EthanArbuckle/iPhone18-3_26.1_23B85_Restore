@interface SiriTTSAudioData
- (AudioStreamBasicDescription)asbd;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAsbd:(AudioStreamBasicDescription *)a3;
@end

@implementation SiriTTSAudioData

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1ACC0CC(v4);
}

- (AudioStreamBasicDescription)asbd
{
  sub_1B1B01040(&v7);
  v5 = v8;
  v6 = v9;
  retstr->mSampleRate = v7;
  *&retstr->mFormatID = v5;
  *&retstr->mBytesPerFrame = v6;
  return result;
}

- (void)setAsbd:(AudioStreamBasicDescription *)a3
{
  mSampleRate = a3->mSampleRate;
  v3 = *&a3->mBytesPerFrame;
  v5 = *&a3->mFormatID;
  v6 = v3;
  sub_1B1B010D0(&mSampleRate);
}

- (NSString)description
{
  v2 = self;
  sub_1B1B018D4();

  v3 = sub_1B1C2CB28();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = AudioData.isEqual(_:)(v8);

  sub_1B1A90C20(v8, &qword_1EB761DE0, &qword_1B1C352C0);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = AudioData.hash.getter();

  return v3;
}

@end