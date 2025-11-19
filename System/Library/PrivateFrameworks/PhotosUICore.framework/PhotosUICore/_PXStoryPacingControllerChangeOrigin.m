@interface _PXStoryPacingControllerChangeOrigin
- (_PXStoryPacingControllerChangeOrigin)initWithDescription:(id)a3;
@end

@implementation _PXStoryPacingControllerChangeOrigin

- (_PXStoryPacingControllerChangeOrigin)initWithDescription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PXStoryPacingControllerChangeOrigin;
  v6 = [(_PXStoryPacingControllerChangeOrigin *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_description, a3);
  }

  return v7;
}

@end