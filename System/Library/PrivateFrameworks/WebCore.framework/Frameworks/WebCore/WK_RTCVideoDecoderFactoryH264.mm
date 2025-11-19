@interface WK_RTCVideoDecoderFactoryH264
- (id)createDecoder:(id)a3;
- (id)supportedCodecs;
@end

@implementation WK_RTCVideoDecoderFactoryH264

- (id)supportedCodecs
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v11[0] = @"profile-level-id";
  v11[1] = @"level-asymmetry-allowed";
  v12[0] = @"640c1f";
  v12[1] = @"1";
  v11[2] = @"packetization-mode";
  v12[2] = @"1";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v4 = [[WK_RTCVideoCodecInfo alloc] initWithName:@"H264" parameters:v3];
  [v2 addObject:v4];
  v9[0] = @"profile-level-id";
  v9[1] = @"level-asymmetry-allowed";
  v10[0] = @"42e01f";
  v10[1] = @"1";
  v9[2] = @"packetization-mode";
  v10[2] = @"1";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v6 = [[WK_RTCVideoCodecInfo alloc] initWithName:@"H264" parameters:v5];
  [v2 addObject:v6];
  v7 = [v2 copy];

  return v7;
}

- (id)createDecoder:(id)a3
{
  v3 = objc_alloc_init(WK_RTCVideoDecoderH264);

  return v3;
}

@end