@interface _SBSAComponentCaptureReference
- (_SBSAComponentCaptureReference)initWithComponent:(id)component index:(int64_t)index ofCount:(int64_t)count;
@end

@implementation _SBSAComponentCaptureReference

- (_SBSAComponentCaptureReference)initWithComponent:(id)component index:(int64_t)index ofCount:(int64_t)count
{
  componentCopy = component;
  v13.receiver = self;
  v13.super_class = _SBSAComponentCaptureReference;
  v10 = [(_SBSAComponentCaptureReference *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_component, component);
    v11->_index = index;
    v11->_count = count;
  }

  return v11;
}

@end