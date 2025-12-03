@interface TSCH3DPickedPoint
+ (TSCH3DPickedPoint)pickedPointWithSceneObject:(id)object element:(void *)element projection:(void *)projection transform:(void *)transform objectSpacePoint:(void *)point centerProjectionPoint:(void *)projectionPoint;
- (TSCH3DPickedPoint)initWithSceneObject:(id)object element:(void *)element projection:(void *)projection transform:(void *)transform objectSpacePoint:(void *)point centerProjectionPoint:(void *)projectionPoint;
- (id).cxx_construct;
- (tmat4x4<float>)projection;
- (tmat4x4<float>)transform;
- (tvec3<float>)cameraSpacePoint;
- (tvec3<float>)objectSpacePoint;
@end

@implementation TSCH3DPickedPoint

+ (TSCH3DPickedPoint)pickedPointWithSceneObject:(id)object element:(void *)element projection:(void *)projection transform:(void *)transform objectSpacePoint:(void *)point centerProjectionPoint:(void *)projectionPoint
{
  objectCopy = object;
  v15 = [self alloc];
  v20 = objc_msgSend_initWithSceneObject_element_projection_transform_objectSpacePoint_centerProjectionPoint_(v15, v16, v17, v18, v19, objectCopy, element, projection, transform, point, projectionPoint);

  return v20;
}

- (TSCH3DPickedPoint)initWithSceneObject:(id)object element:(void *)element projection:(void *)projection transform:(void *)transform objectSpacePoint:(void *)point centerProjectionPoint:(void *)projectionPoint
{
  objectCopy = object;
  v19.receiver = self;
  v19.super_class = TSCH3DPickedPoint;
  v16 = [(TSCH3DPickedPoint *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_sceneObject, object);
    v17->_element.var0.var0 = *element;
    v17->_element.var1.var0 = *(element + 1);
    v17->_projection.value[0].var0.var0 = *projection;
    v17->_projection.value[0].var1.var0 = *(projection + 1);
    v17->_projection.value[0].var2.var0 = *(projection + 2);
    v17->_projection.value[0].var3.var0 = *(projection + 3);
    v17->_projection.value[1].var0.var0 = *(projection + 4);
    v17->_projection.value[1].var1.var0 = *(projection + 5);
    v17->_projection.value[1].var2.var0 = *(projection + 6);
    v17->_projection.value[1].var3.var0 = *(projection + 7);
    v17->_projection.value[2].var0.var0 = *(projection + 8);
    v17->_projection.value[2].var1.var0 = *(projection + 9);
    v17->_projection.value[2].var2.var0 = *(projection + 10);
    v17->_projection.value[2].var3.var0 = *(projection + 11);
    v17->_projection.value[3].var0.var0 = *(projection + 12);
    v17->_projection.value[3].var1.var0 = *(projection + 13);
    v17->_projection.value[3].var2.var0 = *(projection + 14);
    v17->_projection.value[3].var3.var0 = *(projection + 15);
    v17->_transform.value[0].var0.var0 = *transform;
    v17->_transform.value[0].var1.var0 = *(transform + 1);
    v17->_transform.value[0].var2.var0 = *(transform + 2);
    v17->_transform.value[0].var3.var0 = *(transform + 3);
    v17->_transform.value[1].var0.var0 = *(transform + 4);
    v17->_transform.value[1].var1.var0 = *(transform + 5);
    v17->_transform.value[1].var2.var0 = *(transform + 6);
    v17->_transform.value[1].var3.var0 = *(transform + 7);
    v17->_transform.value[2].var0.var0 = *(transform + 8);
    v17->_transform.value[2].var1.var0 = *(transform + 9);
    v17->_transform.value[2].var2.var0 = *(transform + 10);
    v17->_transform.value[2].var3.var0 = *(transform + 11);
    v17->_transform.value[3].var0.var0 = *(transform + 12);
    v17->_transform.value[3].var1.var0 = *(transform + 13);
    v17->_transform.value[3].var2.var0 = *(transform + 14);
    v17->_transform.value[3].var3.var0 = *(transform + 15);
    v17->_objectSpacePoint.var0.var0 = *point;
    v17->_objectSpacePoint.var1.var0 = *(point + 1);
    v17->_objectSpacePoint.var2.var0 = *(point + 2);
    v17->_centerProjectionPoint.var0.var0 = *projectionPoint;
    v17->_centerProjectionPoint.var1.var0 = *(projectionPoint + 1);
  }

  return v17;
}

- (tvec3<float>)cameraSpacePoint
{
  sub_276154744(&self->_objectSpacePoint, &self->_transform, v2, v3);
  result.var0 = v4;
  result.var1 = *(&v4 + 4);
  result.var2 = v5;
  return result;
}

- (tvec3<float>)objectSpacePoint
{
  *v2 = self->_objectSpacePoint;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (tmat4x4<float>)projection
{
  v3 = *&self->value[3].var3.var0;
  retstr->value[0] = *&self->value[2].var3.var0;
  retstr->value[1] = v3;
  v4 = *&self[1].value[1].var3.var0;
  retstr->value[2] = *&self[1].value[0].var3.var0;
  retstr->value[3] = v4;
  return self;
}

- (tmat4x4<float>)transform
{
  v3 = *&self[1].value[3].var3.var0;
  retstr->value[0] = *&self[1].value[2].var3.var0;
  retstr->value[1] = v3;
  v4 = *&self[2].value[1].var3.var0;
  retstr->value[2] = *&self[2].value[0].var3.var0;
  retstr->value[3] = v4;
  return self;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0x3F80000000000000;
  *(self + 16) = 1065353216;
  *(self + 76) = 0;
  *(self + 68) = 0;
  *(self + 21) = 1065353216;
  *(self + 11) = 0;
  *(self + 12) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(self + 13) = _D0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 32) = 1065353216;
  *(self + 140) = 0;
  *(self + 132) = 0;
  *(self + 37) = 1065353216;
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 42) = 1065353216;
  return self;
}

@end