@interface SXDataTableBorder
+ (id)jsonPropertyNameForObjCPropertyName:(id)a3;
- (double)width;
@end

@implementation SXDataTableBorder

+ (id)jsonPropertyNameForObjCPropertyName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"actualWidth"])
  {
    v5 = @"width";
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXDataTableBorder;
    v5 = objc_msgSendSuper2(&v7, sel_jsonPropertyNameForObjCPropertyName_, v4);
  }

  return v5;
}

- (double)width
{
  v3 = [(SXDataTableBorder *)self unitConverter];

  if (v3)
  {
    v4 = [(SXDataTableBorder *)self unitConverter];
    v5 = [(SXDataTableBorder *)self actualWidth];
    [v4 convertValueToPoints:{v5, v6}];
    self->_width = v7;
  }

  return self->_width;
}

@end