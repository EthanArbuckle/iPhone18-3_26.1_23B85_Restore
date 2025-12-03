@interface TSCH3DMutableVector
- (void)setValue2:(tvec2<float>)value2;
- (void)setValue3:(tvec3<float>)value3;
- (void)setValue4:(tvec4<float>)value4;
- (void)swapXY;
@end

@implementation TSCH3DMutableVector

- (void)setValue4:(tvec4<float>)value4
{
  v6 = *&value4.var0.var0;
  LODWORD(v3) = **&value4.var0.var0;
  objc_msgSend_setX_(self, a2, v3, v4, v5);
  LODWORD(v8) = v6[1];
  objc_msgSend_setY_(self, v9, v8, v10, v11);
  LODWORD(v12) = v6[2];
  objc_msgSend_setZ_(self, v13, v12, v14, v15);
  LODWORD(v18) = v6[3];

  MEMORY[0x2821F9670](self, sel_setW_, v18, v16, v17);
}

- (void)setValue3:(tvec3<float>)value3
{
  v6 = *&value3.var0.var0;
  LODWORD(v3) = **&value3.var0.var0;
  objc_msgSend_setX_(self, a2, v3, v4, v5);
  LODWORD(v8) = *(v6 + 4);
  objc_msgSend_setY_(self, v9, v8, v10, v11);
  LODWORD(v15) = *(v6 + 8);

  objc_msgSend_setZ_(self, v12, v15, v13, v14);
}

- (void)setValue2:(tvec2<float>)value2
{
  LODWORD(v3) = **&value2;
  objc_msgSend_setX_(self, a2, v3, v4, v5);
  LODWORD(v11) = *(*&value2 + 4);

  objc_msgSend_setY_(self, v8, v11, v9, v10);
}

- (void)swapXY
{
  objc_msgSend_x(self, a2, v2, v3, v4);
  v7 = LODWORD(v6);
  objc_msgSend_y(self, v8, v6, v9, v10);
  objc_msgSend_setX_(self, v11, v12, v13, v14);
  LODWORD(v18) = v7;

  objc_msgSend_setY_(self, v15, v18, v16, v17);
}

@end