@interface VKARWalkingArrivalStoreFront
- (BOOL)isEqual:(id)equal;
- (Coordinate3D<geo::Degrees,)bottomCenterCoordinate;
- (Matrix<double,)normal;
- (Mercator3<double>)bottomCenterPoint;
- (OrientedBox<double,)face;
- (Unit<geo::MeterUnitDescription,)faceHeightInMeters;
- (Unit<geo::MeterUnitDescription,)faceWidthInMeters;
- (VKARWalkingArrivalStoreFront)initWithGEOOrientedBox:(id)box;
- (VKARWalkingArrivalStoreFront)initWithOrientedRect:(const void *)rect;
- (VKARWalkingArrivalStoreFront)initWithYaw:(float)yaw pitch:(float)pitch roll:(float)roll x:(double)x y:(double)y z:(double)z w:(float)w h:(float)self0;
- (id).cxx_construct;
- (id)description;
@end

@implementation VKARWalkingArrivalStoreFront

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 56) = xmmword_1B33B05D0;
  *(self + 72) = xmmword_1B33B0520;
  *(self + 11) = 0xFFEFFFFFFFFFFFFFLL;
  return self;
}

- (OrientedBox<double,)face
{
  *retstr->_transform._translation._e = *&self->_transform._translation._e[1];
  *retstr->_transform._rotation._imaginary._e = *&self->_transform._rotation._imaginary._e[1];
  retstr->_transform._rotation._scalar = self->_bounds._minimum._e[0];
  v3 = *(&self->_bounds._maximum + 8);
  retstr->_bounds._minimum = *(&self->_bounds._minimum + 8);
  retstr->_transform._translation._e[2] = self->_transform._rotation._imaginary._e[0];
  retstr->_transform._rotation._imaginary._e[2] = self->_transform._rotation._scalar;
  retstr->_bounds._maximum = v3;
  return self;
}

- (id)description
{
  [(VKARWalkingArrivalStoreFront *)self bottomCenterCoordinate];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p position:(%f, %f, %f) undulation:%f>", v5, self, v8, v9, *&self->_undulation._value];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v21.receiver = self;
  v21.super_class = VKARWalkingArrivalStoreFront;
  if ([(VKARWalkingArrivalStoreFront *)&v21 isEqual:equalCopy]&& (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    v8 = equalCopy;
    [(VKARWalkingArrivalStoreFront *)self bottomCenterPoint];
    v10 = v9;
    *&v19[2] = v9;
    v20[0] = v11;
    v20[1] = v12;
    [v8 bottomCenterPoint];
    v19[0] = v13;
    v19[1] = v14;
    if (vabdd_f64(v10, v15) >= 0.00000001)
    {
      v6 = 0;
    }

    else
    {
      v16 = 0;
      v17 = 2;
      while (v16 != 2)
      {
        v18 = vabdd_f64(*&v20[v16], *&v19[v16]);
        ++v16;
        if (v18 >= 0.00000001)
        {
          v17 = v16 - 1;
          break;
        }
      }

      v6 = v17 > 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (Matrix<double,)normal
{
  v2 = self->_face._transform._rotation._imaginary._e[0];
  v3 = self->_face._transform._rotation._imaginary._e[1];
  v4 = self->_face._transform._rotation._imaginary._e[2];
  scalar = self->_face._transform._rotation._scalar;
  v6 = v2 + v2;
  v7 = -((v4 + v4) * scalar - (v2 + v2) * v3);
  v8 = 1.0 - ((v2 + v2) * v2 + (v4 + v4) * v4);
  v9 = (v4 + v4) * v3 + scalar * v6;
  result._e[2] = v9;
  result._e[1] = v8;
  result._e[0] = v7;
  return result;
}

- (Coordinate3D<geo::Degrees,)bottomCenterCoordinate
{
  v3 = v2;
  [(VKARWalkingArrivalStoreFront *)self bottomCenterPoint];
  v5 = v4 * 40075017.0;
  v7 = v6 * 6.28318531;
  v9 = exp(v8 * 6.28318531 + -3.14159265);
  v15 = atan(v9);
  v10 = fmod(v7, 6.28318531);
  v11 = fmod(v10 + 6.28318531, 6.28318531);
  v12.f64[0] = v15;
  v12.f64[1] = v11;
  v13 = 114.591559;
  v14 = vmlaq_f64(xmmword_1B33B0660, xmmword_1B33B0650, v12);
  *v3 = v14;
  v3[1].f64[0] = v5;
  result.altitude = *&v12.f64[0];
  result.longitude = *&v14.f64[0];
  result.latitude = *&v13;
  return result;
}

- (Mercator3<double>)bottomCenterPoint
{
  v2 = self->_face._transform._translation._e[0];
  v3 = self->_face._transform._translation._e[1];
  v4 = self->_face._transform._translation._e[2] + (self->_face._bounds._minimum._e[1] - self->_face._bounds._maximum._e[1]) * 0.5;
  result._e[2] = v4;
  result._e[1] = v3;
  result._e[0] = v2;
  return result;
}

- (Unit<geo::MeterUnitDescription,)faceHeightInMeters
{
  v3._value = self->_dimensionsInMeters._e[1];
  *v2 = v3._value;
  return v3;
}

- (Unit<geo::MeterUnitDescription,)faceWidthInMeters
{
  v3._value = self->_dimensionsInMeters._e[0];
  *v2 = v3._value;
  return v3;
}

- (VKARWalkingArrivalStoreFront)initWithOrientedRect:(const void *)rect
{
  v42.receiver = self;
  v42.super_class = VKARWalkingArrivalStoreFront;
  v4 = [(VKARWalkingArrivalStoreFront *)&v42 init];
  if (v4)
  {
    v34 = *rect;
    v35 = *(rect + 2);
    v5 = [VKSharedResourcesManager sharedResources:geo::Geocentric<double>::toCoordinate3D<geo::Degrees];
    undulationModel = [v5 undulationModel];

    v7 = v41.f64[0];
    if (undulationModel)
    {
      Undulation = md::GeoidModel::getUndulation(undulationModel, v41.f64[0], v41.f64[1]);
      if (HIDWORD(Undulation))
      {
        v9 = *&Undulation;
      }

      else
      {
        v9 = 0.0;
      }
    }

    else
    {
      v9 = 0.0;
    }

    v4->_undulation._value = v9;
    v58 = *rect;
    v59 = *(rect + 2);
    v34 = 0uLL;
    v35 = 0.0;
    geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(&v58, &v34);
    v32 = v34;
    v33 = v35;
    gdc::CameraFrame<geo::Degrees,double>::createLocalEcefFrame(v56, &v58);
    for (i = 0; i != 24; i += 8)
    {
      *(&v34 + i) = -*&v56[i + 24];
    }

    *&v36 = v57;
    gm::Quaternion<double>::operator*(v55, &v34, rect + 24);
    gm::quaternionToEulerAnglesYXZ<double>(v55, &v52, &v54, &v53);
    v11 = v53;
    v12 = v54;
    v13 = __sincos_stret(v52 * 0.5);
    v14 = __sincos_stret(v11 * -0.5);
    v15 = __sincos_stret(v12 * -0.5);
    v51[0] = -(v15.__cosval * v14.__sinval * v13.__sinval - v14.__cosval * v13.__cosval * v15.__sinval);
    v51[1] = v14.__sinval * v13.__cosval * v15.__cosval + v14.__cosval * v13.__sinval * v15.__sinval;
    v51[2] = -(v14.__sinval * v13.__cosval * v15.__sinval - v14.__cosval * v13.__sinval * v15.__cosval);
    v51[3] = v14.__cosval * v13.__cosval * v15.__cosval + v15.__sinval * v13.__sinval * v14.__sinval;
    v47 = 1065353216;
    v48 = 0;
    gm::quaternionFromAngleAxis<float>(&v34, &v47, 1.5708);
    for (j = 0; j != 3; ++j)
    {
      *&v50[j] = *(&v34 + j);
    }

    *&v50[3] = *(&v34 + 3);
    *&v44 = 0x3F80000000000000;
    DWORD2(v44) = 0;
    gm::quaternionFromAngleAxis<float>(&v34, &v44, 3.1416);
    for (k = 0; k != 3; ++k)
    {
      *(&v47 + k) = *(&v34 + k);
    }

    v31 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v7);
    v18 = tan(*&v32 * 0.5 + 0.785398163);
    v19 = log(v18) * 0.159154943 + 0.5;
    v49 = *(&v34 + 3);
    gm::Quaternion<double>::operator*(v43, v50, &v47);
    gm::Quaternion<double>::operator*(&v44, v43, v51);
    v36 = v44;
    v37 = v45;
    v20 = v46;
    v21 = vsubq_f64(*(rect + 72), *(rect + 56));
    v4->_dimensionsInMeters = vcvt_f32_f64(v21);
    v22 = vdupq_lane_s64(0x3E5ACB157F7410BCLL, 0);
    v22.f64[0] = v31;
    *&v34 = *(&v32 + 1) * 0.159154943 + 0.5;
    *(&v34 + 1) = v19;
    v35 = (v33 - v9) * 0.0000000249532021;
    v38 = v20;
    __asm { FMOV            V0.2D, #0.5 }

    v28 = vmulq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_f64(v21, v22))), _Q0);
    v39 = vnegq_f64(v28);
    v40 = v28;
    geo::OrientedBox<double,2u,double,double>::operator=(&v4->_face, &v34);
    v29 = v4;
  }

  return v4;
}

- (VKARWalkingArrivalStoreFront)initWithYaw:(float)yaw pitch:(float)pitch roll:(float)roll x:(double)x y:(double)y z:(double)z w:(float)w h:(float)self0
{
  gm::quaternionFromEulerAnglesZYX<float>(&v24, yaw, pitch, roll);
  *&v26 = x;
  *(&v26 + 1) = y;
  zCopy = z;
  v28 = v24;
  gdc::mun::transformFromPwinTransform(&v33, &v26);
  for (i = 0; i != 3; ++i)
  {
    *(&v24 + i) = *&v35[i];
  }

  v26 = v33;
  zCopy = v34;
  v28 = v24;
  v29 = v25;
  v30 = *&v35[3];
  __asm { FMOV            V0.2D, #0.5 }

  v20 = vmulq_f64(vcvtq_f64_f32(__PAIR64__(LODWORD(h), LODWORD(w))), _Q0);
  v31 = vnegq_f64(v20);
  v32 = v20;
  return [(VKARWalkingArrivalStoreFront *)self initWithOrientedRect:&v26];
}

- (VKARWalkingArrivalStoreFront)initWithGEOOrientedBox:(id)box
{
  boxCopy = box;
  if ([boxCopy hasPosition] && objc_msgSend(boxCopy, "hasWidth") && (objc_msgSend(boxCopy, "hasHeight") & 1) != 0)
  {
    position = [boxCopy position];
    if ([position hasX] && objc_msgSend(position, "hasY") && objc_msgSend(position, "hasZ") && objc_msgSend(position, "hasYaw") && objc_msgSend(position, "hasPitch") && (objc_msgSend(position, "hasRoll") & 1) != 0)
    {
      [position yaw];
      v7 = v6;
      [position pitch];
      v9 = v8;
      [position roll];
      v11 = v10;
      [position x];
      v13 = v12;
      [position y];
      v15 = v14;
      [position z];
      v17 = v16;
      [boxCopy width];
      v19 = v18;
      [boxCopy height];
      v20 = v7;
      *&v21 = v9;
      *&v22 = v11;
      *&v23 = v19;
      *&v25 = v24;
      *&v24 = v20;
      self = [(VKARWalkingArrivalStoreFront *)self initWithYaw:v24 pitch:v21 roll:v22 x:v13 y:v15 z:v17 w:v23 h:v25];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end