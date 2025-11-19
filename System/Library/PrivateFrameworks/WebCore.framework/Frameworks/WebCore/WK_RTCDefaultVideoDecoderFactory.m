@interface WK_RTCDefaultVideoDecoderFactory
- (WK_RTCDefaultVideoDecoderFactory)initWithH265:(BOOL)a3 vp9Profile0:(BOOL)a4 vp9Profile2:(BOOL)a5 vp9VTB:(BOOL)a6 av1:(BOOL)a7;
- (id)createDecoder:(id)a3;
- (id)supportedCodecs;
@end

@implementation WK_RTCDefaultVideoDecoderFactory

- (WK_RTCDefaultVideoDecoderFactory)initWithH265:(BOOL)a3 vp9Profile0:(BOOL)a4 vp9Profile2:(BOOL)a5 vp9VTB:(BOOL)a6 av1:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = WK_RTCDefaultVideoDecoderFactory;
  result = [(WK_RTCDefaultVideoDecoderFactory *)&v13 init];
  if (result)
  {
    result->_supportsH265 = a3;
    result->_supportsVP9Profile0 = a4;
    result->_supportsVP9Profile2 = a5;
    result->_supportsVP9VTB = (a4 || a5) && a6;
    result->_supportsAv1 = a7;
  }

  return result;
}

- (id)supportedCodecs
{
  v29[3] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  v3 = [WK_RTCVideoCodecInfo alloc];
  v28[0] = @"profile-level-id";
  v28[1] = @"level-asymmetry-allowed";
  v29[0] = @"640c1f";
  v29[1] = @"1";
  v28[2] = @"packetization-mode";
  v29[2] = @"1";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v5 = [(WK_RTCVideoCodecInfo *)v3 initWithName:@"H264" parameters:v4];
  [v2 addObject:v5];

  v6 = [WK_RTCVideoCodecInfo alloc];
  v26[0] = @"profile-level-id";
  v26[1] = @"level-asymmetry-allowed";
  v27[0] = @"42e01f";
  v27[1] = @"1";
  v26[2] = @"packetization-mode";
  v27[2] = @"1";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v8 = [(WK_RTCVideoCodecInfo *)v6 initWithName:@"H264" parameters:v7];
  [v2 addObject:v8];

  v9 = [WK_RTCVideoCodecInfo alloc];
  v24[0] = @"profile-level-id";
  v24[1] = @"level-asymmetry-allowed";
  v25[0] = @"640c1f";
  v25[1] = @"1";
  v24[2] = @"packetization-mode";
  v25[2] = @"0";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v11 = [(WK_RTCVideoCodecInfo *)v9 initWithName:@"H264" parameters:v10];
  [v2 addObject:v11];

  v12 = [WK_RTCVideoCodecInfo alloc];
  v22[0] = @"profile-level-id";
  v22[1] = @"level-asymmetry-allowed";
  v23[0] = @"42e01f";
  v23[1] = @"1";
  v22[2] = @"packetization-mode";
  v23[2] = @"0";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v14 = [(WK_RTCVideoCodecInfo *)v12 initWithName:@"H264" parameters:v13];
  [v2 addObject:v14];

  if (self->_supportsH265)
  {
    v15 = [[WK_RTCVideoCodecInfo alloc] initWithName:@"H265"];
    [v2 addObject:v15];
  }

  v16 = [[WK_RTCVideoCodecInfo alloc] initWithName:@"VP8"];
  [v2 addObject:v16];
  if (self->_supportsVP9Profile0)
  {
    v19 = [[WK_RTCVideoCodecInfo alloc] initWithName:@"VP9" parameters:&unk_2882B0EE0];
    [v2 addObject:v19];

    if (!self->_supportsVP9Profile2)
    {
LABEL_5:
      if (!self->_supportsAv1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!self->_supportsVP9Profile2)
  {
    goto LABEL_5;
  }

  v20 = [[WK_RTCVideoCodecInfo alloc] initWithName:@"VP9" parameters:&unk_2882B0F08];
  [v2 addObject:v20];

  if (self->_supportsAv1)
  {
LABEL_6:
    v17 = [[WK_RTCVideoCodecInfo alloc] initWithName:@"AV1"];
    [v2 addObject:v17];
  }

LABEL_7:

  return v2;
}

- (id)createDecoder:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"H264"];

  if (v6)
  {
    v7 = WK_RTCVideoDecoderH264;
LABEL_3:
    v8 = objc_alloc_init(v7);
LABEL_6:
    v11 = v8;
    goto LABEL_7;
  }

  v9 = [v4 name];
  v10 = [v9 isEqualToString:@"VP8"];

  if (v10)
  {
    v8 = +[WK_RTCVideoDecoderVP8 vp8Decoder];
    goto LABEL_6;
  }

  v13 = [v4 name];
  v14 = [v13 isEqualToString:@"H265"];

  if (v14)
  {
    v7 = WK_RTCVideoDecoderH265;
    goto LABEL_3;
  }

  v15 = [v4 name];
  v16 = [v15 isEqualToString:@"VP9"];

  if (v16)
  {
    if (!self->_supportsVP9VTB)
    {
      v8 = +[WK_RTCVideoDecoderVP9 vp9Decoder];
      goto LABEL_6;
    }

    v7 = WK_RTCVideoDecoderVTBVP9;
    goto LABEL_3;
  }

  v17 = [v4 name];
  v18 = [v17 isEqualToString:@"AV1"];

  if (v18)
  {
    v8 = +[WK_RTCVideoDecoderAV1 av1Decoder];
    goto LABEL_6;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

@end