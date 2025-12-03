@interface TSCH3DVector
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (id)vector;
+ (id)vectorWithVec2:(const void *)vec2;
+ (id)vectorWithVec3:(const void *)vec3;
+ (id)vectorWithVec4:(const void *)vec4;
+ (id)x:(float)x y:(float)y z:(float)z w:(float)w;
- (BOOL)isEqual:(id)equal;
- (TSCH3DVector)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSCH3DVector)initWithVec2:(const void *)vec2;
- (TSCH3DVector)initWithVec3:(const void *)vec3;
- (TSCH3DVector)initWithVec4:(const void *)vec4;
- (TSCH3DVector)initWithX:(float)x y:(float)y z:(float)z w:(float)w;
- (float)valueForDimension:(unint64_t)dimension;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (tvec3<float>)value3;
- (tvec4<float>)value;
- (tvec4<float>)value4;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSCH3DVector

+ (id)vector
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)x:(float)x y:(float)y z:(float)z w:(float)w
{
  v10 = [self alloc];
  *&v11 = x;
  *&v12 = y;
  *&v13 = z;
  *&v14 = w;
  v16 = objc_msgSend_initWithX_y_z_w_(v10, v15, v11, v12, v13, v14);

  return v16;
}

+ (id)vectorWithVec2:(const void *)vec2
{
  LODWORD(v3) = *vec2;
  LODWORD(v4) = *(vec2 + 1);
  return objc_msgSend_x_y_z_(self, a2, v3, v4, 0.0);
}

+ (id)vectorWithVec3:(const void *)vec3
{
  LODWORD(v3) = *vec3;
  LODWORD(v4) = *(vec3 + 1);
  LODWORD(v5) = *(vec3 + 2);
  return objc_msgSend_x_y_z_(self, a2, v3, v4, v5);
}

+ (id)vectorWithVec4:(const void *)vec4
{
  LODWORD(v3) = *vec4;
  LODWORD(v4) = *(vec4 + 1);
  LODWORD(v5) = *(vec4 + 2);
  LODWORD(v6) = *(vec4 + 3);
  return objc_msgSend_x_y_z_w_(self, a2, v3, v4, v5, v6);
}

- (TSCH3DVector)initWithVec2:(const void *)vec2
{
  LODWORD(v3) = *vec2;
  LODWORD(v4) = *(vec2 + 1);
  return MEMORY[0x2821F9670](self, sel_initWithX_y_z_, v3, v4, 0.0);
}

- (TSCH3DVector)initWithVec3:(const void *)vec3
{
  LODWORD(v3) = *vec3;
  LODWORD(v4) = *(vec3 + 1);
  LODWORD(v5) = *(vec3 + 2);
  return MEMORY[0x2821F9670](self, sel_initWithX_y_z_, v3, v4, v5);
}

- (TSCH3DVector)initWithVec4:(const void *)vec4
{
  LODWORD(v3) = *vec4;
  LODWORD(v4) = *(vec4 + 1);
  LODWORD(v5) = *(vec4 + 2);
  LODWORD(v6) = *(vec4 + 3);
  return objc_msgSend_initWithX_y_z_w_(self, a2, v3, v4, v5, v6);
}

- (TSCH3DVector)initWithX:(float)x y:(float)y z:(float)z w:(float)w
{
  v11.receiver = self;
  v11.super_class = TSCH3DVector;
  result = [(TSCH3DVector *)&v11 init];
  if (result)
  {
    result->_x = x;
    result->_y = y;
    result->_z = z;
    result->_w = w;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7 = objc_msgSend_allocWithZone_(TSCH3DVector, a2, v3, v4, v5, zone);
  objc_msgSend_value(self, v8, v9, v10, v11);
  return objc_msgSend_initWithVec4_(v7, v12, v13, v14, v15, &v17);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v7 = objc_msgSend_allocWithZone_(TSCH3DMutableVector, a2, v3, v4, v5, zone);
  objc_msgSend_value(self, v8, v9, v10, v11);
  return objc_msgSend_initWithVec4_(v7, v12, v13, v14, v15, &v17);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

- (float)valueForDimension:(unint64_t)dimension
{
  if (dimension >= 4)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DVector valueForDimension:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DVector.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 179, 0, "Invalid dimension for vector");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = 4 * dimension + 8;
  if (dimension >= 3)
  {
    v23 = 20;
  }

  return *(&self->super.isa + v23);
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSCH3DVector alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, archive, unarchiverCopy);

  return v11;
}

- (TSCH3DVector)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  LODWORD(v4) = *(archive + 6);
  LODWORD(v5) = *(archive + 7);
  LODWORD(v6) = *(archive + 8);
  LODWORD(v7) = *(archive + 9);
  return objc_msgSend_initWithX_y_z_w_(self, a2, v4, v5, v6, v7);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v4 = *(archive + 4);
  *(archive + 6) = LODWORD(self->_x);
  *(archive + 7) = LODWORD(self->_y);
  *(archive + 8) = LODWORD(self->_z);
  w = self->_w;
  *(archive + 4) = v4 | 0xF;
  *(archive + 9) = w;
}

@end