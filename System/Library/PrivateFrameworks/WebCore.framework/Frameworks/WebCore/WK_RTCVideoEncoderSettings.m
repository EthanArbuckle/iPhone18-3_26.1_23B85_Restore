@interface WK_RTCVideoEncoderSettings
- (VideoCodec)nativeVideoCodec;
- (WK_RTCVideoEncoderSettings)initWithNativeVideoCodec:(const void *)a3;
@end

@implementation WK_RTCVideoEncoderSettings

- (WK_RTCVideoEncoderSettings)initWithNativeVideoCodec:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = WK_RTCVideoEncoderSettings;
  v4 = [(WK_RTCVideoEncoderSettings *)&v9 init];
  v5 = v4;
  if (a3 && v4)
  {
    v6 = *a3;
    if (v6 >= 6)
    {
      webrtc::webrtc_checks_impl::UnreachableCodeReached(v4);
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:(&off_279E947A8)[v6]];
    [(WK_RTCVideoEncoderSettings *)v5 setName:v7];

    [(WK_RTCVideoEncoderSettings *)v5 setWidth:*(a3 + 2)];
    [(WK_RTCVideoEncoderSettings *)v5 setHeight:*(a3 + 3)];
    [(WK_RTCVideoEncoderSettings *)v5 setStartBitrate:*(a3 + 2)];
    [(WK_RTCVideoEncoderSettings *)v5 setMaxBitrate:*(a3 + 3)];
    [(WK_RTCVideoEncoderSettings *)v5 setMinBitrate:*(a3 + 4)];
    [(WK_RTCVideoEncoderSettings *)v5 setMaxFramerate:*(a3 + 5)];
    [(WK_RTCVideoEncoderSettings *)v5 setQpMax:*(a3 + 7)];
    [(WK_RTCVideoEncoderSettings *)v5 setMode:*(a3 + 81)];
  }

  return v5;
}

- (VideoCodec)nativeVideoCodec
{
  *&retstr->var0 = 0;
  *&retstr->var3 = 0;
  *&retstr->var5 = 0;
  retstr->var7 = 1;
  retstr->var9 = 0;
  *&retstr->var10[0].var0 = 0u;
  *&retstr->var10[0].var4 = 0u;
  *&retstr->var10[0].var8 = 0u;
  *&retstr->var10[1].var3 = 0u;
  *&retstr->var10[1].var7 = 0u;
  *&retstr->var10[2].var2 = 0u;
  *&retstr->var10[2].var5 = 0u;
  *&retstr->var11[0].var0 = 0u;
  retstr->var10[0].var3 = 1;
  *&retstr->var10[0].var6 = 0;
  *&retstr->var10[0].var4 = 0;
  retstr->var10[0].var8 = 0;
  retstr->var10[1].var3 = 1;
  retstr->var10[1].var8 = 0;
  *&retstr->var10[1].var4 = 0;
  *&retstr->var10[1].var6 = 0;
  retstr->var10[2].var3 = 1;
  *&retstr->var10[2].var6 = 0;
  *&retstr->var10[2].var4 = 0;
  retstr->var10[2].var8 = 0;
  *&retstr->var11[4].var8 = 0;
  *&retstr->var11[4].var0 = 0u;
  *&retstr->var11[4].var4 = 0u;
  *&retstr->var11[3].var1 = 0u;
  *&retstr->var11[3].var5 = 0u;
  *&retstr->var11[2].var2 = 0u;
  *&retstr->var11[2].var6 = 0u;
  *&retstr->var11[1].var3 = 0u;
  *&retstr->var11[1].var7 = 0u;
  *&retstr->var11[0].var4 = 0u;
  *&retstr->var11[0].var8 = 0u;
  retstr->var11[0].var3 = 1;
  *&retstr->var11[0].var4 = 0;
  *&retstr->var11[0].var6 = 0;
  retstr->var11[0].var8 = 0;
  retstr->var11[1].var3 = 1;
  *&retstr->var11[1].var6 = 0;
  *&retstr->var11[1].var4 = 0;
  retstr->var11[1].var8 = 0;
  retstr->var11[2].var3 = 1;
  *&retstr->var11[2].var4 = 0;
  *&retstr->var11[2].var6 = 0;
  retstr->var11[2].var8 = 0;
  retstr->var11[3].var3 = 1;
  *&retstr->var11[3].var6 = 0;
  *&retstr->var11[3].var4 = 0;
  retstr->var11[3].var8 = 0;
  retstr->var11[4].var3 = 1;
  *&retstr->var11[4].var4 = 0;
  *&retstr->var11[4].var6 = 0;
  retstr->var11[4].var8 = 0;
  retstr->var13 = 0;
  retstr->var14.var0 = 0;
  retstr->var14.var1 = 0;
  retstr->var15 = 0;
  retstr->var18 = 0;
  retstr->var19 = 0;
  retstr->var16 = 0uLL;
  retstr->var17 = 0;
  retstr->var1 = [(WK_RTCVideoEncoderSettings *)self width];
  retstr->var2 = [(WK_RTCVideoEncoderSettings *)self height];
  retstr->var3 = [(WK_RTCVideoEncoderSettings *)self startBitrate];
  [(WK_RTCVideoEncoderSettings *)self maxBitrate];
  retstr->var5 = [(WK_RTCVideoEncoderSettings *)self minBitrate];
  retstr->var4 = [(WK_RTCVideoEncoderSettings *)self maxBitrate];
  retstr->var8 = [(WK_RTCVideoEncoderSettings *)self qpMax];
  result = [(WK_RTCVideoEncoderSettings *)self mode];
  retstr->var12 = result;
  return result;
}

@end