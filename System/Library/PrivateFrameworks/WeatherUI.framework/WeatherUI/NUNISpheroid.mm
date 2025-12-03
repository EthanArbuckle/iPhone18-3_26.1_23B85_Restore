@interface NUNISpheroid
- (CLLocationCoordinate2D)centerCoordinate;
- (CLLocationCoordinate2D)homeCoordinate;
- (NUNIScene)scene;
- (NUNISpheroid)initWithScene:(id)scene parent:(id)parent type:(unint64_t)type;
- (double)animatedFloatForKey:(uint64_t)key;
- (void)_updateCamera;
- (void)_updatePositionFromAngle;
- (void)date:(NUNISpheroid *)self toCameraPosition:(SEL)position toCameraTarget:(id)target;
- (void)date:(id)date toEquatorRotation:(float *)rotation toAngle:(float *)angle toLight:toDistance:toRadius:;
- (void)setAnimatedFloat:(unint64_t)float forKey:;
- (void)setCenterCoordinate:(CLLocationCoordinate2D)coordinate animated:(BOOL)animated;
- (void)setHomeCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)updateSunLocationForDate:(id)date;
@end

@implementation NUNISpheroid

- (NUNISpheroid)initWithScene:(id)scene parent:(id)parent type:(unint64_t)type
{
  sceneCopy = scene;
  parentCopy = parent;
  v27.receiver = self;
  v27.super_class = NUNISpheroid;
  v10 = [(NUNISpheroid *)&v27 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_parent, parent);
    v12 = objc_storeWeak(&v11->_scene, sceneCopy);
    v11->_structure.type = type;
    *&v11->_anon_30[88] = 1;
    *&v11->_anon_30[56] = 1065353216;
    *&v11->_anon_30[32] = 0;
    *&v11->_anon_30[40] = 0;
    v11->_structure.distanceScale = 1.0;
    __asm { FMOV            V0.2S, #1.0 }

    *&v11->_anon_30[16] = _D0;
    v11->_anon_30[120] = 1;
    *v11->_anon_30 = xmmword_1BCE22FD0;
    v18 = v12;
    collectionType = [sceneCopy collectionType];

    *&v11->_anon_30[52] = _NUNISphereoidComputeRadius(type, collectionType);
    if (((1 << type) & 0xFBF3FE) != 0)
    {
      typeCopy = type;
      if (((1 << type) & 0xFFC000) != 0)
      {
        typeCopy = type - 14;
        *&v11->_anon_30[88] = 1;
        *&v11->_anon_30[96] = type - 13;
        v11->_anon_30[121] = 1;
        *&v11->_anon_30[16] = 0;
      }

      v21 = 7;
      if (((1 << type) & 0x3000) == 0)
      {
        v21 = typeCopy;
      }

      if ((v21 & 0xFFFFFFFFFFFFFFFBLL) != 0)
      {
        v22 = s_distance[v21];
        if (collectionType)
        {
          v23 = (v22 * 10.0) + 3.0;
          v24 = 48.0;
        }

        else
        {
          v23 = (v22 * 18.0) + 4.0;
          v24 = 156.0;
        }

        v25 = (v23 / v24) * 0.5;
      }

      else
      {
        v25 = 0.0;
      }

      v11->_structure.distance = v25;
      if (type > 11)
      {
        if (type - 12 < 2)
        {
          *&v11->_anon_30[88] = 1;
          *&v11->_anon_30[96] = type - 1;
        }
      }

      else if (type)
      {
        if (type == 3)
        {
          *&v11->_anon_30[88] = 0;
        }

        else if (type == 4)
        {
          *&v11->_anon_30[88] = 2;
        }
      }

      else
      {
        *&v11->_anon_30[88] = vdupq_n_s64(1uLL);
        v11->_anon_30[121] = 1;
        v11->_structure.distance = 0.0;
      }
    }

    else
    {
      if (type != 11 && type != 10)
      {
        [NUNISpheroid initWithScene:parent:type:];
      }

      *&v11->_anon_30[64] = xmmword_1BCE3AE30;
      *&v11->_anon_30[88] = xmmword_1BCE3AE40;
    }
  }

  return v11;
}

- (void)_updatePositionFromAngle
{
  parent = self->_parent;
  if (parent)
  {
    [(NUNISpheroid *)parent position];
  }

  else
  {
    v4 = xmmword_1BCE3AE30;
  }

  v7 = v4;
  v5 = vmul_n_f32(__sincosf_stret(self->_structure.angle), self->_structure.distance * self->_structure.distanceScale);
  LODWORD(v6) = v5.i32[1];
  *(&v6 + 1) = -v5.f32[0];
  *&self->_anon_30[64] = vaddq_f32(v7, v6);

  [(NUNISpheroid *)self _updateCamera];
}

- (void)date:(NUNISpheroid *)self toCameraPosition:(SEL)position toCameraTarget:(id)target
{
  v5 = v4;
  v6 = v3;
  v20 = 0.0;
  v19 = 0.0;
  v17 = 0;
  v18 = 0;
  targetCopy = target;
  [(NUNISpheroid *)self date:targetCopy toEquatorRotation:&v20 toAngle:&v19 toLight:&v17 toDistance:&v18 + 4 toRadius:&v18];
  *v9.i64 = NUNIComputeSpheroidParentPosition(self->_parent, targetCopy);
  v15 = v9;

  v10 = vmul_n_f32(__sincosf_stret(v19), *(&v18 + 1));
  LODWORD(v11) = v10.i32[1];
  *(&v11 + 1) = -v10.f32[0];
  v16 = vaddq_f32(v15, v11);
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  structure = [WeakRetained structure];

  v14 = NUNIComputeCameraView(self->_structure.type, *&vadd_f32(*&self->_anon_30[104], structure[13]), v20);
  *v6 = vmlaq_n_f32(v16, vmulq_n_f32(vnegq_f32(v14), *&v18), structure[6].f32[0]);
  *v5 = v16;
}

- (void)date:(id)date toEquatorRotation:(float *)rotation toAngle:(float *)angle toLight:toDistance:toRadius:
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  dateCopy = date;
  *v9 = 0.0;
  *angle = 0.0;
  *rotation = 0.0;
  *v10 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  collectionType = [WeakRetained collectionType];

  type = self->_structure.type;
  *v8 = _NUNISphereoidComputeRadius(type, collectionType);
  if (((1 << type) & 0xFBF3FE) != 0)
  {
    v18 = type - 14;
    if (((1 << type) & 0xFFC000) == 0)
    {
      v18 = type;
    }

    if (((1 << type) & 0x3000) != 0)
    {
      v19 = 7;
    }

    else
    {
      v19 = v18;
    }

    v20 = 0.0;
    if (v19)
    {
      v21 = [objc_alloc(MEMORY[0x1E69A2590]) initWithDate:dateCopy body:v19];
      [v21 longitude];
      *&v22 = v22;
      *angle = (*&v22 * 3.1416) / 180.0;

      if ((v19 & 0xFFFFFFFFFFFFFFFBLL) != 0)
      {
        v23 = s_distance[v19];
        if (collectionType)
        {
          v24 = (v23 * 10.0) + 3.0;
          v25 = 48.0;
        }

        else
        {
          v24 = (v23 * 18.0) + 4.0;
          v25 = 156.0;
        }

        v20 = (v24 / v25) * 0.5;
      }
    }

    *v9 = v20;
    if (type == 3)
    {
      v26 = objc_opt_new();
      v81 = 0.0;
      v82 = 0.0;
      v80 = 0.0;
      [v26 calculateGeocentricDirectionForSunX:&v82 Y:&v81 Z:&v80 date:dateCopy];
      v27 = v82;
      v28 = v81;
      v29 = v80;
      *&v30 = 1.5708 - atan2f(v28, v27);
      *v10 = __PAIR64__(COERCE_UNSIGNED_INT(acosf(v29)), v30);
    }

    else if (type == 4)
    {
      *rotation = *angle;
    }

    else if (type - 1 <= 8)
    {
      v31 = (&date_toEquatorRotation_toAngle_toLight_toDistance_toRadius__orientations + 32 * type);
      v32 = *v31;
      v33 = v31[1];
      v34 = v31[2];
      v35 = v31[3];
      [dateCopy timeIntervalSince1970];
      v37 = fmod(v34 + v35 * (v36 / 86400.0 + 2440587.5 + -2451545.0), 360.0);
      *v38.i64 = UMFloat4x4MakeRotateZ(v37 * -0.017453);
      v74 = v39;
      v77 = v38;
      v68 = v41;
      v71 = v40;
      v38.f32[0] = (90.0 - v33) * -0.0174532924;
      *v42.i64 = UMFloat4x4MakeRotateX(v38.f32[0]);
      v86.columns[0] = v42;
      v86.columns[1] = v43;
      v86.columns[2] = v44;
      v86.columns[3] = v45;
      v83.columns[1] = v74;
      v83.columns[0] = v77;
      v83.columns[3] = v68;
      v83.columns[2] = v71;
      *v46.i64 = UMMul(v83, v86);
      v75 = v47;
      v78 = v46;
      v69 = v49;
      v72 = v48;
      v46.f32[0] = (v32 + -90.0) * -0.0174532924;
      *v50.i64 = UMFloat4x4MakeRotateZ(v46.f32[0]);
      v87.columns[0] = v50;
      v87.columns[1] = v51;
      v87.columns[2] = v52;
      v87.columns[3] = v53;
      v84.columns[1] = v75;
      v84.columns[0] = v78;
      v84.columns[3] = v69;
      v84.columns[2] = v72;
      *v54.i64 = UMMul(v84, v87);
      v76 = v55;
      v79 = v54;
      v70 = v57;
      v73 = v56;
      *v58.i64 = UMFloat4x4MakeRotateX(-0.40911);
      v88.columns[0] = v58;
      v88.columns[1] = v59;
      v88.columns[2] = v60;
      v88.columns[3] = v61;
      v85.columns[1] = v76;
      v85.columns[0] = v79;
      v85.columns[3] = v70;
      v85.columns[2] = v73;
      *v62.i64 = UMMul(v85, v88);
      v66 = UMMul(v62, v63, v64, v65, xmmword_1BCE3AE50);
      v76.i32[2] = v67;
      v79.f32[0] = atan2f(*(&v66 + 1), *&v66) + 0.0;
      *v10 = __PAIR64__(COERCE_UNSIGNED_INT(acosf(v76.f32[2])), v79.u32[0]);
    }
  }
}

- (void)updateSunLocationForDate:(id)date
{
  if (((1 << LODWORD(self->_structure.type)) & 0xFBF3FE) != 0)
  {
    [(NUNISpheroid *)self date:date toEquatorRotation:&self->_structure.equatorRotation toAngle:&self->_structure.angle toLight:&self->_anon_30[80] toDistance:&self->_structure.distance toRadius:&self->_anon_30[52]];

    [(NUNISpheroid *)self _updatePositionFromAngle];
  }
}

- (double)animatedFloatForKey:(uint64_t)key
{
  *&v3 = 0;
  if (key > 5)
  {
    if (key > 8)
    {
      switch(key)
      {
        case 9:
          *&v3 = *(self + 160);
          return *&v3;
        case 10:
          v4 = (self + 96);
          break;
        case 11:
          v4 = (self + 68);
          break;
        default:
          return *&v3;
      }
    }

    else if (key == 6)
    {
      v4 = (self + 104);
    }

    else if (key == 7)
    {
      v4 = (self + 32);
    }

    else
    {
      v4 = (self + 64);
    }

LABEL_26:
    *&v3 = vld1q_dup_f32(v4).u64[0];
    return *&v3;
  }

  if (key > 2)
  {
    if (key == 3)
    {
      *&v3 = *(self + 128);
      return *&v3;
    }

    if (key == 4)
    {
      v4 = (self + 24);
    }

    else
    {
      v4 = (self + 100);
    }

    goto LABEL_26;
  }

  switch(key)
  {
    case 0:
      v3 = *(self + 112);
      return *&v3;
    case 1:
      v4 = (self + 36);
      goto LABEL_26;
    case 2:
      v3 = *(self + 48);
      break;
  }

  return *&v3;
}

- (void)setAnimatedFloat:(unint64_t)float forKey:
{
  if (float <= 5)
  {
    if (float > 2)
    {
      if (float == 3)
      {
        *&self->_anon_30[80] = v3;
        return;
      }

      if (float != 4)
      {
        *&self->_anon_30[52] = v3;
        return;
      }

      LODWORD(self->_structure.distance) = v3;
    }

    else
    {
      if (!float)
      {
        *&self->_anon_30[64] = v3;
        return;
      }

      if (float != 1)
      {
        if (float == 2)
        {
          *self->_anon_30 = v3;
        }

        return;
      }

      LODWORD(self->_structure.equatorRotation) = v3;
    }

LABEL_27:
    [(NUNISpheroid *)self _updatePositionFromAngle];
    return;
  }

  if (float > 8)
  {
    switch(float)
    {
      case 9uLL:
        *&self->_anon_30[112] = v3;
        [(NUNISpheroid *)self _updateCamera];
        break;
      case 0xAuLL:
        *&self->_anon_30[48] = v3;
        break;
      case 0xBuLL:
        *&self->_anon_30[20] = v3;
        break;
    }
  }

  else
  {
    if (float != 6)
    {
      if (float != 7)
      {
        *&self->_anon_30[16] = v3;
        return;
      }

      LODWORD(self->_structure.angle) = v3;
      goto LABEL_27;
    }

    v4 = *(&v3 + 1);
    if (*&v3 > *(&v3 + 1))
    {
      v4 = *&v3;
    }

    LODWORD(v3) = DWORD2(v3);
    if (v4 > *(&v3 + 2))
    {
      *&v3 = v4;
    }

    *&self->_anon_30[56] = v3;
  }
}

- (void)setCenterCoordinate:(CLLocationCoordinate2D)coordinate animated:(BOOL)animated
{
  animatedCopy = animated;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v15 = WeakRetained;
  if (animatedCopy)
  {
    v9 = [NUNIAnimation alloc];
    *&v10 = longitude;
    *&v11 = latitude;
    v12 = [(NUNIAnimation *)v9 initWithAnimatable:self value:9 key:COERCE_DOUBLE(__PAIR64__(v11, v10))];
    [v15 addAnimation:v12];
  }

  else
  {
    [WeakRetained removeAllAnimationsFor:self withKeys:512];

    v13 = longitude;
    v14 = latitude;
    *&self->_anon_30[112] = v13;
    *&self->_anon_30[116] = v14;

    [(NUNISpheroid *)self _updateCamera];
  }
}

- (void)_updateCamera
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  focus = [WeakRetained focus];
  v4 = focus;
  if (focus == self)
  {
    v5 = objc_loadWeakRetained(&self->_scene);
    v6 = [v5 isAnimating:v5 forKeys:15];

    if (v6)
    {
      return;
    }

    v18 = NUNIComputeCameraView(self->_structure.type, *&self->_anon_30[112], self->_structure.equatorRotation);
    v14 = *&self->_anon_30[52];
    v15 = *&self->_anon_30[64];
    v7 = objc_loadWeakRetained(&self->_scene);
    [v7 cameraOrbit];
    *&v16 = vmlaq_n_f32(v15, vmulq_n_f32(vnegq_f32(v18), v14), v8).u64[0];

    v9 = 0.0;
    if (self->_structure.type == 4)
    {
      v10 = objc_loadWeakRetained(&self->_scene);
      v11 = [v10 spheroidOfType:3];

      [v11 homeCoordinate];
      *&v12 = v12;
      if (*&v12 >= 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 3.1416;
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_scene);
    *&v13 = v9;
    [WeakRetained setCamera:v16 target:*&self->_anon_30[64] up:0.0 roll:v13];
  }

  else
  {
  }
}

- (CLLocationCoordinate2D)homeCoordinate
{
  v2 = *&self->_anon_30[108];
  v3 = *&self->_anon_30[104];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (CLLocationCoordinate2D)centerCoordinate
{
  v2 = *&self->_anon_30[116];
  v3 = *&self->_anon_30[112];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (void)setHomeCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  *&self->_anon_30[104] = longitude;
  *&self->_anon_30[108] = latitude;
}

- (NUNIScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end