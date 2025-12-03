@interface _UIViewLFLDGeometryChangeRecord
- (_UIViewLFLDGeometryChangeRecord)initWithGeometricPropertyName:(id)name value:(id)value currentLayoutView:(id)view methodName:(id)methodName;
- (id)description;
@end

@implementation _UIViewLFLDGeometryChangeRecord

- (_UIViewLFLDGeometryChangeRecord)initWithGeometricPropertyName:(id)name value:(id)value currentLayoutView:(id)view methodName:(id)methodName
{
  nameCopy = name;
  valueCopy = value;
  viewCopy = view;
  methodNameCopy = methodName;
  v18.receiver = self;
  v18.super_class = _UIViewLFLDGeometryChangeRecord;
  v15 = [(_UIViewLFLDChangeRecord *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_geometricPropertyName, name);
    objc_storeStrong(&v16->_geometricPropertyValue, value);
    objc_storeStrong(&v16->_currentLayoutView, view);
    objc_storeStrong(&v16->_currentLayoutMethodName, methodName);
  }

  return v16;
}

- (id)description
{
  objCType = [(NSValue *)self->_geometricPropertyValue objCType];
  if (!strcmp(objCType, "{CGPoint=dd}"))
  {
    [(NSValue *)self->_geometricPropertyValue pointValue];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"(%g, %g)", v5, v6, v25, v26];
    v4 = LABEL_8:;
    goto LABEL_9;
  }

  if (!strcmp(objCType, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    [(NSValue *)self->_geometricPropertyValue rectValue];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"(%g, %g; %g, %g)", v7, v8, v9, v10];
    goto LABEL_8;
  }

  if (!strcmp(objCType, "{UIEdgeInsets=dddd}"))
  {
    [(NSValue *)self->_geometricPropertyValue UIEdgeInsetsValue];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"(%g, %g, %g, %g)", v11, v12, v13, v14];
    goto LABEL_8;
  }

  v4 = 0;
LABEL_9:
  v15 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@ = %@; ", self->_geometricPropertyName, v4];
  if (self->_currentLayoutView)
  {
    __viewDelegate = 40;
    v17 = [(NSString *)self->_currentLayoutMethodName isEqualToString:@"viewWillLayoutSubviews"];
    currentLayoutMethodName = self->_currentLayoutMethodName;
    if (v17 || (v19 = [(NSString *)self->_currentLayoutMethodName isEqualToString:@"viewDidLayoutSubviews"], currentLayoutMethodName = self->_currentLayoutMethodName, v19))
    {
      v20 = MEMORY[0x1E696AEC0];
      __viewDelegate = [(UIView *)&self->_currentLayoutView->super.super.isa __viewDelegate];
      v21 = [v20 stringWithFormat:@"%@ with ", __viewDelegate];
      v22 = 1;
    }

    else
    {
      v22 = 0;
      v21 = &stru_1EFB14550;
    }

    _lfld_minimalDescription = [(UIView *)self->_currentLayoutView _lfld_minimalDescription];
    [v15 appendFormat:@"in -%@ of %@%@; ", currentLayoutMethodName, v21, _lfld_minimalDescription];

    if (v22)
    {
    }
  }

  [v15 appendString:@">"];

  return v15;
}

@end