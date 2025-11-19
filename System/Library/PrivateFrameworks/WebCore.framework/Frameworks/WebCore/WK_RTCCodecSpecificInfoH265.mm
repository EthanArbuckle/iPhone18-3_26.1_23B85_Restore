@interface WK_RTCCodecSpecificInfoH265
- (CodecSpecificInfo)nativeCodecSpecificInfo;
@end

@implementation WK_RTCCodecSpecificInfoH265

- (CodecSpecificInfo)nativeCodecSpecificInfo
{
  retstr->var2 = 1;
  retstr->var3.var0.var0 = 0;
  retstr->var4.var0.var0 = 0;
  LOBYTE(retstr->var4.var0.var1.var2) = 0;
  retstr->var6.var0.var0 = 0;
  *(&retstr->var6.var0.var1.var0.var0.var2.var2 + 4) = 0;
  *(&retstr->var6.var0.var1.var0.var0.var2.var2 + 16) = 0;
  retstr[1].var1.var0.var0 = 0;
  bzero(&retstr->var1, 0x658uLL);
  retstr->var0 = 5;
  retstr->var1.var2.var0 = self->_packetizationMode;
  return result;
}

@end