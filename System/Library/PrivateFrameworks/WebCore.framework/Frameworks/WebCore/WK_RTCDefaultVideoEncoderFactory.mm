@interface WK_RTCDefaultVideoEncoderFactory
+ (id)supportedCodecsWithH265:(BOOL)a3 vp9Profile0:(BOOL)a4 vp9Profile2:(BOOL)a5 av1:(BOOL)a6;
- (WK_RTCDefaultVideoEncoderFactory)initWithH265:(BOOL)a3 vp9Profile0:(BOOL)a4 vp9Profile2:(BOOL)a5 av1:(BOOL)a6;
- (id)createEncoder:(id)a3;
- (id)supportedCodecs;
@end

@implementation WK_RTCDefaultVideoEncoderFactory

- (WK_RTCDefaultVideoEncoderFactory)initWithH265:(BOOL)a3 vp9Profile0:(BOOL)a4 vp9Profile2:(BOOL)a5 av1:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = WK_RTCDefaultVideoEncoderFactory;
  result = [(WK_RTCDefaultVideoEncoderFactory *)&v11 init];
  if (result)
  {
    result->_supportsH265 = a3;
    result->_supportsVP9Profile0 = a4;
    result->_supportsVP9Profile2 = a5;
    result->_supportsAv1 = a6;
  }

  return result;
}

+ (id)supportedCodecsWithH265:(BOOL)a3 vp9Profile0:(BOOL)a4 vp9Profile2:(BOOL)a5 av1:(BOOL)a6
{
  v27 = a5;
  v28 = a6;
  v25 = a3;
  v26 = a4;
  v36[3] = *MEMORY[0x277D85DE8];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
  v7 = [WK_RTCVideoCodecInfo alloc];
  v35[0] = @"profile-level-id";
  v35[1] = @"level-asymmetry-allowed";
  v36[0] = @"640c1f";
  v36[1] = @"1";
  v35[2] = @"packetization-mode";
  v36[2] = @"1";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
  v9 = [(WK_RTCVideoCodecInfo *)v7 initWithName:@"H264" parameters:v8];
  [v6 addObject:v9];

  v10 = [WK_RTCVideoCodecInfo alloc];
  v33[0] = @"profile-level-id";
  v33[1] = @"level-asymmetry-allowed";
  v34[0] = @"42e01f";
  v34[1] = @"1";
  v33[2] = @"packetization-mode";
  v34[2] = @"1";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
  v12 = [(WK_RTCVideoCodecInfo *)v10 initWithName:@"H264" parameters:v11];
  [v6 addObject:v12];

  v13 = [WK_RTCVideoCodecInfo alloc];
  v31[0] = @"profile-level-id";
  v31[1] = @"level-asymmetry-allowed";
  v32[0] = @"640c1f";
  v32[1] = @"1";
  v31[2] = @"packetization-mode";
  v32[2] = @"0";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  v15 = [(WK_RTCVideoCodecInfo *)v13 initWithName:@"H264" parameters:v14];
  [v6 addObject:v15];

  v16 = [WK_RTCVideoCodecInfo alloc];
  v29[0] = @"profile-level-id";
  v29[1] = @"level-asymmetry-allowed";
  v30[0] = @"42e01f";
  v30[1] = @"1";
  v29[2] = @"packetization-mode";
  v30[2] = @"0";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v18 = [(WK_RTCVideoCodecInfo *)v16 initWithName:@"H264" parameters:v17];
  [v6 addObject:v18];

  if (v25)
  {
    v19 = [[WK_RTCVideoCodecInfo alloc] initWithName:@"H265"];
    [v6 addObject:v19];
  }

  v20 = [[WK_RTCVideoCodecInfo alloc] initWithName:@"VP8"];
  [v6 addObject:v20];
  if (v26)
  {
    v23 = [[WK_RTCVideoCodecInfo alloc] initWithName:@"VP9" parameters:&unk_2882B0F30];
    [v6 addObject:v23];

    if (!v27)
    {
LABEL_5:
      if (!v28)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v27)
  {
    goto LABEL_5;
  }

  v24 = [[WK_RTCVideoCodecInfo alloc] initWithName:@"VP9" parameters:&unk_2882B0F58];
  [v6 addObject:v24];

  if (v28)
  {
LABEL_6:
    v21 = [[WK_RTCVideoCodecInfo alloc] initWithName:@"AV1"];
    [v6 addObject:v21];
  }

LABEL_7:

  return v6;
}

- (id)createEncoder:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [v4 isEqualToString:@"H264"];

  if (v5)
  {
    v6 = [[WK_RTCVideoEncoderH264 alloc] initWithCodecInfo:v3];
    [(WK_RTCVideoEncoderH264 *)v6 setH264LowLatencyEncoderEnabled:1];
    goto LABEL_12;
  }

  v7 = [v3 name];
  v8 = [v7 isEqualToString:@"VP8"];

  if (v8)
  {
    v9 = +[WK_RTCVideoEncoderVP8 vp8Encoder];
LABEL_11:
    v6 = v9;
    goto LABEL_12;
  }

  v10 = [v3 name];
  v11 = [v10 isEqualToString:@"VP9"];

  if (v11)
  {
    v9 = [WK_RTCVideoEncoderVP9 vp9Encoder:v3];
    goto LABEL_11;
  }

  v12 = [v3 name];
  v13 = [v12 isEqualToString:@"H265"];

  if (v13)
  {
    v9 = [[WK_RTCVideoEncoderH265 alloc] initWithCodecInfo:v3];
    goto LABEL_11;
  }

  v14 = [v3 name];
  v15 = [v14 isEqualToString:@"AV1"];

  if (v15)
  {
    v9 = +[WK_RTCVideoEncoderAV1 av1Encoder];
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (id)supportedCodecs
{
  v3 = objc_opt_class();
  supportsH265 = self->_supportsH265;
  supportsVP9Profile0 = self->_supportsVP9Profile0;
  supportsVP9Profile2 = self->_supportsVP9Profile2;
  supportsAv1 = self->_supportsAv1;

  return [v3 supportedCodecsWithH265:supportsH265 vp9Profile0:supportsVP9Profile0 vp9Profile2:supportsVP9Profile2 av1:supportsAv1];
}

@end