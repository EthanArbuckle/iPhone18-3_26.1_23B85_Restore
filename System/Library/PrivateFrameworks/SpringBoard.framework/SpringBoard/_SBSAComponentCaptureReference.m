@interface _SBSAComponentCaptureReference
- (_SBSAComponentCaptureReference)initWithComponent:(id)a3 index:(int64_t)a4 ofCount:(int64_t)a5;
@end

@implementation _SBSAComponentCaptureReference

- (_SBSAComponentCaptureReference)initWithComponent:(id)a3 index:(int64_t)a4 ofCount:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = _SBSAComponentCaptureReference;
  v10 = [(_SBSAComponentCaptureReference *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_component, a3);
    v11->_index = a4;
    v11->_count = a5;
  }

  return v11;
}

@end