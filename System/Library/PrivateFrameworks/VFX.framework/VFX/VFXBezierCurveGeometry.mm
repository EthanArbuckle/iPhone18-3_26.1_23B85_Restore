@interface VFXBezierCurveGeometry
+ (id)bezierCurveGeometryWithGeometryRef:(__CFXBezierCurveGeometry *)ref;
- (BOOL)getBoundingSphereCenter:(VFXBezierCurveGeometry *)self radius:(SEL)radius;
- (NSString)name;
- (VFXBezierCurveGeometry)initWithCoder:(id)coder;
- (VFXBezierCurveGeometry)initWithGeometryRef:(__CFXBezierCurveGeometry *)ref;
- (double)boundingBox;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifier;
- (id)initWithCGPath:(__n128)path transform:(__n128)transform;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)makeUniqueID;
- (void)setBoundingBox:;
- (void)setIdentifier:(id)identifier;
- (void)setName:(id)name;
@end

@implementation VFXBezierCurveGeometry

- (id)initWithCGPath:(__n128)path transform:(__n128)transform
{
  v16.receiver = self;
  v16.super_class = VFXBezierCurveGeometry;
  v8 = [(VFXBezierCurveGeometry *)&v16 init];
  if (v8)
  {
    v9 = sub_1AF15B1E0();
    *(v8 + 1) = v9;
    if (v9)
    {
      sub_1AF16CDFC(v9, v8);
    }

    v10 = MEMORY[0x1B271BCF0](a7);
    *(v8 + 3) = v10;
    *(v8 + 2) = a2;
    *(v8 + 3) = path;
    *(v8 + 4) = transform;
    *(v8 + 5) = a5;
    sub_1AF15B29C(*(v8 + 1), v10);
    sub_1AF15B358(*(v8 + 1), *(v8 + 2), *(v8 + 3), *(v8 + 4), *(v8 + 5));
  }

  return v8;
}

- (VFXBezierCurveGeometry)initWithGeometryRef:(__CFXBezierCurveGeometry *)ref
{
  v11.receiver = self;
  v11.super_class = VFXBezierCurveGeometry;
  v4 = [(VFXBezierCurveGeometry *)&v11 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_geometry = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    v6 = sub_1AF15B294(ref);
    v4->_cgPath = CFRetain(v6);
    *v4->_anon_20 = sub_1AF15B34C(ref);
    *&v4->_anon_20[16] = v7;
    *&v4->_anon_20[32] = v8;
    *&v4->_anon_20[48] = v9;
  }

  return v4;
}

+ (id)bezierCurveGeometryWithGeometryRef:(__CFXBezierCurveGeometry *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v9 = objc_msgSend_initWithGeometryRef_(v6, v7, ref, v8);

    return v9;
  }

  return result;
}

- (void)dealloc
{
  geometry = self->_geometry;
  if (geometry)
  {
    CFRelease(geometry);
    self->_geometry = 0;
  }

  cgPath = self->_cgPath;
  if (cgPath)
  {
    CFRelease(cgPath);
    self->_cgPath = 0;
  }

  v5.receiver = self;
  v5.super_class = VFXBezierCurveGeometry;
  [(VFXBezierCurveGeometry *)&v5 dealloc];
}

- (void)setName:(id)name
{
  name = self->_name;
  if (name | name)
  {
    if ((objc_msgSend_isEqual_(name, a2, name, v3) & 1) == 0)
    {

      self->_name = objc_msgSend_copy(name, v7, v8, v9);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2A0BB0;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = name;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (NSString)name
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_name;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  v10 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v11 = objc_msgSend___CFObject(self, v7, v8, v9);
  v5 = sub_1AF16CBEC(v11);
  if (v10)
  {
    sub_1AF1CEA9C(v10);
  }

  return v5;
}

- (void)setIdentifier:(id)identifier
{
  v5 = objc_msgSend___CFObject(self, a2, identifier, v3);

  sub_1AF16CD6C(v5, identifier);
}

- (id)identifier
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);

  return sub_1AF16CD08(v4, v5, v6, v7);
}

- (void)_updateEntityModelFromPresentation
{
  v5 = objc_msgSend___CFObject(self, a2, v2, v3);

  self->_name = sub_1AF16CBEC(v5);
}

- (void)_updateEntityPresentationFromModel
{
  v5 = objc_msgSend___CFObject(self, a2, v2, v3);
  name = self->_name;

  sub_1AF16CC34(v5, name);
}

- (void)makeUniqueID
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);
  v8 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v5, v6, v7);
  v12 = objc_msgSend_UUIDString(v8, v9, v10, v11);

  sub_1AF16CD6C(v4, v12);
}

- (double)boundingBox
{
  v8 = VFXNullBoundingBox;
  v9 = *algn_1AFE47750;
  v5 = objc_msgSend_worldRef(self, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    sub_1AF1CEA20(v5);
    sub_1AF1C3958(self[1], 0, &v8, &v9);
    sub_1AF1CEA9C(v6);
  }

  else
  {
    sub_1AF1C3958(self[1], 0, &v8, &v9);
  }

  return *&v8;
}

- (void)setBoundingBox:
{
  v0 = sub_1AF0D5194();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF4D5C(v0);
  }
}

- (BOOL)getBoundingSphereCenter:(VFXBezierCurveGeometry *)self radius:(SEL)radius
{
  v4 = v3;
  v5 = v2;
  v7 = objc_msgSend_worldRef(self, radius, v2, v3);
  v8 = v7;
  if (v7)
  {
    sub_1AF1CEA20(v7);
  }

  v11 = 0uLL;
  v9 = sub_1AF1C39FC(self->_geometry, 0, &v11);
  if (v9)
  {
    if (v5)
    {
      *v5 = v11;
    }

    if (v4)
    {
      *v4 = HIDWORD(v11);
    }
  }

  if (v8)
  {
    sub_1AF1CEA9C(v8);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithCGPath_transform_(v4, v5, self->_cgPath, v6, *self->_anon_20, *&self->_anon_20[16], *&self->_anon_20[32], *&self->_anon_20[48]);
  v11 = objc_msgSend_name(self, v8, v9, v10);
  objc_msgSend_setName_(v7, v12, v11, v13);
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  sub_1AF3720A0(coder, self->_cgPath, @"path");
  sub_1AF371B50(coder, @"transform", *self->_anon_20, *&self->_anon_20[16], *&self->_anon_20[32], *&self->_anon_20[48]);
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_name, @"name");

  sub_1AF372440(coder, self, v6, v7);
}

- (VFXBezierCurveGeometry)initWithCoder:(id)coder
{
  v38.receiver = self;
  v38.super_class = VFXBezierCurveGeometry;
  v7 = [(VFXBezierCurveGeometry *)&v38 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v11 = sub_1AF372254(coder, @"path");
    v12 = sub_1AF371C4C(coder, @"transform");
    v29 = v13;
    v30 = v12;
    v27 = v15;
    v28 = v14;
    v16 = sub_1AF15B1E0();
    v7->_geometry = v16;
    if (v16)
    {
      sub_1AF16CDFC(v16, v7);
    }

    if (v11)
    {
      v18 = CFRetain(v11);
    }

    else
    {
      v18 = 0;
    }

    v7->_cgPath = v18;
    *v7->_anon_20 = v30;
    *&v7->_anon_20[16] = v29;
    *&v7->_anon_20[32] = v28;
    *&v7->_anon_20[48] = v27;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1AF2A1124;
    v31[3] = &unk_1E7A7E548;
    v36 = v7;
    v37 = v11;
    v32 = v30;
    v33 = v29;
    v34 = v28;
    v35 = v27;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v17, v7, v31, v27, v28, v29, *&v30);
    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v20, v19, @"name");
    objc_msgSend_setName_(v7, v22, v21, v23);
    sub_1AF37249C(coder, v7);
    objc_msgSend_setImmediateMode_(VFXTransaction, v24, v8, v25);
  }

  return v7;
}

@end