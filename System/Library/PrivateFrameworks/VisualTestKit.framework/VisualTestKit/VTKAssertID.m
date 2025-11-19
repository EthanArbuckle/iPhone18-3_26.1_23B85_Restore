@interface VTKAssertID
- (BOOL)isEqual:(id)a3;
- (VTKAssertID)initWithName:(id)a3 decorationMask:(unint64_t)a4;
@end

@implementation VTKAssertID

- (VTKAssertID)initWithName:(id)a3 decorationMask:(unint64_t)a4
{
  if (self)
  {
    v5 = a4;
    v6 = [a3 copy];
    vtkAssertName = self->_vtkAssertName;
    self->_vtkAssertName = v6;

    self->_vtkIDDecorationsMask = v5 & 0x3F;
  }

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___VTKAssertID] && (v5 = -[VTKAssertID vtkIDDecorationsMask](self, "vtkIDDecorationsMask"), v5 == objc_msgSend(v4, "vtkIDDecorationsMask")))
  {
    v6 = [(VTKAssertID *)self vtkAssertName];
    v7 = [v4 vtkAssertName];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end