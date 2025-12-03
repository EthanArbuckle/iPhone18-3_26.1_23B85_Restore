@interface TSCH3DOrthographicLens
- (tmat4x4<float>)matrix;
- (void)calculateCullingPlanes:(void *)planes;
@end

@implementation TSCH3DOrthographicLens

- (tmat4x4<float>)matrix
{
  var0 = self->value[1].var1.var0;
  v4 = self->value[1].var0.var0;
  v5 = self->value[1].var3.var0;
  v6 = self->value[1].var2.var0;
  v8 = self->value[0].var2.var0;
  v7 = self->value[0].var3.var0;
  *&retstr->value[0].var3.var0 = 0;
  *&retstr->value[0].var1.var0 = 0;
  *&retstr->value[1].var2.var0 = 0;
  *&retstr->value[2].var0.var0 = 0;
  retstr->value[2].var3.var0 = 0.0;
  retstr->value[3].var3.var0 = 1.0;
  retstr->value[0].var0.var0 = 2.0 / (var0 - v4);
  retstr->value[1].var1.var0 = 2.0 / (v5 - v6);
  retstr->value[2].var2.var0 = -2.0 / (v7 - v8);
  retstr->value[3].var0.var0 = -(var0 + v4) / (var0 - v4);
  retstr->value[3].var1.var0 = -(v5 + v6) / (v5 - v6);
  retstr->value[3].var2.var0 = -(v7 + v8) / (v7 - v8);
  return self;
}

- (void)calculateCullingPlanes:(void *)planes
{
  v28.receiver = self;
  v28.super_class = TSCH3DOrthographicLens;
  [(TSCH3DLens *)&v28 calculateCullingPlanes:?];
  objc_msgSend_left(self, v5, v6, v7, v8);
  v25 = 1065353216;
  v26 = 0;
  v27 = v9;
  sub_2761B3F30(planes, &v25);
  objc_msgSend_right(self, v10, v11, v12, v13);
  v25 = 3212836864;
  v26 = 0;
  v27 = -v14;
  sub_2761B3F30(planes, &v25);
  objc_msgSend_bottom(self, v15, v16, v17, v18);
  v25 = 0x3F80000000000000;
  v26 = 0;
  v27 = v19;
  sub_2761B3F30(planes, &v25);
  objc_msgSend_top(self, v20, v21, v22, v23);
  v25 = 0xBF80000000000000;
  v26 = 0;
  v27 = -v24;
  sub_2761B3F30(planes, &v25);
}

@end