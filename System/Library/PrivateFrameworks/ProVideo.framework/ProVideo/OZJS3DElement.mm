@interface OZJS3DElement
+ (id)elementWith3DElement:(void *)element;
- (OZJS3DElement)initWith3DElement:(void *)element;
- (SCNVector4)floorPosition:(id)position atTime:(float)time;
- (SCNVector4)floorPosition:(id)position beneath:(SCNVector3)beneath;
- (void)applyContourToMotionPath:(SCNVector3)path vertically:(BOOL)vertically direction:(float)direction rotation:(float)rotation addStart:(BOOL)start addEnd:(BOOL)end;
- (void)setColor:(SCNVector4)color forShaderParameterWithName:(id)name;
- (void)setPosition:(SCNVector3)position forShaderParameterWithName:(id)name;
@end

@implementation OZJS3DElement

+ (id)elementWith3DElement:(void *)element
{
  v3 = [[OZJS3DElement alloc] initWith3DElement:element];

  return v3;
}

- (OZJS3DElement)initWith3DElement:(void *)element
{
  v5.receiver = self;
  v5.super_class = OZJS3DElement;
  result = [(OZJSElement *)&v5 initWithElement:?];
  if (result)
  {
    result->_tdElement = element;
  }

  return result;
}

- (void)applyContourToMotionPath:(SCNVector3)path vertically:(BOOL)vertically direction:(float)direction rotation:(float)rotation addStart:(BOOL)start addEnd:(BOOL)end
{
  y = path.y;
  z = path.z;
  OZ3DEngineSceneElement::buildAndApplyMeshContourToMotionPath(self->_tdElement, vertically, start, end, *&path.x, direction, rotation);
}

- (void)setPosition:(SCNVector3)position forShaderParameterWithName:(id)name
{
  v4 = *(self->_tdElement + 3008);
  if (v4)
  {
    z = position.z;
    y = position.y;
    x = position.x;
    v9 = *v4;
    v10 = v4[1];
    if (*v4 != v10)
    {
      while (1)
      {
        v11 = *v9;
        v13.var0 = 0;
        PCString::set(&v13, name);
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
      NSLog(&cfstr_CouldNotFindCh.isa, name);
    }

    {
      OZChannelPosition3D::setValue(v12, MEMORY[0x277CC08F0], x, y, z);
    }

    else
    {
      NSLog(&cfstr_CouldNotFindPo_0.isa, name);
    }
  }
}

- (void)setColor:(SCNVector4)color forShaderParameterWithName:(id)name
{
  v4 = *(self->_tdElement + 3008);
  if (v4)
  {
    z = color.z;
    y = color.y;
    x = color.x;
    v9 = *v4;
    v10 = v4[1];
    if (*v4 != v10)
    {
      while (1)
      {
        v11 = *v9;
        *&v15.var0.var0 = 0;
        PCString::set(&v15, name);
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
      NSLog(&cfstr_CouldNotFindCh.isa, name);
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
      NSLog(&cfstr_CoundFindColor.isa, name);
    }
  }
}

- (SCNVector4)floorPosition:(id)position atTime:(float)time
{
  OZ3DEngineSceneElement::calcFloorPosition(self->_tdElement, position, time);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result.w = v10;
  result.z = v8;
  result.y = v6;
  result.x = v4;
  return result;
}

- (SCNVector4)floorPosition:(id)position beneath:(SCNVector3)beneath
{
  y = beneath.y;
  OZ3DEngineSceneElement::calcFloorPosition(self->_tdElement, position, *&beneath.x);
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