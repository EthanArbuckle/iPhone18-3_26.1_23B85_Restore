@interface FrameDesc
- (SILFrameDesc)getSILFrameDesc;
@end

@implementation FrameDesc

- (SILFrameDesc)getSILFrameDesc
{
  FrameDesc.getSILFrameDesc()(&v9);
  v5.i32[0] = LODWORD(v9.var2);
  v6 = *&v9.var3;
  v7.i32[0] = *&v9.var7;
  v8 = *&v9.var5;
  *&retstr->var0 = *&v9.var0;
  LODWORD(retstr->var2) = v5.i32[0];
  *&retstr->var3 = v6;
  *&retstr->var5 = v8;
  *&retstr->var7 = vuzp1_s8((vmovl_u8(v7).u64[0] & 0xFF01FF01FF01FF01), v5).u32[0];
  return result;
}

@end