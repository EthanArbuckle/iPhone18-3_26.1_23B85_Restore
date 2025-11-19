@interface BKMousePointerRegion
- (BKMousePointerRegion)initWithPointSize:(CGSize)a3 cornerRadius:(double)a4 scale:(double)a5 displayUUID:(id)a6;
- (BOOL)isEqual:(id)a3;
- (CGSize)pointSize;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation BKMousePointerRegion

- (CGSize)pointSize
{
  width = self->_pointSize.width;
  height = self->_pointSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 != objc_opt_class())
    {
      goto LABEL_7;
    }

    width = self->_pointSize.width;
    height = self->_pointSize.height;
    v8 = v4->_pointSize.width;
    v9 = v4->_pointSize.height;
    if (!BSSizeEqualToSize())
    {
      goto LABEL_7;
    }

    cornerRadius = self->_cornerRadius;
    v11 = v4->_cornerRadius;
    if (BSFloatEqualToFloat() && (scale = self->_scale, v13 = v4->_scale, BSFloatEqualToFloat()))
    {
      displayUUID = self->_displayUUID;
      v15 = v4->_displayUUID;
      v16 = BSEqualObjects();
    }

    else
    {
LABEL_7:
      v16 = 0;
    }
  }

  return v16;
}

- (void)appendDescriptionToStream:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100032C00;
  v5[3] = &unk_1000FD128;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [v4 appendProem:self block:v5];
}

- (BKMousePointerRegion)initWithPointSize:(CGSize)a3 cornerRadius:(double)a4 scale:(double)a5 displayUUID:(id)a6
{
  height = a3.height;
  width = a3.width;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = BKMousePointerRegion;
  v13 = [(BKMousePointerRegion *)&v22 init];
  v14 = v13;
  if (v13)
  {
    if (height < 0.0 || width < 0.0)
    {
      v18 = [NSString stringWithFormat:@"invalid region size: %g, %g", *&width, *&height];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(a2);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544642;
        v24 = v19;
        v25 = 2114;
        v26 = v21;
        v27 = 2048;
        v28 = v14;
        v29 = 2114;
        v30 = @"BKMousePointerRegion.m";
        v31 = 1024;
        v32 = 30;
        v33 = 2114;
        v34 = v18;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v18 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x100032E70);
    }

    v13->_pointSize.width = width;
    v13->_pointSize.height = height;
    v13->_cornerRadius = a4;
    v13->_scale = a5;
    v15 = [v12 copy];
    displayUUID = v14->_displayUUID;
    v14->_displayUUID = v15;
  }

  return v14;
}

@end