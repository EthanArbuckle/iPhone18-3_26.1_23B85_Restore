@interface SiriTTSAudibleContext
- (id)didStartSpeaking;
- (void)encodeWithCoder:(id)a3;
- (void)setDidStartSpeaking:(id)a3;
@end

@implementation SiriTTSAudibleContext

- (void)setDidStartSpeaking:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1B1A9D79C;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1B1AD5788(v4, v5);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1AD5EE4(v4);
}

- (id)didStartSpeaking
{
  v2 = sub_1B1B0B48C();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1B1A95870;
    v6[3] = &block_descriptor_498;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end