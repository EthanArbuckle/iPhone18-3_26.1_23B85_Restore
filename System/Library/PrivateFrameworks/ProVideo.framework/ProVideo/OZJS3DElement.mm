@interface OZJS3DElement
+ (id)elementWith3DElement:(void *)a3;
- (OZJS3DElement)initWith3DElement:(void *)a3;
- (SCNVector4)floorPosition:(id)a3 atTime:(float)a4;
- (SCNVector4)floorPosition:(id)a3 beneath:(SCNVector3)a4;
- (void)applyContourToMotionPath:(SCNVector3)a3 vertically:(BOOL)a4 direction:(float)a5 rotation:(float)a6 addStart:(BOOL)a7 addEnd:(BOOL)a8;
- (void)setColor:(SCNVector4)a3 forShaderParameterWithName:(id)a4;
- (void)setPosition:(SCNVector3)a3 forShaderParameterWithName:(id)a4;
@end

@implementation OZJS3DElement

+ (id)elementWith3DElement:(void *)a3
{
  v3 = [[OZJS3DElement alloc] initWith3DElement:a3];

  return v3;
}

- (OZJS3DElement)initWith3DElement:(void *)a3
{
  v5.receiver = self;
  v5.super_class = OZJS3DElement;
  result = [(OZJSElement *)&v5 initWithElement:?];
  if (result)
  {
    result->_tdElement = a3;
  }

  return result;
}

- (void)applyContourToMotionPath:(SCNVector3)a3 vertically:(BOOL)a4 direction:(float)a5 rotation:(float)a6 addStart:(BOOL)a7 addEnd:(BOOL)a8
{
  y = a3.y;
  z = a3.z;
  OZ3DEngineSceneElement::buildAndApplyMeshContourToMotionPath(self->_tdElement, a4, a7, a8, *&a3.x, a5, a6);
}

- (void)setPosition:(SCNVector3)a3 forShaderParameterWithName:(id)a4
{
  v4 = *(self->_tdElement + 3008);
  if (v4)
  {
    z = a3.z;
    y = a3.y;
    x = a3.x;
    v9 = *v4;
    v10 = v4[1];
    if (*v4 != v10)
    {
      while (1)
      {
        v11 = *v9;
        v13.var0 = 0;
        PCString::set(&v13, a4);
        LODWORD(v11) = PCString::compare(v11 + 4, &v13);
        PCString::~PCString(&v13);
        if (!v11)
        {
          break;
        }

        if (++v9 == v10)
        {
          v9 = v10;
          break;
        }
      }

      v10 = v4[1];
    }

    if (v9 == v10)
    {
      NSLog(&cfstr_CouldNotFindCh.isa, a4);
    }

    {
      OZChannelPosition3D::setValue(v12, MEMORY[0x277CC08F0], x, y, z);
    }

    else
    {
      NSLog(&cfstr_CouldNotFindPo_0.isa, a4);
    }
  }
}

- (void)setColor:(SCNVector4)a3 forShaderParameterWithName:(id)a4
{
  v4 = *(self->_tdElement + 3008);
  if (v4)
  {
    z = a3.z;
    y = a3.y;
    x = a3.x;
    v9 = *v4;
    v10 = v4[1];
    if (*v4 != v10)
    {
      while (1)
      {
        v11 = *v9;
        *&v15.var0.var0 = 0;
        PCString::set(&v15, a4);
        LODWORD(v11) = PCString::compare(v11 + 4, &v15);
        PCString::~PCString(&v15);
        if (!v11)
        {
          break;
        }

        if (++v9 == v10)
        {
          v9 = v10;
          break;
        }
      }

      v10 = v4[1];
    }

    if (v9 == v10)
    {
      NSLog(&cfstr_CouldNotFindCh.isa, a4);
    }

    {
      v13 = v12;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      PCColor::PCColor(&v15, x, y, z, 1.0, DeviceRGB);
      (*(*v13 + 840))(v13, MEMORY[0x277CC08F0], &v15, 0);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v15.var1._obj);
    }

    else
    {
      NSLog(&cfstr_CoundFindColor.isa, a4);
    }
  }
}

- (SCNVector4)floorPosition:(id)a3 atTime:(float)a4
{
  OZ3DEngineSceneElement::calcFloorPosition(self->_tdElement, a3, a4);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result.w = v10;
  result.z = v8;
  result.y = v6;
  result.x = v4;
  return result;
}

- (SCNVector4)floorPosition:(id)a3 beneath:(SCNVector3)a4
{
  y = a4.y;
  OZ3DEngineSceneElement::calcFloorPosition(self->_tdElement, a3, *&a4.x);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result.w = v11;
  result.z = v9;
  result.y = v7;
  result.x = v5;
  return result;
}

@end