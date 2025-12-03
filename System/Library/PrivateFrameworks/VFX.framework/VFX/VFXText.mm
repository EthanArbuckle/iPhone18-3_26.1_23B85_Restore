@interface VFXText
+ (id)textWithString:(id)string extrusionDepth:(float)depth;
- ($80EDBB80750A9D2E1B4955686707C737)params;
- (BOOL)_wantsSeparateMeshElements;
- (BOOL)getBoundingBoxMin:(VFXText *)self max:(SEL)max;
- (BOOL)getBoundingSphereCenter:(VFXText *)self radius:(SEL)radius;
- (BOOL)isWrapped;
- (CGRect)containerFrame;
- (NSString)alignmentMode;
- (NSString)swiftString;
- (NSString)truncationMode;
- (UIBezierPath)chamferProfile;
- (UIFont)font;
- (VFXText)init;
- (VFXText)initWithCoder:(id)coder;
- (VFXText)initWithTextGeometryRef:(__CFXTextGeometry *)ref;
- (float)chamferRadius;
- (float)discretizedStraightLineMaxLength;
- (float)extrusionDepth;
- (float)flatness;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initPresentationTextGeometryWithTextGeometryRef:(__CFXTextGeometry *)ref;
- (id)patchFont:(id)font;
- (id)presentationModel;
- (id)string;
- (int64_t)primitiveType;
- (uint64_t)__createCFObject;
- (void)_customDecodingOfVFXText:(id)text;
- (void)_customEncodingOfVFXText:(id)text;
- (void)_setupObjCModelFrom:(id)from;
- (void)_updateModelFromPresentation:(__CFXTextGeometry *)presentation;
- (void)_updatePresentationFromModel;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAlignmentMode:(id)mode;
- (void)setChamferProfile:(id)profile;
- (void)setChamferRadius:(float)radius;
- (void)setContainerFrame:(CGRect)frame;
- (void)setDiscretizedStraightLineMaxLength:(float)length;
- (void)setExtrusionDepth:(float)depth;
- (void)setFlatness:(float)flatness;
- (void)setFont:(id)font;
- (void)setPrimitiveType:(int64_t)type;
- (void)setString:(id)string;
- (void)setTruncationMode:(id)mode;
- (void)setWrapped:(BOOL)wrapped;
- (void)set_wantsSeparateMeshElements:(BOOL)elements;
@end

@implementation VFXText

- (uint64_t)__createCFObject
{
  if (qword_1ED73AB80 != -1)
  {
    sub_1AFDDE8DC();
  }

  v0 = sub_1AF0D160C(qword_1ED73AB78, 0x168uLL);
  sub_1AF1B2AF0(v0);
  *(v0 + 208) = 0;
  *(v0 + 212) = 1065353216;
  *(v0 + 220) = 0;
  *(v0 + 228) = 2139095039;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0;
  v1 = *(MEMORY[0x1E695F058] + 16);
  *(v0 + 344) = *MEMORY[0x1E695F058];
  *(v0 + 360) = v1;
  *(v0 + 338) = 0;
  *(v0 + 120) = &off_1F24E8340;
  return v0;
}

- (void)_updateModelFromPresentation:(__CFXTextGeometry *)presentation
{
  v14.receiver = self;
  v14.super_class = VFXText;
  [(VFXModel *)&v14 _updateModelFromPresentation];
  self->_primitiveType = sub_1AF1C5A20(presentation);
  self->_flatness = sub_1AF1C5C90(presentation);
  self->_chamferRadius = sub_1AF1C5804(presentation);
  self->_extrusionDepth = sub_1AF1C596C(presentation);
  self->_chamferProfile = sub_1AF1C5AD4(presentation);
  self->_discretizedStraightLineMaxLength = sub_1AF1C58B8(presentation);
  self->_alignmentMode = sub_1AF1C5CD4(presentation);
  self->_truncationMode = sub_1AF1C5CDC(presentation);
  self->_string = sub_1AF1C5CC4(presentation);
  v5 = sub_1AF1C5CCC(presentation);
  self->_font = objc_msgSend_patchFont_(self, v6, v5, v7);
  self->_useCustomContainerFrame = sub_1AF1C573C(presentation);
  self->_customContainerFrame.origin.x = sub_1AF1C5744(presentation);
  self->_customContainerFrame.origin.y = v8;
  self->_customContainerFrame.size.width = v9;
  self->_customContainerFrame.size.height = v10;
  self->_wrapped = sub_1AF1C5CE4(presentation);
  self->__wantsSeparateMeshElements = sub_1AF1C60F8(presentation);
  v11 = self->_font;
  v12 = self->_string;
  v13 = self->_chamferProfile;
}

- (void)_updatePresentationFromModel
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF333A9C;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v4);
  v3.receiver = self;
  v3.super_class = VFXText;
  [(VFXModel *)&v3 _updateModelFromPresentation];
}

- (VFXText)init
{
  v3 = [VFXText __createCFObject]_0();
  v19.receiver = self;
  v19.super_class = VFXText;
  v4 = [(VFXModel *)&v19 initWithModelRef:v3];
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_modelRef(v4, v5, v6, v7);
    objc_msgSend__updateModelFromPresentation_(v8, v10, v9, v11);
    v15 = objc_msgSend_material(VFXMaterial, v12, v13, v14);
    objc_msgSend_setFirstMaterial_(v8, v16, v15, v17);
  }

  CFRelease(v3);
  return v8;
}

- (VFXText)initWithTextGeometryRef:(__CFXTextGeometry *)ref
{
  v12.receiver = self;
  v12.super_class = VFXText;
  v3 = [(VFXModel *)&v12 initWithModelRef:ref];
  v7 = v3;
  if (v3)
  {
    v8 = objc_msgSend_modelRef(v3, v4, v5, v6);
    objc_msgSend__updateModelFromPresentation_(v7, v9, v8, v10);
  }

  return v7;
}

- (id)initPresentationTextGeometryWithTextGeometryRef:(__CFXTextGeometry *)ref
{
  v4.receiver = self;
  v4.super_class = VFXText;
  return [(VFXModel *)&v4 initPresentationModelWithModelRef:ref];
}

- (id)presentationModel
{
  v3 = [VFXText alloc];
  v7 = objc_msgSend_modelRef(self, v4, v5, v6);
  inited = objc_msgSend_initPresentationTextGeometryWithTextGeometryRef_(v3, v8, v7, v9);

  return inited;
}

+ (id)textWithString:(id)string extrusionDepth:(float)depth
{
  v6 = objc_alloc_init(self);
  *&v7 = depth;
  objc_msgSend_setExtrusionDepth_(v6, v8, v9, v10, v7);
  objc_msgSend_setString_(v6, v11, string, v12);
  return v6;
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_modelDescription(self, a2, v2, v3);
  v10 = objc_msgSend_string(self, v7, v8, v9);
  objc_msgSend_extrusionDepth(self, v11, v12, v13);
  return objc_msgSend_stringWithFormat_(v5, v15, @"<%@ | string=%@ extrusionDepth=%.3f> ", v16, v6, v10, v14);
}

- (void)_setupObjCModelFrom:(id)from
{
  v62.receiver = self;
  v62.super_class = VFXText;
  [(VFXModel *)&v62 _setupObjCModelFrom:?];
  objc_msgSend_begin(VFXTransaction, v5, v6, v7);
  objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1, v9);
  v13 = objc_msgSend_font(from, v10, v11, v12);
  objc_msgSend_setFont_(self, v14, v13, v15);
  objc_msgSend_containerFrame(from, v16, v17, v18);
  if (v22 != 0.0)
  {
    objc_msgSend_containerFrame(from, v19, v20, v21);
    objc_msgSend_setContainerFrame_(self, v23, v24, v25);
  }

  v26 = objc_msgSend_truncationMode(from, v19, v20, v21);
  objc_msgSend_setTruncationMode_(self, v27, v26, v28);
  v32 = objc_msgSend_alignmentMode(from, v29, v30, v31);
  objc_msgSend_setAlignmentMode_(self, v33, v32, v34);
  objc_msgSend_flatness(from, v35, v36, v37);
  objc_msgSend_setFlatness_(self, v38, v39, v40);
  isWrapped = objc_msgSend_isWrapped(from, v41, v42, v43);
  objc_msgSend_setWrapped_(self, v45, isWrapped, v46);
  objc_msgSend_chamferRadius(from, v47, v48, v49);
  objc_msgSend_setChamferRadius_(self, v50, v51, v52);
  v56 = objc_msgSend_chamferProfile(from, v53, v54, v55);
  objc_msgSend_setChamferProfile_(self, v57, v56, v58);
  objc_msgSend_commitImmediate(VFXTransaction, v59, v60, v61);
}

- (void)copyTo:(id)to withContext:(id)context
{
  v18.receiver = self;
  v18.super_class = VFXText;
  [(VFXModel *)&v18 copyTo:to withContext:context];
  v9 = objc_msgSend_string(self, v6, v7, v8);
  objc_msgSend_setString_(to, v10, v9, v11);
  objc_msgSend_extrusionDepth(self, v12, v13, v14);
  objc_msgSend_setExtrusionDepth_(to, v15, v16, v17);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_msgSend_string(self, a2, zone, v3);
  objc_msgSend_extrusionDepth(self, v6, v7, v8);
  v16 = objc_msgSend_textWithString_extrusionDepth_(VFXText, v9, v5, v10);
  objc_msgSend__setupObjCModelFrom_(v16, v11, self, v12);
  objc_msgSend__copyAttributesTo_(self, v13, v16, v14);

  return v16;
}

- (BOOL)_wantsSeparateMeshElements
{
  if (objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    v8 = objc_msgSend_worldRef(self, v5, v6, v7);
    v12 = v8;
    if (v8)
    {
      sub_1AF1CEA20(v8);
    }

    v13 = objc_msgSend_modelRef(self, v9, v10, v11);
    wantsSeparateMeshElements = sub_1AF1C60F8(v13);
    if (v12)
    {
      sub_1AF1CEA9C(v12);
    }
  }

  else
  {
    wantsSeparateMeshElements = self->__wantsSeparateMeshElements;
  }

  return wantsSeparateMeshElements & 1;
}

- (void)set_wantsSeparateMeshElements:(BOOL)elements
{
  if (self->__wantsSeparateMeshElements != elements)
  {
    v7 = v3;
    v8 = v4;
    self->__wantsSeparateMeshElements = elements;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF334190;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    elementsCopy = elements;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)chamferRadius
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_chamferRadius;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C5804(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setChamferRadius:(float)radius
{
  v5 = fmaxf(radius, 0.0);
  if (v5 != self->_chamferRadius)
  {
    v8 = v3;
    v9 = v4;
    self->_chamferRadius = v5;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF3342EC;
    v6[3] = &unk_1E7A7E270;
    v6[4] = self;
    v7 = v5;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"chamferRadius", v6);
  }
}

- (float)discretizedStraightLineMaxLength
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_discretizedStraightLineMaxLength;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C58B8(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setDiscretizedStraightLineMaxLength:(float)length
{
  v5 = fmaxf(length, 0.0);
  if (v5 != self->_discretizedStraightLineMaxLength)
  {
    v8 = v3;
    v9 = v4;
    self->_discretizedStraightLineMaxLength = v5;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF334440;
    v6[3] = &unk_1E7A7E270;
    v6[4] = self;
    v7 = v5;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (float)extrusionDepth
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_extrusionDepth;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C596C(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setExtrusionDepth:(float)depth
{
  v5 = fmaxf(depth, 0.0);
  if (v5 != self->_extrusionDepth)
  {
    v8 = v3;
    v9 = v4;
    self->_extrusionDepth = v5;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF33459C;
    v6[3] = &unk_1E7A7E270;
    v6[4] = self;
    v7 = v5;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"extrusionDepth", v6);
  }
}

- (float)flatness
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_flatness;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C5C90(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setFlatness:(float)flatness
{
  if (self->_flatness != flatness)
  {
    v7 = v3;
    v8 = v4;
    self->_flatness = flatness;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF3346E8;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    flatnessCopy = flatness;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)primitiveType
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_primitiveType;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C5A20(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setPrimitiveType:(int64_t)type
{
  if (self->_primitiveType != type)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_primitiveType = type;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF33482C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = type;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (id)string
{
  if (objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    v8 = objc_msgSend_worldRef(self, v5, v6, v7);
    v12 = v8;
    if (v8)
    {
      sub_1AF1CEA20(v8);
    }

    v13 = objc_msgSend_modelRef(self, v9, v10, v11);
    string = sub_1AF1C5CC4(v13);
    if (v12)
    {
      sub_1AF1CEA9C(v12);
    }
  }

  else
  {
    string = self->_string;
  }

  v15 = objc_msgSend_copy(string, v5, v6, v7);

  return v15;
}

- (void)setString:(id)string
{
  string = self->_string;
  if (string != string)
  {

    self->_string = objc_msgSend_copy(string, v6, v7, v8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF3349A0;
    v10[3] = &unk_1E7A7E1D0;
    v10[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
  }
}

- (BOOL)isWrapped
{
  if (objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    v8 = objc_msgSend_worldRef(self, v5, v6, v7);
    v12 = v8;
    if (v8)
    {
      sub_1AF1CEA20(v8);
    }

    v13 = objc_msgSend_modelRef(self, v9, v10, v11);
    wrapped = sub_1AF1C5CE4(v13);
    if (v12)
    {
      sub_1AF1CEA9C(v12);
    }
  }

  else
  {
    wrapped = self->_wrapped;
  }

  return wrapped & 1;
}

- (void)setWrapped:(BOOL)wrapped
{
  if (self->_wrapped != wrapped)
  {
    v7 = v3;
    v8 = v4;
    self->_wrapped = wrapped;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF334AF4;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    wrappedCopy = wrapped;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (id)patchFont:(id)font
{
  fontCopy = font;
  if (!font)
  {
    return fontCopy;
  }

  v5 = objc_msgSend_fontName(font, a2, font, v3);
  if (objc_msgSend_hasPrefix_(v5, v6, @".SFUI", v7))
  {
    v11 = MEMORY[0x1E69DB878];
    objc_msgSend_pointSize(fontCopy, v8, v9, v10);
    fontCopy = objc_msgSend_fontWithName_size_(v11, v12, @"HelveticaNeue", v13);
    if (!fontCopy)
    {
      return fontCopy;
    }
  }

  v14 = objc_msgSend_fontName(fontCopy, v8, v9, v10);
  if (!objc_msgSend_hasPrefix_(v14, v15, @".SFNS", v16))
  {
    return fontCopy;
  }

  v20 = MEMORY[0x1E69DB878];
  objc_msgSend_pointSize(fontCopy, v17, v18, v19);

  return objc_msgSend_fontWithName_size_(v20, v21, @"HelveticaNeue", v22);
}

- (UIFont)font
{
  if (objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    v8 = objc_msgSend_worldRef(self, v5, v6, v7);
    v12 = v8;
    if (v8)
    {
      sub_1AF1CEA20(v8);
    }

    v13 = objc_msgSend_modelRef(self, v9, v10, v11);
    font = sub_1AF1C5CCC(v13);
    if (v12)
    {
      sub_1AF1CEA9C(v12);
    }
  }

  else
  {
    font = self->_font;
  }

  v15 = objc_msgSend_string(self, v5, v6, v7);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v20 = *MEMORY[0x1E69DB648];

    return objc_msgSend_attribute_atIndex_effectiveRange_(v15, v17, v20, 0, 0);
  }

  else if (font)
  {
    return font;
  }

  else
  {

    return sub_1AF1C60E0(isKindOfClass, v17, v18, v19);
  }
}

- (void)setFont:(id)font
{
  if (self->_font != font)
  {
    v5 = objc_msgSend_patchFont_(self, a2, font, v3);

    self->_font = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF334D9C;
    v7[3] = &unk_1E7A7E220;
    v7[4] = self;
    v7[5] = v5;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
  }
}

- (CGRect)containerFrame
{
  if (objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    v8 = objc_msgSend_worldRef(self, v5, v6, v7);
    v12 = v8;
    if (v8)
    {
      sub_1AF1CEA20(v8);
    }

    v13 = objc_msgSend_modelRef(self, v9, v10, v11);
    x = sub_1AF1C5744(v13);
    y = v15;
    width = v17;
    height = v19;
    if (v12)
    {
      sub_1AF1CEA9C(v12);
    }
  }

  else
  {
    x = self->_customContainerFrame.origin.x;
    y = self->_customContainerFrame.origin.y;
    width = self->_customContainerFrame.size.width;
    height = self->_customContainerFrame.size.height;
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)setContainerFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = !CGRectIsEmpty(frame);
  if (self->_useCustomContainerFrame != v9 || (v12.origin.x = x, v12.origin.y = y, v12.size.width = width, v12.size.height = height, !CGRectEqualToRect(self->_customContainerFrame, v12)))
  {
    self->_useCustomContainerFrame = v9;
    self->_customContainerFrame.origin.x = x;
    self->_customContainerFrame.origin.y = y;
    self->_customContainerFrame.size.width = width;
    self->_customContainerFrame.size.height = height;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF334F80;
    v10[3] = &unk_1E7A7E298;
    v10[4] = self;
    v11 = v9;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v10);
  }
}

- (NSString)truncationMode
{
  if (objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    v8 = objc_msgSend_worldRef(self, v5, v6, v7);
    v12 = v8;
    if (v8)
    {
      sub_1AF1CEA20(v8);
    }

    v13 = objc_msgSend_modelRef(self, v9, v10, v11);
    truncationMode = sub_1AF1C5CDC(v13);
    if (v12)
    {
      sub_1AF1CEA9C(v12);
    }
  }

  else
  {
    truncationMode = self->_truncationMode;
  }

  return sub_1AF335060(truncationMode);
}

- (void)setTruncationMode:(id)mode
{
  v16 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isEqualToString_(mode, a2, *MEMORY[0x1E697A068], v3))
  {
LABEL_2:
    v8 = 0;
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(mode, v6, *MEMORY[0x1E697A070], v7))
  {
    v8 = 1;
  }

  else if (objc_msgSend_isEqualToString_(mode, v6, *MEMORY[0x1E697A058], v9))
  {
    v8 = 2;
  }

  else
  {
    if ((objc_msgSend_isEqualToString_(mode, v6, *MEMORY[0x1E697A060], v10) & 1) == 0)
    {
      v11 = sub_1AF0D5194();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        modeCopy = mode;
        _os_log_impl(&dword_1AF0CE000, v11, OS_LOG_TYPE_DEFAULT, "Warning: Unknown truncation mode %@", buf, 0xCu);
      }

      goto LABEL_2;
    }

    v8 = 3;
  }

LABEL_9:
  if (self->_truncationMode != v8)
  {
    self->_truncationMode = v8;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF33529C;
    v12[3] = &unk_1E7A7E270;
    v12[4] = self;
    v13 = v8;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v12);
  }
}

- (NSString)alignmentMode
{
  if (objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    v8 = objc_msgSend_worldRef(self, v5, v6, v7);
    v12 = v8;
    if (v8)
    {
      sub_1AF1CEA20(v8);
    }

    v13 = objc_msgSend_modelRef(self, v9, v10, v11);
    alignmentMode = sub_1AF1C5CD4(v13);
    if (v12)
    {
      sub_1AF1CEA9C(v12);
    }
  }

  else
  {
    alignmentMode = self->_alignmentMode;
  }

  return sub_1AF335358(alignmentMode);
}

- (void)setAlignmentMode:(id)mode
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isEqualToString_(mode, a2, *MEMORY[0x1E6979578], v3))
  {
LABEL_2:
    v8 = 0;
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(mode, v6, *MEMORY[0x1E6979570], v7))
  {
    v8 = 1;
  }

  else if (objc_msgSend_isEqualToString_(mode, v6, *MEMORY[0x1E6979580], v9))
  {
    v8 = 2;
  }

  else if (objc_msgSend_isEqualToString_(mode, v6, *MEMORY[0x1E6979560], v10))
  {
    v8 = 3;
  }

  else
  {
    if ((objc_msgSend_isEqualToString_(mode, v6, *MEMORY[0x1E6979568], v11) & 1) == 0)
    {
      v12 = sub_1AF0D5194();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        modeCopy = mode;
        _os_log_impl(&dword_1AF0CE000, v12, OS_LOG_TYPE_DEFAULT, "Warning: Unknown alignment mode %@", buf, 0xCu);
      }

      goto LABEL_2;
    }

    v8 = 4;
  }

LABEL_11:
  if (self->_alignmentMode != v8)
  {
    self->_alignmentMode = v8;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1AF3355C8;
    v13[3] = &unk_1E7A7E270;
    v13[4] = self;
    v14 = v8;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v13);
  }
}

- (UIBezierPath)chamferProfile
{
  if (objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    v8 = objc_msgSend_worldRef(self, v5, v6, v7);
    v12 = v8;
    if (v8)
    {
      sub_1AF1CEA20(v8);
    }

    v13 = objc_msgSend_modelRef(self, v9, v10, v11);
    chamferProfile = sub_1AF1C5AD4(v13);
    if (v12)
    {
      sub_1AF1CEA9C(v12);
    }
  }

  else
  {
    chamferProfile = self->_chamferProfile;
  }

  v15 = objc_msgSend_copy(chamferProfile, v5, v6, v7);

  return v15;
}

- (void)setChamferProfile:(id)profile
{
  self->_chamferProfile = objc_msgSend_copy(profile, v5, v6, v7);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF335734;
  v9[3] = &unk_1E7A7E220;
  v9[4] = self;
  v9[5] = profile;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
}

- ($80EDBB80750A9D2E1B4955686707C737)params
{
  *&retstr->var7.origin.y = 0u;
  *&retstr->var7.size.height = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var5 = 0u;
  *&retstr->var0.var4 = 0u;
  *&retstr->var0.var6 = 0u;
  *&retstr->var0.var0 = 0u;
  result = objc_msgSend_isPresentationObject(self, a3, v3, v4);
  if (result)
  {
    v11 = objc_msgSend_modelRef(self, v8, v9, v10);

    sub_1AF1C547C(v11, retstr);
  }

  else
  {
    chamferRadius = self->_chamferRadius;
    retstr->var0.var1 = self->_extrusionDepth;
    retstr->var0.var2 = chamferRadius;
    retstr->var0.var4 = self->_discretizedStraightLineMaxLength;
    origin = self->_customContainerFrame.origin;
    retstr->var7.size = self->_customContainerFrame.size;
    retstr->var0.var0 = self->_primitiveType;
    chamferProfile = self->_chamferProfile;
    retstr->var0.var5 = 0;
    retstr->var0.var6 = chamferProfile;
    retstr->var0.var3 = 0;
    font = self->_font;
    retstr->var1 = self->_string;
    retstr->var2 = font;
    LODWORD(font) = self->_truncationMode;
    retstr->var3 = self->_alignmentMode;
    retstr->var4 = font;
    retstr->var5 = self->_wrapped;
    retstr->var6 = self->_useCustomContainerFrame;
    retstr->var7.origin = origin;
    retstr->var8 = self->_flatness;
  }

  return result;
}

- (BOOL)getBoundingBoxMin:(VFXText *)self max:(SEL)max
{
  v4 = v3;
  v5 = v2;
  v7 = objc_msgSend_worldRef(self, max, v2, v3);
  v11 = v7;
  if (v7)
  {
    sub_1AF1CEA20(v7);
  }

  DWORD2(v20) = 0;
  *&v20 = 0;
  DWORD2(v19) = 0;
  *&v19 = 0;
  v15 = objc_msgSend_modelRef(self, v8, v9, v10);
  if (self)
  {
    objc_msgSend_params(self, v12, v13, v14);
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  v16 = sub_1AF1C69F8(v15, &v20, &v19, v18);
  if (v16)
  {
    if (v5)
    {
      *v5 = v20;
    }

    if (v4)
    {
      *v4 = v19;
    }
  }

  if (v11)
  {
    sub_1AF1CEA9C(v11);
  }

  return v16;
}

- (BOOL)getBoundingSphereCenter:(VFXText *)self radius:(SEL)radius
{
  v4 = v3;
  v5 = v2;
  v7 = objc_msgSend_worldRef(self, radius, v2, v3);
  v11 = v7;
  if (v7)
  {
    sub_1AF1CEA20(v7);
  }

  v19 = 0uLL;
  v15 = objc_msgSend_modelRef(self, v8, v9, v10);
  if (self)
  {
    objc_msgSend_params(self, v12, v13, v14);
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  v16 = sub_1AF1C6A64(v15, &v19, v18);
  if (v16)
  {
    if (v5)
    {
      *v5 = v19;
    }

    if (v4)
    {
      *v4 = HIDWORD(v19);
    }
  }

  if (v11)
  {
    sub_1AF1CEA9C(v11);
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXText;
  [(VFXModel *)&v3 dealloc];
}

- (void)_customDecodingOfVFXText:(id)text
{
  v40[2] = *MEMORY[0x1E69E9840];
  v5 = sub_1AF3723C4(text, @"chamferProfile");
  objc_msgSend_setChamferProfile_(self, v6, v5, v7);
  v8 = MEMORY[0x1E695DFD8];
  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v40, 2);
  v13 = objc_msgSend_setWithArray_(v8, v11, v10, v12);
  v14 = sub_1AF3726E8(text, @"string", v13);
  objc_msgSend_setString_(self, v15, v14, v16);
  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v21 = objc_msgSend_setWithObject_(v17, v19, v18, v20);
  v22 = sub_1AF3726E8(text, @"font", v21);
  v25 = objc_msgSend_patchFont_(self, v23, v22, v24);
  objc_msgSend_setFont_(self, v26, v25, v27);
  v30 = objc_msgSend_decodeIntegerForKey_(text, v28, @"alignmentMode", v29);
  v31 = sub_1AF335358(v30);
  objc_msgSend_setAlignmentMode_(self, v32, v31, v33);
  v36 = objc_msgSend_decodeIntegerForKey_(text, v34, @"truncationMode", v35);
  v37 = sub_1AF335060(v36);
  objc_msgSend_setTruncationMode_(self, v38, v37, v39);
}

- (void)_customEncodingOfVFXText:(id)text
{
  sub_1AF3721F0(text, self->_chamferProfile, @"chamferProfile", v3);
  sub_1AF37266C(text, self->_string, @"string");
  sub_1AF37266C(text, self->_font, @"font");
  objc_msgSend_encodeInteger_forKey_(text, v6, self->_alignmentMode, @"alignmentMode");
  truncationMode = self->_truncationMode;

  objc_msgSend_encodeInteger_forKey_(text, v7, truncationMode, @"truncationMode");
}

- (void)encodeWithCoder:(id)coder
{
  v35.receiver = self;
  v35.super_class = VFXText;
  [(VFXModel *)&v35 encodeWithCoder:?];
  if (objc_msgSend_isPresentationObject(self, v5, v6, v7))
  {
    v11 = objc_msgSend_modelRef(self, v8, v9, v10);
    objc_msgSend__updateModelFromPresentation_(self, v12, v11, v13);
  }

  objc_msgSend__customEncodingOfVFXText_(self, v8, coder, v10);
  *&v14 = self->_flatness;
  objc_msgSend_encodeFloat_forKey_(coder, v15, @"flatness2", v16, v14);
  *&v17 = self->_chamferRadius;
  objc_msgSend_encodeFloat_forKey_(coder, v18, @"chamferRadius", v19, v17);
  *&v20 = self->_extrusionDepth;
  objc_msgSend_encodeFloat_forKey_(coder, v21, @"extrusionDepth", v22, v20);
  *&v23 = self->_discretizedStraightLineMaxLength;
  objc_msgSend_encodeFloat_forKey_(coder, v24, @"discretizedStraightLineMaxLength", v25, v23);
  objc_msgSend_encodeInteger_forKey_(coder, v26, self->_primitiveType, @"primitiveType");
  objc_msgSend_encodeBool_forKey_(coder, v27, self->_wrapped, @"wrapped");
  objc_msgSend_encodeBool_forKey_(coder, v28, self->_useCustomContainerFrame, @"useCustomContainerFrame");
  v32 = objc_msgSend_valueWithCGRect_(MEMORY[0x1E696B098], v29, v30, v31, self->_customContainerFrame.origin.x, self->_customContainerFrame.origin.y, self->_customContainerFrame.size.width, self->_customContainerFrame.size.height);
  objc_msgSend_encodeObject_forKey_(coder, v33, v32, @"customContainerFrame");
  objc_msgSend_encodeBool_forKey_(coder, v34, self->__wantsSeparateMeshElements, @"_wantsSeparateMeshElements");
}

- (VFXText)initWithCoder:(id)coder
{
  v66.receiver = self;
  v66.super_class = VFXText;
  v7 = [(VFXModel *)&v66 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    objc_msgSend__customDecodingOfVFXText_(v7, v11, coder, v12);
    if (objc_msgSend_containsValueForKey_(coder, v13, @"flatness2", v14))
    {
      objc_msgSend_decodeFloatForKey_(coder, v15, @"flatness2", v16);
    }

    else
    {
      objc_msgSend_decodeFloatForKey_(coder, v15, @"flatness", v16);
      *&v20 = *&v20 * 100.0;
    }

    objc_msgSend_setFlatness_(v7, v17, v18, v19, v20);
    objc_msgSend_decodeFloatForKey_(coder, v21, @"chamferRadius", v22);
    objc_msgSend_setChamferRadius_(v7, v23, v24, v25);
    objc_msgSend_decodeFloatForKey_(coder, v26, @"extrusionDepth", v27);
    objc_msgSend_setExtrusionDepth_(v7, v28, v29, v30);
    objc_msgSend_decodeFloatForKey_(coder, v31, @"discretizedStraightLineMaxLength", v32);
    objc_msgSend_setDiscretizedStraightLineMaxLength_(v7, v33, v34, v35);
    v38 = objc_msgSend_decodeIntegerForKey_(coder, v36, @"primitiveType", v37);
    objc_msgSend_setPrimitiveType_(v7, v39, v38, v40);
    v43 = objc_msgSend_decodeBoolForKey_(coder, v41, @"wrapped", v42);
    objc_msgSend_setWrapped_(v7, v44, v43, v45);
    v7->_useCustomContainerFrame = objc_msgSend_decodeBoolForKey_(coder, v46, @"useCustomContainerFrame", v47);
    v48 = objc_opt_class();
    v50 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v49, v48, @"customContainerFrame");
    objc_msgSend_CGRectValue(v50, v51, v52, v53);
    v7->_customContainerFrame.origin.x = v54;
    v7->_customContainerFrame.origin.y = v55;
    v7->_customContainerFrame.size.width = v56;
    v7->_customContainerFrame.size.height = v57;
    v60 = objc_msgSend_decodeBoolForKey_(coder, v58, @"_wantsSeparateMeshElements", v59);
    objc_msgSend_set_wantsSeparateMeshElements_(v7, v61, v60, v62);
    objc_msgSend_setImmediateMode_(VFXTransaction, v63, v8, v64);
  }

  return v7;
}

- (NSString)swiftString
{
  selfCopy = self;
  sub_1AF44A824();

  v3 = sub_1AFDFCEC8();

  return v3;
}

@end