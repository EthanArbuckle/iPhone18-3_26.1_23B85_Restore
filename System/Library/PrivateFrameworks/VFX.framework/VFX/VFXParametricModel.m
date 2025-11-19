@interface VFXParametricModel
+ (id)capsuleWithCapRadius:(float)a3 height:(float)a4;
+ (id)coneWithTopRadius:(float)a3 bottomRadius:(float)a4 height:(float)a5;
+ (id)cubeWithWidth:(float)a3 height:(float)a4 length:(float)a5 chamferRadius:(float)a6;
+ (id)cylinderWithRadius:(float)a3 height:(float)a4;
+ (id)planeWithWidth:(float)a3 height:(float)a4;
+ (id)pyramidWithWidth:(float)a3 height:(float)a4 length:(float)a5;
+ (id)sphereWithRadius:(float)a3;
+ (id)torusWithRingRadius:(float)a3 pipeRadius:(float)a4;
+ (id)tubeWithInnerRadius:(float)a3 outerRadius:(float)a4 height:(float)a5;
+ (id)unitCube;
- (BOOL)getBoundingBoxMin:(VFXParametricModel *)self max:(SEL)a2;
- (BOOL)getBoundingSphereCenter:(VFXParametricModel *)self radius:(SEL)a2;
- (BOOL)isGeodesic;
- (BOOL)isHemispheric;
- (NSArray)bridgedComponentNames;
- (VFXParametricModel)init;
- (VFXParametricModel)initWithCoder:(id)a3;
- (VFXParametricModel)initWithDefaultMaterial;
- (float)chamferRadius;
- (float)height;
- (float)innerRadius;
- (float)length;
- (float)pipeRadius;
- (float)radialSpan;
- (float)radius;
- (float)topRadius;
- (float)width;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initPresentationParametricModelWithParametricGeometryRef:(__CFXParametricGeometry *)a3;
- (id)initUninitialized;
- (id)mesh;
- (id)presentationModel;
- (int)_sphereType;
- (int64_t)capSegmentCount;
- (int64_t)chamferSegmentCount;
- (int64_t)cornerSegmentCount;
- (int64_t)heightSegmentCount;
- (int64_t)lengthSegmentCount;
- (int64_t)parametricType;
- (int64_t)pipeSegmentCount;
- (int64_t)primitiveType;
- (int64_t)radialSegmentCount;
- (int64_t)segmentCount;
- (int64_t)widthSegmentCount;
- (void)_notifyModelChanged;
- (void)_setupObjCModelFrom:(id)a3;
- (void)_updateModelFromPresentation;
- (void)_updateModelFromPresentation:(__CFXParametricGeometry *)a3;
- (void)_updatePresentationFromModel;
- (void)_updateSphereType;
- (void)encodeWithCoder:(id)a3;
- (void)setCapSegmentCount:(int64_t)a3;
- (void)setChamferRadius:(float)a3;
- (void)setChamferSegmentCount:(int64_t)a3;
- (void)setCornerSegmentCount:(int64_t)a3;
- (void)setGeodesic:(BOOL)a3;
- (void)setHeight:(float)a3;
- (void)setHeightSegmentCount:(int64_t)a3;
- (void)setHemispheric:(BOOL)a3;
- (void)setInnerRadius:(float)a3;
- (void)setLength:(float)a3;
- (void)setLengthSegmentCount:(int64_t)a3;
- (void)setParametricType:(int64_t)a3;
- (void)setPipeRadius:(float)a3;
- (void)setPipeSegmentCount:(int64_t)a3;
- (void)setPrimitiveType:(int64_t)a3;
- (void)setRadialSegmentCount:(int64_t)a3;
- (void)setRadialSpan:(float)a3;
- (void)setRadius:(float)a3;
- (void)setSegmentCount:(int64_t)a3;
- (void)setTopRadius:(float)a3;
- (void)setWidth:(float)a3;
- (void)setWidthSegmentCount:(int64_t)a3;
@end

@implementation VFXParametricModel

- (VFXParametricModel)init
{
  v3 = [VFXParametricModel __createCFObject]_0();
  v16.receiver = self;
  v16.super_class = VFXParametricModel;
  v4 = [(VFXModel *)&v16 initWithModelRef:v3];
  v8 = v4;
  if (v4)
  {
    objc_msgSend__updateModelFromPresentation(v4, v5, v6, v7);
    v12 = objc_msgSend_material(VFXMaterial, v9, v10, v11);
    objc_msgSend_setFirstMaterial_(v8, v13, v12, v14);
  }

  CFRelease(v3);
  return v8;
}

- (VFXParametricModel)initWithDefaultMaterial
{
  v3 = [VFXParametricModel __createCFObject]_0();
  v16.receiver = self;
  v16.super_class = VFXParametricModel;
  v4 = [(VFXModel *)&v16 initWithModelRef:v3];
  v8 = v4;
  if (v4)
  {
    objc_msgSend__updateModelFromPresentation(v4, v5, v6, v7);
    v12 = objc_msgSend_material(VFXMaterial, v9, v10, v11);
    objc_msgSend_setFirstMaterial_(v8, v13, v12, v14);
  }

  CFRelease(v3);
  return v8;
}

- (id)initUninitialized
{
  v3 = sub_1AF1C2020(0, 0);
  v7.receiver = self;
  v7.super_class = VFXParametricModel;
  v4 = [(VFXModel *)&v7 initWithModelRef:v3];
  v5 = v4;
  if (v4)
  {
    v4->_type = -1;
  }

  CFRelease(v3);
  return v5;
}

- (id)initPresentationParametricModelWithParametricGeometryRef:(__CFXParametricGeometry *)a3
{
  v4.receiver = self;
  v4.super_class = VFXParametricModel;
  return [(VFXModel *)&v4 initPresentationModelWithModelRef:a3];
}

- (id)mesh
{
  v8.receiver = self;
  v8.super_class = VFXParametricModel;
  result = [(VFXModel *)&v8 mesh];
  if (!result)
  {
    objc_msgSend__recreateMeshFromPresentation(self, v4, v5, v6);
    v7.receiver = self;
    v7.super_class = VFXParametricModel;
    return [(VFXModel *)&v7 mesh];
  }

  return result;
}

- (id)presentationModel
{
  if (objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self;
  }

  v6 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_modelRef(self, v7, v8, v9);
  inited = objc_msgSend_initPresentationParametricModelWithParametricGeometryRef_(v6, v11, v10, v12);

  return inited;
}

- (id)description
{
  type = self->_type;
  if (type <= 3)
  {
    if (type <= 1)
    {
      if (!type)
      {
        v24 = MEMORY[0x1E696AEC0];
        width = self->_width;
        height = self->_height;
        length = self->_length;
        v50 = objc_msgSend_modelDescription(self, a2, v2, v3);
        return objc_msgSend_stringWithFormat_(v24, v28, @"<Cube [w=%f h=%f l=%f] %@>", v29, *&width, *&height, *&length, v50);
      }

      if (type == 1)
      {
        v10 = MEMORY[0x1E696AEC0];
        radius = self->_radius;
        v43 = objc_msgSend_modelDescription(self, a2, v2, v3);
        return objc_msgSend_stringWithFormat_(v10, v12, @"<Sphere [r=%f]> %@", v13, *&radius, v43);
      }

      return @"unknown parametric type";
    }

    v14 = MEMORY[0x1E696AEC0];
    v15 = self->_width;
    v16 = self->_height;
    if (type == 2)
    {
      v48 = objc_msgSend_modelDescription(self, a2, v2, v3);
      return objc_msgSend_stringWithFormat_(v14, v30, @"<Plane [w=%f h=%f]> %@", v31, *&v15, *&v16, v48);
    }

    else
    {
      v17 = self->_length;
      v49 = objc_msgSend_modelDescription(self, a2, v2, v3);
      return objc_msgSend_stringWithFormat_(v14, v18, @"<pyramid [w=%f h=%f l=%f] %@>", v19, *&v15, *&v16, *&v17, v49);
    }
  }

  else
  {
    if (type > 5)
    {
      switch(type)
      {
        case 6:
          v32 = MEMORY[0x1E696AEC0];
          v33 = self->_height;
          v45 = objc_msgSend_modelDescription(self, a2, v2, v3);
          return objc_msgSend_stringWithFormat_(v32, v34, @"<Tube [h=%f]> %@", v35, *&v33, v45);
        case 7:
          v38 = MEMORY[0x1E696AEC0];
          v39 = self->_height;
          v47 = objc_msgSend_modelDescription(self, a2, v2, v3);
          return objc_msgSend_stringWithFormat_(v38, v40, @"<Capsule [h=%f]> %@", v41, *&v39, v47);
        case 8:
          v5 = MEMORY[0x1E696AEC0];
          v6 = self->_radius;
          v42 = objc_msgSend_modelDescription(self, a2, v2, v3);
          return objc_msgSend_stringWithFormat_(v5, v7, @"<Torus [r=%f]> %@", v8, *&v6, v42);
      }

      return @"unknown parametric type";
    }

    v20 = MEMORY[0x1E696AEC0];
    v21 = self->_height;
    if (type == 4)
    {
      v46 = objc_msgSend_modelDescription(self, a2, v2, v3);
      return objc_msgSend_stringWithFormat_(v20, v36, @"<Cylinder [h=%f]> %@", v37, *&v21, v46);
    }

    else
    {
      v44 = objc_msgSend_modelDescription(self, a2, v2, v3);
      return objc_msgSend_stringWithFormat_(v20, v22, @"<Cone [h=%f]> %@", v23, *&v21, v44);
    }
  }
}

- (void)_updateModelFromPresentation
{
  v9.receiver = self;
  v9.super_class = VFXParametricModel;
  [(VFXModel *)&v9 _updateModelFromPresentation];
  v6 = objc_msgSend_modelRef(self, v3, v4, v5);
  objc_msgSend__updateModelFromPresentation_(self, v7, v6, v8);
}

- (void)_updateModelFromPresentation:(__CFXParametricGeometry *)a3
{
  self->_type = sub_1AF1BE834(a3);
  v5 = sub_1AF1BECB4(a3, 0);
  self->_width = *&v5;
  v6 = sub_1AF1BECB4(a3, 1);
  self->_height = *&v6;
  v7 = sub_1AF1BECB4(a3, 2);
  self->_length = *&v7;
  v8 = sub_1AF1BECB4(a3, 3);
  self->_chamferRadius = *&v8;
  v9 = sub_1AF1BECB4(a3, 4);
  self->_radius = *&v9;
  v10 = sub_1AF1BECB4(a3, 7);
  self->_pipeRadius = *&v10;
  v11 = sub_1AF1BECB4(a3, 5);
  self->_topRadius = *&v11;
  v12 = sub_1AF1BECB4(a3, 6);
  self->_innerRadius = *&v12;
  self->_widthSegmentCount = sub_1AF1C2450(a3, 9);
  self->_heightSegmentCount = sub_1AF1C2450(a3, 10);
  self->_lengthSegmentCount = sub_1AF1C2450(a3, 11);
  self->_chamferSegmentCount = sub_1AF1C2450(a3, 12);
  self->_pipeSegmentCount = sub_1AF1C2450(a3, 15);
  self->_capSegmentCount = sub_1AF1C2450(a3, 14);
  self->_cornerSegmentCount = sub_1AF1C2450(a3, 12);
  self->_segmentCount = sub_1AF1C2DC8(a3);
  self->_radialSegmentCount = sub_1AF1C2B98(a3);
  v13 = sub_1AF1C2450(a3, 19);
  self->_spheregeodesic = v13 == 1;
  self->_spherehemispheric = v13 == 2;
  v14 = sub_1AF1BECB4(a3, 18);
  self->_radialSpan = *&v14;
  self->_primitiveType = sub_1AF1C2450(a3, 17);
}

- (void)_updatePresentationFromModel
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF3113C8;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v4);
  v3.receiver = self;
  v3.super_class = VFXParametricModel;
  [(VFXModel *)&v3 _updateModelFromPresentation];
}

- (void)_setupObjCModelFrom:(id)a3
{
  v139.receiver = self;
  v139.super_class = VFXParametricModel;
  [(VFXModel *)&v139 _setupObjCModelFrom:?];
  objc_msgSend_begin(VFXTransaction, v5, v6, v7);
  objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1, v9);
  v13 = objc_msgSend_primitiveType(a3, v10, v11, v12);
  objc_msgSend_setPrimitiveType_(self, v14, v13, v15);
  objc_msgSend_width(a3, v16, v17, v18);
  objc_msgSend_setWidth_(self, v19, v20, v21);
  objc_msgSend_height(a3, v22, v23, v24);
  objc_msgSend_setHeight_(self, v25, v26, v27);
  objc_msgSend_length(a3, v28, v29, v30);
  objc_msgSend_setLength_(self, v31, v32, v33);
  objc_msgSend_radius(a3, v34, v35, v36);
  objc_msgSend_setRadius_(self, v37, v38, v39);
  objc_msgSend_chamferRadius(a3, v40, v41, v42);
  objc_msgSend_setChamferRadius_(self, v43, v44, v45);
  objc_msgSend_topRadius(a3, v46, v47, v48);
  objc_msgSend_setTopRadius_(self, v49, v50, v51);
  objc_msgSend_pipeRadius(a3, v52, v53, v54);
  objc_msgSend_setPipeRadius_(self, v55, v56, v57);
  objc_msgSend_innerRadius(a3, v58, v59, v60);
  objc_msgSend_setInnerRadius_(self, v61, v62, v63);
  v67 = objc_msgSend_segmentCount(a3, v64, v65, v66);
  objc_msgSend_setSegmentCount_(self, v68, v67, v69);
  v73 = objc_msgSend_widthSegmentCount(a3, v70, v71, v72);
  objc_msgSend_setWidthSegmentCount_(self, v74, v73, v75);
  v79 = objc_msgSend_heightSegmentCount(a3, v76, v77, v78);
  objc_msgSend_setHeightSegmentCount_(self, v80, v79, v81);
  v85 = objc_msgSend_lengthSegmentCount(a3, v82, v83, v84);
  objc_msgSend_setLengthSegmentCount_(self, v86, v85, v87);
  v91 = objc_msgSend_cornerSegmentCount(a3, v88, v89, v90);
  objc_msgSend_setCornerSegmentCount_(self, v92, v91, v93);
  v97 = objc_msgSend_pipeSegmentCount(a3, v94, v95, v96);
  objc_msgSend_setPipeSegmentCount_(self, v98, v97, v99);
  v103 = objc_msgSend_capSegmentCount(a3, v100, v101, v102);
  objc_msgSend_setCapSegmentCount_(self, v104, v103, v105);
  v109 = objc_msgSend_radialSegmentCount(a3, v106, v107, v108);
  objc_msgSend_setRadialSegmentCount_(self, v110, v109, v111);
  objc_msgSend_radialSpan(a3, v112, v113, v114);
  objc_msgSend_setRadialSpan_(self, v115, v116, v117);
  isGeodesic = objc_msgSend_isGeodesic(a3, v118, v119, v120);
  objc_msgSend_setGeodesic_(self, v122, isGeodesic, v123);
  isHemispheric = objc_msgSend_isHemispheric(a3, v124, v125, v126);
  objc_msgSend_setHemispheric_(self, v128, isHemispheric, v129);
  v133 = objc_msgSend_parametricType(a3, v130, v131, v132);
  objc_msgSend_setParametricType_(self, v134, v133, v135);
  objc_msgSend_commitImmediate(VFXTransaction, v136, v137, v138);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v37[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(objc_opt_class());
  inited = objc_msgSend_initUninitialized(v4, v5, v6, v7);
  if (objc_msgSend_behaviorGraph(self, v9, v10, v11))
  {
    v15 = objc_msgSend_behaviorGraph(self, v12, v13, v14);
    v19 = objc_msgSend_copy(v15, v16, v17, v18);
    objc_msgSend_setBehaviorGraph_(inited, v20, v19, v21);
    v25 = objc_msgSend_entityObject(v19, v22, v23, v24);
    v36 = objc_msgSend_identifier(self, v26, v27, v28);
    v37[0] = inited;
    v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v29, v37, &v36, 1);
    objc_msgSend_updateVFXObjectReferences_(v25, v31, v30, v32);
  }

  objc_msgSend__setupObjCModelFrom_(inited, v12, self, v14);
  objc_msgSend__copyAttributesTo_(self, v33, inited, v34);
  return inited;
}

- (BOOL)getBoundingBoxMin:(VFXParametricModel *)self max:(SEL)a2
{
  v4 = v3;
  v5 = v2;
  DWORD2(v26) = 0;
  *&v26 = 0;
  DWORD2(v25) = 0;
  *&v25 = 0;
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    if (objc_msgSend__hasFixedBoundingBoxExtrema(self, v7, v8, v9))
    {
      v24.receiver = self;
      v24.super_class = VFXParametricModel;
      return [(VFXModel *)&v24 getBoundingBoxMin:v5 max:v4];
    }

    type = self->_type;
    v19 = 1;
    if (type <= 3)
    {
      if (type > 1)
      {
        v20.i32[0] = LODWORD(self->_width);
        if (type == 2)
        {
          sub_1AF1BEC3C(&v26, &v25, *v20.i8, self->_height);
        }

        else
        {
          sub_1AF1BFB60(&v26, &v25, v20, self->_height, self->_length);
        }
      }

      else if (type)
      {
        if (type == 1)
        {
          v20.i32[0] = LODWORD(self->_radius);
          sub_1AF1C0344(&v26, &v25, *v20.i64, v21);
        }
      }

      else
      {
        v20.i32[0] = LODWORD(self->_width);
        sub_1AF1BF164(&v26, &v25, *v20.i8, self->_height, self->_length);
      }

      goto LABEL_17;
    }

    if (type <= 5)
    {
      if (type != 4)
      {
        v20.i32[0] = LODWORD(self->_topRadius);
        sub_1AF1C0C40(&v26, &v25, *v20.i8, self->_radius, self->_height);
        goto LABEL_17;
      }
    }

    else if (type != 6 && type != 7)
    {
      if (type == 8)
      {
        sub_1AF1C1B7C(&v26, &v25, self->_radius, self->_pipeRadius);
      }

      goto LABEL_17;
    }

    sub_1AF1C0710(&v26, &v25, self->_radius, self->_height);
    goto LABEL_17;
  }

  v10 = objc_msgSend_worldRef(self, v7, v8, v9);
  v14 = v10;
  if (v10)
  {
    sub_1AF1CEA20(v10);
  }

  if (objc_msgSend_modelRef(self, v11, v12, v13))
  {
    v18 = objc_msgSend_modelRef(self, v15, v16, v17);
    v19 = sub_1AF1BED40(v18, &v26, &v25);
    if (!v14)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v19 = 0;
  if (v14)
  {
LABEL_16:
    sub_1AF1CEA9C(v14);
  }

LABEL_17:
  if (v5)
  {
    *v5 = v26;
  }

  if (v4)
  {
    *v4 = v25;
  }

  return v19;
}

- (BOOL)getBoundingSphereCenter:(VFXParametricModel *)self radius:(SEL)a2
{
  v4 = v3;
  v5 = v2;
  v24 = 0uLL;
  if (objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    v12 = objc_msgSend_worldRef(self, v7, v8, v9);
    v16 = v12;
    if (v12)
    {
      sub_1AF1CEA20(v12);
    }

    if (objc_msgSend_modelRef(self, v13, v14, v15) && (v20 = objc_msgSend_modelRef(self, v17, v18, v19), sub_1AF1BEDA8(v20, &v24)))
    {
      if (v5)
      {
        *v5 = v24;
      }

      if (v4)
      {
        *v4 = v24.i32[3];
      }

      v21 = 1;
      if (!v16)
      {
        return v21;
      }
    }

    else
    {
      v21 = 0;
      if (!v16)
      {
        return v21;
      }
    }

    sub_1AF1CEA9C(v16);
    return v21;
  }

  v21 = 0;
  type = self->_type;
  if (type <= 3)
  {
    if (type > 1)
    {
      if (type == 2)
      {
        if (!sub_1AF1BECDC(&v24, self->_width, self->_height))
        {
          return 0;
        }
      }

      else
      {
        v10.i32[0] = LODWORD(self->_width);
        *&v11 = self->_height;
        if (!sub_1AF1BFC5C(&v24, v10, v11, self->_length))
        {
          return 0;
        }
      }
    }

    else if (type)
    {
      if (type != 1)
      {
        return v21;
      }

      if (!sub_1AF1C03B0(&v24, self->_radius))
      {
        return 0;
      }
    }

    else if (!sub_1AF1BF200(&v24, self->_width, self->_height, self->_length))
    {
      return 0;
    }
  }

  else if (type <= 5)
  {
    if (type == 4)
    {
      if (!sub_1AF1C082C(&v24, self->_radius, self->_height))
      {
        return 0;
      }
    }

    else if (!sub_1AF1C0D6C(&v24, self->_topRadius, self->_radius, self->_height))
    {
      return 0;
    }
  }

  else
  {
    switch(type)
    {
      case 6:
        if (!sub_1AF1C082C(&v24, self->_radius, self->_height))
        {
          return 0;
        }

        break;
      case 7:
        v10.i32[0] = LODWORD(self->_radius);
        if (!sub_1AF1C1710(&v24, *v10.i64, self->_height))
        {
          return 0;
        }

        break;
      case 8:
        if (!sub_1AF1C1C04(&v24, self->_radius, self->_pipeRadius))
        {
          return 0;
        }

        break;
      default:
        return v21;
    }
  }

  if (v5)
  {
    *v5 = v24;
  }

  if (v4)
  {
    *v4 = v24.i32[3];
  }

  return 1;
}

- (void)_notifyModelChanged
{
  objc_msgSend__meshForParametricModelHasChanged(self, a2, v2, v3);
  if (sub_1AF28A2DC())
  {
    v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6, v7);

    objc_msgSend_postNotificationName_object_(v8, v9, @"kCFXNotificationParametricModelTypeDidChange", self);
  }
}

- (void)setParametricType:(int64_t)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, a3, v3) & 1) != 0 || self->_type != a3)
  {
    self->_type = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF312018;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v10);
    objc_msgSend__notifyModelChanged(self, v7, v8, v9);
  }
}

- (int64_t)parametricType
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_type;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1BE834(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (float)width
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_width;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1BF984(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setWidth:(float)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3, v4) & 1) != 0 || self->_width != a3)
  {
    self->_width = a3;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF312208;
    v11[3] = &unk_1E7A7E270;
    v11[4] = self;
    v12 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v7, self, @"width", v11);
    objc_msgSend__notifyModelChanged(self, v8, v9, v10);
  }
}

- (float)height
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_height;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1BF9CC(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setHeight:(float)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3, v4) & 1) != 0 || self->_height != a3)
  {
    self->_height = a3;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF312380;
    v11[3] = &unk_1E7A7E270;
    v11[4] = self;
    v12 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v7, self, @"height", v11);
    objc_msgSend__notifyModelChanged(self, v8, v9, v10);
  }
}

- (float)length
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_length;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1BFA14(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setLength:(float)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3, v4) & 1) != 0 || self->_length != a3)
  {
    self->_length = a3;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF3124F8;
    v11[3] = &unk_1E7A7E270;
    v11[4] = self;
    v12 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v7, self, @"length", v11);
    objc_msgSend__notifyModelChanged(self, v8, v9, v10);
  }
}

- (float)radius
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_radius;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C07E4(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setRadius:(float)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3, v4) & 1) != 0 || self->_radius != a3)
  {
    self->_radius = a3;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF312670;
    v11[3] = &unk_1E7A7E270;
    v11[4] = self;
    v12 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v7, self, @"radius", v11);
    objc_msgSend__notifyModelChanged(self, v8, v9, v10);
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
  v14 = sub_1AF1BF028(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setChamferRadius:(float)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3, v4) & 1) != 0 || self->_chamferRadius != a3)
  {
    self->_chamferRadius = a3;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF3127F0;
    v11[3] = &unk_1E7A7E270;
    v11[4] = self;
    v12 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v7, self, @"chamferRadius", v11);
    objc_msgSend__notifyModelChanged(self, v8, v9, v10);
  }
}

- (float)topRadius
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_topRadius;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C0D24(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setTopRadius:(float)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3, v4) & 1) != 0 || self->_topRadius != a3)
  {
    self->_topRadius = a3;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF312968;
    v11[3] = &unk_1E7A7E270;
    v11[4] = self;
    v12 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v7, self, @"topRadius", v11);
    objc_msgSend__notifyModelChanged(self, v8, v9, v10);
  }
}

- (float)innerRadius
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_innerRadius;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C0D24(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setInnerRadius:(float)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3, v4) & 1) != 0 || self->_innerRadius != a3)
  {
    self->_innerRadius = a3;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF312AE0;
    v11[3] = &unk_1E7A7E270;
    v11[4] = self;
    v12 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v7, self, @"innerRadius", v11);
    objc_msgSend__notifyModelChanged(self, v8, v9, v10);
  }
}

- (float)pipeRadius
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_pipeRadius;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C1F08(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setPipeRadius:(float)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3, v4) & 1) != 0 || self->_pipeRadius != a3)
  {
    self->_pipeRadius = a3;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF312C58;
    v11[3] = &unk_1E7A7E270;
    v11[4] = self;
    v12 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v7, self, @"pipeRadius", v11);
    objc_msgSend__notifyModelChanged(self, v8, v9, v10);
  }
}

- (int64_t)segmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_segmentCount;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C2DC8(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setSegmentCount:(int64_t)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, a3, v3) & 1) != 0 || self->_segmentCount != a3)
  {
    self->_segmentCount = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF312DBC;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"segmentCount", v10);
    objc_msgSend__notifyModelChanged(self, v7, v8, v9);
  }
}

- (int64_t)widthSegmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_widthSegmentCount;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C2A34(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setWidthSegmentCount:(int64_t)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, a3, v3) & 1) != 0 || self->_widthSegmentCount != a3)
  {
    self->_widthSegmentCount = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF312F20;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"widthSegmentCount", v10);
    objc_msgSend__notifyModelChanged(self, v7, v8, v9);
  }
}

- (int64_t)heightSegmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_heightSegmentCount;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C2754(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setHeightSegmentCount:(int64_t)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, a3, v3) & 1) != 0 || self->_heightSegmentCount != a3)
  {
    self->_heightSegmentCount = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF313084;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"heightSegmentCount", v10);
    objc_msgSend__notifyModelChanged(self, v7, v8, v9);
  }
}

- (int64_t)lengthSegmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_lengthSegmentCount;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C286C(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setLengthSegmentCount:(int64_t)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, a3, v3) & 1) != 0 || self->_lengthSegmentCount != a3)
  {
    self->_lengthSegmentCount = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF3131E8;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"lengthSegmentCount", v10);
    objc_msgSend__notifyModelChanged(self, v7, v8, v9);
  }
}

- (int64_t)chamferSegmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_chamferSegmentCount;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C263C(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setChamferSegmentCount:(int64_t)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, a3, v3) & 1) != 0 || self->_chamferSegmentCount != a3)
  {
    self->_chamferSegmentCount = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF31334C;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"chamferSegmentCount", v10);
    objc_msgSend__notifyModelChanged(self, v7, v8, v9);
  }
}

- (int64_t)cornerSegmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_cornerSegmentCount;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C263C(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setCornerSegmentCount:(int64_t)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, a3, v3) & 1) != 0 || self->_cornerSegmentCount != a3)
  {
    self->_cornerSegmentCount = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF3134B0;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"cornerSegmentCount", v10);
    objc_msgSend__notifyModelChanged(self, v7, v8, v9);
  }
}

- (int64_t)pipeSegmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_pipeSegmentCount;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C2EE0(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setPipeSegmentCount:(int64_t)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, a3, v3) & 1) != 0 || self->_pipeSegmentCount != a3)
  {
    self->_pipeSegmentCount = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF313614;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"pipeSegmentCount", v10);
    objc_msgSend__notifyModelChanged(self, v7, v8, v9);
  }
}

- (int64_t)capSegmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_capSegmentCount;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C2AE4(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setCapSegmentCount:(int64_t)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, a3, v3) & 1) != 0 || self->_capSegmentCount != a3)
  {
    self->_capSegmentCount = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF313778;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"capSegmentCount", v10);
    objc_msgSend__notifyModelChanged(self, v7, v8, v9);
  }
}

- (int64_t)radialSegmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_radialSegmentCount;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C2B98(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setRadialSegmentCount:(int64_t)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, a3, v3) & 1) != 0 || self->_radialSegmentCount != a3)
  {
    self->_radialSegmentCount = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF3138DC;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"radialSegmentCount", v10);
    objc_msgSend__notifyModelChanged(self, v7, v8, v9);
  }
}

- (float)radialSpan
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2, v3))
  {
    return self->_radialSpan;
  }

  v8 = objc_msgSend_worldRef(self, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8);
  }

  v13 = objc_msgSend_modelRef(self, v9, v10, v11);
  v14 = sub_1AF1C2CB0(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setRadialSpan:(float)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3, v4) & 1) != 0 || self->_radialSpan != a3)
  {
    self->_radialSpan = a3;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF313A54;
    v11[3] = &unk_1E7A7E270;
    v11[4] = self;
    v12 = a3;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v7, self, @"radialSpan", v11);
    objc_msgSend__notifyModelChanged(self, v8, v9, v10);
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
  v14 = sub_1AF1C291C(v13);
  if (v12)
  {
    sub_1AF1CEA9C(v12);
  }

  return v14;
}

- (void)setPrimitiveType:(int64_t)a3
{
  if ((objc_msgSend_isPresentationObject(self, a2, a3, v3) & 1) != 0 || self->_primitiveType != a3)
  {
    self->_primitiveType = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF313BB0;
    v10[3] = &unk_1E7A7E248;
    v10[4] = self;
    v10[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v10);
    objc_msgSend__notifyModelChanged(self, v7, v8, v9);
  }
}

- (BOOL)isGeodesic
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
    v14 = sub_1AF1C2528(v13);
    if (v12)
    {
      sub_1AF1CEA9C(v12);
    }
  }

  else
  {
    return self->_spheregeodesic;
  }

  return v14;
}

- (void)setGeodesic:(BOOL)a3
{
  v4 = a3;
  if ((objc_msgSend_isPresentationObject(self, a2, a3, v3) & 1) != 0 || self->_spheregeodesic != v4)
  {
    self->_spheregeodesic = v4;
    if (v4)
    {
      objc_msgSend_willChangeValueForKey_(self, v6, @"hemispheric", v8);
      self->_spherehemispheric = 0;
      objc_msgSend_didChangeValueForKey_(self, v9, @"hemispheric", v10);
    }

    objc_msgSend__updateSphereType(self, v6, v7, v8);

    objc_msgSend__notifyModelChanged(self, v11, v12, v13);
  }
}

- (BOOL)isHemispheric
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
    v14 = sub_1AF1C2470(v13);
    if (v12)
    {
      sub_1AF1CEA9C(v12);
    }
  }

  else
  {
    return self->_spherehemispheric;
  }

  return v14;
}

- (int)_sphereType
{
  if (self->_spherehemispheric)
  {
    return 2;
  }

  else
  {
    return self->_spheregeodesic;
  }
}

- (void)_updateSphereType
{
  v5 = objc_msgSend__sphereType(self, a2, v2, v3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF313E24;
  v7[3] = &unk_1E7A7E270;
  v8 = v5;
  v7[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
}

- (void)setHemispheric:(BOOL)a3
{
  v4 = a3;
  if ((objc_msgSend_isPresentationObject(self, a2, a3, v3) & 1) != 0 || self->_spherehemispheric != v4)
  {
    self->_spherehemispheric = v4;
    if (v4)
    {
      objc_msgSend_willChangeValueForKey_(self, v6, @"geodesic", v8);
      self->_spheregeodesic = 0;
      objc_msgSend_didChangeValueForKey_(self, v9, @"geodesic", v10);
    }

    objc_msgSend__updateSphereType(self, v6, v7, v8);

    objc_msgSend__notifyModelChanged(self, v11, v12, v13);
  }
}

+ (id)planeWithWidth:(float)a3 height:(float)a4
{
  v6 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initWithDefaultMaterial(v6, v7, v8, v9);
  objc_msgSend_setParametricType_(v10, v11, 2, v12);
  *&v13 = a3;
  objc_msgSend_setWidth_(v10, v14, v15, v16, v13);
  *&v17 = a4;
  objc_msgSend_setHeight_(v10, v18, v19, v20, v17);

  return v10;
}

+ (id)cubeWithWidth:(float)a3 height:(float)a4 length:(float)a5 chamferRadius:(float)a6
{
  v10 = objc_alloc(objc_opt_class());
  v14 = objc_msgSend_initWithDefaultMaterial(v10, v11, v12, v13);
  objc_msgSend_setParametricType_(v14, v15, 0, v16);
  *&v17 = a3;
  objc_msgSend_setWidth_(v14, v18, v19, v20, v17);
  *&v21 = a4;
  objc_msgSend_setHeight_(v14, v22, v23, v24, v21);
  *&v25 = a5;
  objc_msgSend_setLength_(v14, v26, v27, v28, v25);
  *&v29 = a6;
  objc_msgSend_setChamferRadius_(v14, v30, v31, v32, v29);

  return v14;
}

+ (id)unitCube
{
  LODWORD(v4) = 1.0;
  LODWORD(v5) = 1.0;
  LODWORD(v6) = 1.0;
  return objc_msgSend_cubeWithWidth_height_length_chamferRadius_(a1, a2, v2, v3, v4, v5, v6, 0.0);
}

+ (id)pyramidWithWidth:(float)a3 height:(float)a4 length:(float)a5
{
  v8 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_initWithDefaultMaterial(v8, v9, v10, v11);
  objc_msgSend_setParametricType_(v12, v13, 3, v14);
  *&v15 = a3;
  objc_msgSend_setWidth_(v12, v16, v17, v18, v15);
  *&v19 = a4;
  objc_msgSend_setHeight_(v12, v20, v21, v22, v19);
  *&v23 = a5;
  objc_msgSend_setLength_(v12, v24, v25, v26, v23);

  return v12;
}

+ (id)cylinderWithRadius:(float)a3 height:(float)a4
{
  v6 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initWithDefaultMaterial(v6, v7, v8, v9);
  objc_msgSend_setParametricType_(v10, v11, 4, v12);
  *&v13 = a3;
  objc_msgSend_setRadius_(v10, v14, v15, v16, v13);
  *&v17 = a4;
  objc_msgSend_setHeight_(v10, v18, v19, v20, v17);

  return v10;
}

+ (id)sphereWithRadius:(float)a3
{
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithDefaultMaterial(v4, v5, v6, v7);
  objc_msgSend_setParametricType_(v8, v9, 1, v10);
  *&v11 = a3;
  objc_msgSend_setRadius_(v8, v12, v13, v14, v11);

  return v8;
}

+ (id)coneWithTopRadius:(float)a3 bottomRadius:(float)a4 height:(float)a5
{
  v8 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_initWithDefaultMaterial(v8, v9, v10, v11);
  objc_msgSend_setParametricType_(v12, v13, 5, v14);
  *&v15 = a3;
  objc_msgSend_setTopRadius_(v12, v16, v17, v18, v15);
  *&v19 = a4;
  objc_msgSend_setRadius_(v12, v20, v21, v22, v19);
  *&v23 = a5;
  objc_msgSend_setHeight_(v12, v24, v25, v26, v23);

  return v12;
}

+ (id)tubeWithInnerRadius:(float)a3 outerRadius:(float)a4 height:(float)a5
{
  v8 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_initWithDefaultMaterial(v8, v9, v10, v11);
  objc_msgSend_setParametricType_(v12, v13, 6, v14);
  *&v15 = a3;
  objc_msgSend_setInnerRadius_(v12, v16, v17, v18, v15);
  *&v19 = a4;
  objc_msgSend_setRadius_(v12, v20, v21, v22, v19);
  *&v23 = a5;
  objc_msgSend_setHeight_(v12, v24, v25, v26, v23);

  return v12;
}

+ (id)capsuleWithCapRadius:(float)a3 height:(float)a4
{
  v6 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initWithDefaultMaterial(v6, v7, v8, v9);
  objc_msgSend_setParametricType_(v10, v11, 7, v12);
  *&v13 = a3;
  objc_msgSend_setRadius_(v10, v14, v15, v16, v13);
  *&v17 = a4;
  objc_msgSend_setHeight_(v10, v18, v19, v20, v17);

  return v10;
}

+ (id)torusWithRingRadius:(float)a3 pipeRadius:(float)a4
{
  v6 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initWithDefaultMaterial(v6, v7, v8, v9);
  objc_msgSend_setParametricType_(v10, v11, 8, v12);
  *&v13 = a3;
  objc_msgSend_setRadius_(v10, v14, v15, v16, v13);
  *&v17 = a4;
  objc_msgSend_setPipeRadius_(v10, v18, v19, v20, v17);

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v52.receiver = self;
  v52.super_class = VFXParametricModel;
  [(VFXModel *)&v52 encodeWithCoder:?];
  if (objc_msgSend_isPresentationObject(self, v5, v6, v7))
  {
    v11 = objc_msgSend_modelRef(self, v8, v9, v10);
    objc_msgSend__updateModelFromPresentation_(self, v12, v11, v13);
  }

  objc_msgSend_encodeInteger_forKey_(a3, v8, self->_type, @"parametricType");
  objc_msgSend_encodeDouble_forKey_(a3, v14, @"width", v15, self->_width);
  objc_msgSend_encodeDouble_forKey_(a3, v16, @"height", v17, self->_height);
  objc_msgSend_encodeDouble_forKey_(a3, v18, @"length", v19, self->_length);
  objc_msgSend_encodeDouble_forKey_(a3, v20, @"radius", v21, self->_radius);
  objc_msgSend_encodeDouble_forKey_(a3, v22, @"innerRadius", v23, self->_innerRadius);
  objc_msgSend_encodeDouble_forKey_(a3, v24, @"chamferRadius", v25, self->_chamferRadius);
  objc_msgSend_encodeDouble_forKey_(a3, v26, @"topRadius", v27, self->_topRadius);
  objc_msgSend_encodeDouble_forKey_(a3, v28, @"pipeRadius", v29, self->_pipeRadius);
  objc_msgSend_encodeInteger_forKey_(a3, v30, self->_widthSegmentCount, @"widthSegmentCount");
  objc_msgSend_encodeInteger_forKey_(a3, v31, self->_heightSegmentCount, @"heightSegmentCount");
  objc_msgSend_encodeInteger_forKey_(a3, v32, self->_lengthSegmentCount, @"lengthSegmentCount");
  objc_msgSend_encodeInteger_forKey_(a3, v33, self->_segmentCount, @"segmentCount");
  objc_msgSend_encodeInteger_forKey_(a3, v34, self->_chamferSegmentCount, @"chamferSegmentCount");
  objc_msgSend_encodeInteger_forKey_(a3, v35, self->_cornerSegmentCount, @"cornerSegmentCount");
  objc_msgSend_encodeInteger_forKey_(a3, v36, self->_pipeSegmentCount, @"pipeSegmentCount");
  objc_msgSend_encodeInteger_forKey_(a3, v37, self->_capSegmentCount, @"capSegmentCount");
  objc_msgSend_encodeInteger_forKey_(a3, v38, self->_radialSegmentCount, @"radialSegmentCount");
  objc_msgSend_encodeDouble_forKey_(a3, v39, @"radialSpan", v40, self->_radialSpan);
  isGeodesic = objc_msgSend_isGeodesic(self, v41, v42, v43);
  objc_msgSend_encodeBool_forKey_(a3, v45, isGeodesic, @"geodesic");
  isHemispheric = objc_msgSend_isHemispheric(self, v46, v47, v48);
  objc_msgSend_encodeBool_forKey_(a3, v50, isHemispheric, @"hemispheric");
  objc_msgSend_encodeInteger_forKey_(a3, v51, self->_primitiveType, @"primitiveType");
}

- (VFXParametricModel)initWithCoder:(id)a3
{
  v133.receiver = self;
  v133.super_class = VFXParametricModel;
  v7 = [(VFXModel *)&v133 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v13 = objc_msgSend_decodeIntegerForKey_(a3, v11, @"parametricType", v12);
    objc_msgSend_setParametricType_(v7, v14, v13, v15);
    objc_msgSend_decodeDoubleForKey_(a3, v16, @"width", v17);
    *&v18 = v18;
    objc_msgSend_setWidth_(v7, v19, v20, v21, v18);
    objc_msgSend_decodeDoubleForKey_(a3, v22, @"height", v23);
    *&v24 = v24;
    objc_msgSend_setHeight_(v7, v25, v26, v27, v24);
    objc_msgSend_decodeDoubleForKey_(a3, v28, @"length", v29);
    *&v30 = v30;
    objc_msgSend_setLength_(v7, v31, v32, v33, v30);
    objc_msgSend_decodeDoubleForKey_(a3, v34, @"radius", v35);
    *&v36 = v36;
    objc_msgSend_setRadius_(v7, v37, v38, v39, v36);
    objc_msgSend_decodeDoubleForKey_(a3, v40, @"innerRadius", v41);
    *&v42 = v42;
    objc_msgSend_setInnerRadius_(v7, v43, v44, v45, v42);
    objc_msgSend_decodeDoubleForKey_(a3, v46, @"chamferRadius", v47);
    *&v48 = v48;
    objc_msgSend_setChamferRadius_(v7, v49, v50, v51, v48);
    objc_msgSend_decodeDoubleForKey_(a3, v52, @"topRadius", v53);
    *&v54 = v54;
    objc_msgSend_setTopRadius_(v7, v55, v56, v57, v54);
    objc_msgSend_decodeDoubleForKey_(a3, v58, @"pipeRadius", v59);
    *&v60 = v60;
    objc_msgSend_setPipeRadius_(v7, v61, v62, v63, v60);
    v66 = objc_msgSend_decodeIntegerForKey_(a3, v64, @"segmentCount", v65);
    objc_msgSend_setSegmentCount_(v7, v67, v66, v68);
    v71 = objc_msgSend_decodeIntegerForKey_(a3, v69, @"chamferSegmentCount", v70);
    objc_msgSend_setChamferSegmentCount_(v7, v72, v71, v73);
    v76 = objc_msgSend_decodeIntegerForKey_(a3, v74, @"widthSegmentCount", v75);
    objc_msgSend_setWidthSegmentCount_(v7, v77, v76, v78);
    v81 = objc_msgSend_decodeIntegerForKey_(a3, v79, @"heightSegmentCount", v80);
    objc_msgSend_setHeightSegmentCount_(v7, v82, v81, v83);
    v86 = objc_msgSend_decodeIntegerForKey_(a3, v84, @"lengthSegmentCount", v85);
    objc_msgSend_setLengthSegmentCount_(v7, v87, v86, v88);
    v91 = objc_msgSend_decodeIntegerForKey_(a3, v89, @"cornerSegmentCount", v90);
    objc_msgSend_setCornerSegmentCount_(v7, v92, v91, v93);
    v96 = objc_msgSend_decodeIntegerForKey_(a3, v94, @"pipeSegmentCount", v95);
    objc_msgSend_setPipeSegmentCount_(v7, v97, v96, v98);
    v101 = objc_msgSend_decodeIntegerForKey_(a3, v99, @"capSegmentCount", v100);
    objc_msgSend_setCapSegmentCount_(v7, v102, v101, v103);
    v106 = objc_msgSend_decodeIntegerForKey_(a3, v104, @"radialSegmentCount", v105);
    objc_msgSend_setRadialSegmentCount_(v7, v107, v106, v108);
    objc_msgSend_decodeDoubleForKey_(a3, v109, @"radialSpan", v110);
    *&v111 = v111;
    objc_msgSend_setRadialSpan_(v7, v112, v113, v114, v111);
    v117 = objc_msgSend_decodeBoolForKey_(a3, v115, @"geodesic", v116);
    objc_msgSend_setGeodesic_(v7, v118, v117, v119);
    v122 = objc_msgSend_decodeBoolForKey_(a3, v120, @"hemispheric", v121);
    objc_msgSend_setHemispheric_(v7, v123, v122, v124);
    v127 = objc_msgSend_decodeIntegerForKey_(a3, v125, @"primitiveType", v126);
    objc_msgSend_setPrimitiveType_(v7, v128, v127, v129);
    objc_msgSend_setImmediateMode_(VFXTransaction, v130, v8, v131);
  }

  return v7;
}

- (NSArray)bridgedComponentNames
{
  v2 = sub_1AFDFD3F8();

  return v2;
}

@end