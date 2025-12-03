@interface SXDataTableBorder
+ (id)jsonPropertyNameForObjCPropertyName:(id)name;
- (double)width;
@end

@implementation SXDataTableBorder

+ (id)jsonPropertyNameForObjCPropertyName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"actualWidth"])
  {
    v5 = @"width";
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXDataTableBorder;
    v5 = objc_msgSendSuper2(&v7, sel_jsonPropertyNameForObjCPropertyName_, nameCopy);
  }

  return v5;
}

- (double)width
{
  unitConverter = [(SXDataTableBorder *)self unitConverter];

  if (unitConverter)
  {
    unitConverter2 = [(SXDataTableBorder *)self unitConverter];
    actualWidth = [(SXDataTableBorder *)self actualWidth];
    [unitConverter2 convertValueToPoints:{actualWidth, v6}];
    self->_width = v7;
  }

  return self->_width;
}

@end