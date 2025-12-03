@interface VTKAssertID
- (BOOL)isEqual:(id)equal;
- (VTKAssertID)initWithName:(id)name decorationMask:(unint64_t)mask;
@end

@implementation VTKAssertID

- (VTKAssertID)initWithName:(id)name decorationMask:(unint64_t)mask
{
  if (self)
  {
    maskCopy = mask;
    v6 = [name copy];
    vtkAssertName = self->_vtkAssertName;
    self->_vtkAssertName = v6;

    self->_vtkIDDecorationsMask = maskCopy & 0x3F;
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&OBJC_PROTOCOL___VTKAssertID] && (v5 = -[VTKAssertID vtkIDDecorationsMask](self, "vtkIDDecorationsMask"), v5 == objc_msgSend(equalCopy, "vtkIDDecorationsMask")))
  {
    vtkAssertName = [(VTKAssertID *)self vtkAssertName];
    vtkAssertName2 = [equalCopy vtkAssertName];
    v8 = [vtkAssertName isEqualToString:vtkAssertName2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end