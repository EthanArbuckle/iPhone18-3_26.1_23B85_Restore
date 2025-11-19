@interface _PXStoryVisualDiagnosticsCropRectsConfiguration
- ($DE86DB94EF19EE5A2E3DBC1B0E7D1028)kenBurnsAnimationInfo;
- (CGSize)TVPreviewSize;
- (void)setKenBurnsAnimationInfo:(id *)a3;
@end

@implementation _PXStoryVisualDiagnosticsCropRectsConfiguration

- (CGSize)TVPreviewSize
{
  width = self->TVPreviewSize.width;
  height = self->TVPreviewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setKenBurnsAnimationInfo:(id *)a3
{
  v3 = *&a3->var0.var0.a;
  v4 = *&a3->var0.var0.c;
  v5 = *&a3->var1.var0.a;
  *&self->kenBurnsAnimationInfo.sourceContentsRect.t.tx = *&a3->var0.var0.tx;
  *&self->kenBurnsAnimationInfo.targetContentsRect.t.a = v5;
  *&self->kenBurnsAnimationInfo.sourceContentsRect.t.a = v3;
  *&self->kenBurnsAnimationInfo.sourceContentsRect.t.c = v4;
  v6 = *&a3->var1.var0.c;
  v7 = *&a3->var1.var0.tx;
  v8 = *&a3->var2.var0;
  self->kenBurnsAnimationInfo.duration.epoch = a3->var2.var3;
  *&self->kenBurnsAnimationInfo.targetContentsRect.t.tx = v7;
  *&self->kenBurnsAnimationInfo.duration.value = v8;
  *&self->kenBurnsAnimationInfo.targetContentsRect.t.c = v6;
}

- ($DE86DB94EF19EE5A2E3DBC1B0E7D1028)kenBurnsAnimationInfo
{
  v3 = *&self->var2.var3;
  *&retstr->var1.var0.c = *&self->var2.var0;
  *&retstr->var1.var0.tx = v3;
  retstr->var2 = *&self[1].var0.var0.b;
  v4 = *&self->var1.var0.a;
  *&retstr->var0.var0.a = *&self->var0.var0.tx;
  *&retstr->var0.var0.c = v4;
  v5 = *&self->var1.var0.tx;
  *&retstr->var0.var0.tx = *&self->var1.var0.c;
  *&retstr->var1.var0.a = v5;
  return self;
}

@end