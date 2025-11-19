@interface TSCH3DVector
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
+ (id)vector;
+ (id)vectorWithVec2:(const void *)a3;
+ (id)vectorWithVec3:(const void *)a3;
+ (id)vectorWithVec4:(const void *)a3;
+ (id)x:(float)a3 y:(float)a4 z:(float)a5 w:(float)a6;
- (BOOL)isEqual:(id)a3;
- (TSCH3DVector)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSCH3DVector)initWithVec2:(const void *)a3;
- (TSCH3DVector)initWithVec3:(const void *)a3;
- (TSCH3DVector)initWithVec4:(const void *)a3;
- (TSCH3DVector)initWithX:(float)a3 y:(float)a4 z:(float)a5 w:(float)a6;
- (float)valueForDimension:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (tvec3<float>)value3;
- (tvec4<float>)value;
- (tvec4<float>)value4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSCH3DVector

+ (id)vector
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)x:(float)a3 y:(float)a4 z:(float)a5 w:(float)a6
{
  v10 = [a1 alloc];
  *&v11 = a3;
  *&v12 = a4;
  *&v13 = a5;
  *&v14 = a6;
  v16 = objc_msgSend_initWithX_y_z_w_(v10, v15, v11, v12, v13, v14);

  return v16;
}

+ (id)vectorWithVec2:(const void *)a3
{
  LODWORD(v3) = *a3;
  LODWORD(v4) = *(a3 + 1);
  return objc_msgSend_x_y_z_(a1, a2, v3, v4, 0.0);
}

+ (id)vectorWithVec3:(const void *)a3
{
  LODWORD(v3) = *a3;
  LODWORD(v4) = *(a3 + 1);
  LODWORD(v5) = *(a3 + 2);
  return objc_msgSend_x_y_z_(a1, a2, v3, v4, v5);
}

+ (id)vectorWithVec4:(const void *)a3
{
  LODWORD(v3) = *a3;
  LODWORD(v4) = *(a3 + 1);
  LODWORD(v5) = *(a3 + 2);
  LODWORD(v6) = *(a3 + 3);
  return objc_msgSend_x_y_z_w_(a1, a2, v3, v4, v5, v6);
}

- (TSCH3DVector)initWithVec2:(const void *)a3
{
  LODWORD(v3) = *a3;
  LODWORD(v4) = *(a3 + 1);
  return MEMORY[0x2821F9670](self, sel_initWithX_y_z_, v3, v4, 0.0);
}

- (TSCH3DVector)initWithVec3:(const void *)a3
{
  LODWORD(v3) = *a3;
  LODWORD(v4) = *(a3 + 1);
  LODWORD(v5) = *(a3 + 2);
  return MEMORY[0x2821F9670](self, sel_initWithX_y_z_, v3, v4, v5);
}

- (TSCH3DVector)initWithVec4:(const void *)a3
{
  LODWORD(v3) = *a3;
  LODWORD(v4) = *(a3 + 1);
  LODWORD(v5) = *(a3 + 2);
  LODWORD(v6) = *(a3 + 3);
  return objc_msgSend_initWithX_y_z_w_(self, a2, v3, v4, v5, v6);
}

- (TSCH3DVector)initWithX:(float)a3 y:(float)a4 z:(float)a5 w:(float)a6
{
  v11.receiver = self;
  v11.super_class = TSCH3DVector;
  result = [(TSCH3DVector *)&v11 init];
  if (result)
  {
    result->_x = a3;
    result->_y = a4;
    result->_z = a5;
    result->_w = a6;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7 = objc_msgSend_allocWithZone_(TSCH3DVector, a2, v3, v4, v5, a3);
  objc_msgSend_value(self, v8, v9, v10, v11);
  return objc_msgSend_initWithVec4_(v7, v12, v13, v14, v15, &v17);
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v7 = objc_msgSend_allocWithZone_(TSCH3DMutableVector, a2, v3, v4, v5, a3);
  objc_msgSend_value(self, v8, v9, v10, v11);
  return objc_msgSend_initWithVec4_(v7, v12, v13, v14, v15, &v17);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();
  v14 = v6 && (objc_msgSend_value(self, v5, v7, v8, v9), objc_msgSend_value(v6, v10, v11, v12, v13), v20 == v16) && v21 == v17 && v22 == v18 && v23 == v19;

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v32.receiver = self;
  v32.super_class = TSCH3DVector;
  v4 = [(TSCH3DVector *)&v32 description];
  objc_msgSend_value(self, v5, v6, v7, v8);
  v9 = MEMORY[0x277CCACA8];
  v28 = v29;
  sub_276152FD4("vec4(%f, %f, %f, %f)", v10, v11, v12, v13, v14, v15, v16, SLOBYTE(v28));
  if (v34 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v9, v17, v18, v19, v20, &v33);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v9, v17, v18, v19, v20, v33);
  }
  v22 = ;
  if (v34 < 0)
  {
    operator delete(v33);
  }

  v26 = objc_msgSend_stringWithFormat_(v3, v21, v23, v24, v25, @"%@%@", v4, v22, v30, v31);

  return v26;
}

- (tvec4<float>)value
{
  *v2 = *&self->_x;
  result.var2 = a2;
  result.var3 = *(&a2 + 4);
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (tvec4<float>)value4
{
  *v2 = *&self->_x;
  result.var2 = a2;
  result.var3 = *(&a2 + 4);
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (tvec3<float>)value3
{
  *v2 = *&self->_x;
  *(v2 + 8) = self->_z;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (float)valueForDimension:(unint64_t)a3
{
  if (a3 >= 4)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DVector valueForDimension:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DVector.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 179, 0, "Invalid dimension for vector");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = 4 * a3 + 8;
  if (a3 >= 3)
  {
    v23 = 20;
  }

  return *(&self->super.isa + v23);
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSCH3DVector alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, a3, v5);

  return v11;
}

- (TSCH3DVector)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  LODWORD(v4) = *(a3 + 6);
  LODWORD(v5) = *(a3 + 7);
  LODWORD(v6) = *(a3 + 8);
  LODWORD(v7) = *(a3 + 9);
  return objc_msgSend_initWithX_y_z_w_(self, a2, v4, v5, v6, v7);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v4 = *(a3 + 4);
  *(a3 + 6) = LODWORD(self->_x);
  *(a3 + 7) = LODWORD(self->_y);
  *(a3 + 8) = LODWORD(self->_z);
  w = self->_w;
  *(a3 + 4) = v4 | 0xF;
  *(a3 + 9) = w;
}

@end