@interface BKDisplayRenderOverlay
- (BKDisplayRenderOverlay)initWithOverlayDescriptor:(id)a3 level:(float)a4;
- (BOOL)presentWithAnimationSettings:(id)a3;
- (id)_initWithPersistenceData:(id)a3;
- (id)_persistenceData;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_wrapInCATransaction:(id)a3;
- (void)dealloc;
- (void)dismissWithAnimationSettings:(id)a3;
- (void)freeze;
- (void)setAnimates:(BOOL)a3;
@end

@implementation BKDisplayRenderOverlay

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  [(BKDisplayRenderOverlay *)self succinctDescriptionBuilder];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100031928;
  v5 = v8[3] = &unk_1000FD128;
  v9 = v5;
  v10 = self;
  [v5 appendBodySectionWithName:0 multilinePrefix:v4 block:v8];

  v6 = v5;
  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BKDisplayRenderOverlay *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendFloat:@"level" withName:0 decimalPrecision:self->_level];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(BKDisplayRenderOverlay *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)_wrapInCATransaction:(id)a3
{
  if (a3)
  {
    v3 = a3;
    +[CATransaction begin];
    v3[2](v3);

    +[CATransaction commit];
  }
}

- (id)_persistenceData
{
  v3 = objc_alloc_init(_BKDisplayRenderOverlayPersistenceData);
  [(_BKDisplayRenderOverlayPersistenceData *)v3 setOverlayType:[(BKDisplayRenderOverlay *)self type]];
  [(_BKDisplayRenderOverlayPersistenceData *)v3 setDescriptor:self->_descriptor];
  *&v4 = self->_level;
  [(_BKDisplayRenderOverlayPersistenceData *)v3 setLevel:v4];

  return v3;
}

- (void)dismissWithAnimationSettings:(id)a3
{
  v4 = a3;
  if (self->_visible)
  {
    v5 = sub_100052810();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(BKDisplayRenderOverlay *)self succinctDescription];
      *buf = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dismissing render overlay %{public}@ with animation settings: %{public}@", buf, 0x16u);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100031CD4;
    v7[3] = &unk_1000FD128;
    v7[4] = self;
    v8 = v4;
    [(BKDisplayRenderOverlay *)self _wrapInCATransaction:v7];
    self->_visible = 0;
  }
}

- (void)freeze
{
  if (!self->_visible)
  {
    v6 = [NSString stringWithFormat:@"Can't freeze a hidden overlay"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v12 = v7;
      v13 = 2114;
      v14 = v9;
      v15 = 2048;
      v16 = self;
      v17 = 2114;
      v18 = @"BKDisplayRenderOverlay.m";
      v19 = 1024;
      v20 = 144;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100031F30);
  }

  if (!self->_frozen)
  {
    self->_frozen = 1;
    v3 = sub_100052810();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(BKDisplayRenderOverlay *)self succinctDescription];
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Freezing overlay: %{public}@", buf, 0xCu);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100031F38;
    v10[3] = &unk_1000FD150;
    v10[4] = self;
    [(BKDisplayRenderOverlay *)self _wrapInCATransaction:v10];
  }
}

- (BOOL)presentWithAnimationSettings:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  if (self->_visible)
  {
    goto LABEL_5;
  }

  v5 = sub_100052810();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(BKDisplayRenderOverlay *)self succinctDescription];
    *buf = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Presenting overlay: %{public}@ with animation settings: %{public}@", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003210C;
  v9[3] = &unk_1000FD1C8;
  v11 = &v12;
  v9[4] = self;
  v10 = v4;
  [(BKDisplayRenderOverlay *)self _wrapInCATransaction:v9];
  self->_visible = 1;

  if (v13[3])
  {
LABEL_5:
    +[CATransaction flush];
    v7 = *(v13 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v7 & 1;
}

- (void)setAnimates:(BOOL)a3
{
  if (self->_animates != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_animates = a3;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000321F0;
    v5[3] = &unk_1000FD150;
    v5[4] = self;
    [(BKDisplayRenderOverlay *)self _wrapInCATransaction:v5];
  }
}

- (void)dealloc
{
  if (self->_visible)
  {
    v4 = [NSString stringWithFormat:@"Must dismiss before releasing"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      v14 = self;
      v15 = 2114;
      v16 = @"BKDisplayRenderOverlay.m";
      v17 = 1024;
      v18 = 66;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1000323A4);
  }

  v8.receiver = self;
  v8.super_class = BKDisplayRenderOverlay;
  [(BKDisplayRenderOverlay *)&v8 dealloc];
}

- (id)_initWithPersistenceData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 descriptor];
    [v4 level];
    v7 = v6;

    LODWORD(v8) = v7;
    v9 = [(BKDisplayRenderOverlay *)self initWithOverlayDescriptor:v5 level:v8];

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BKDisplayRenderOverlay)initWithOverlayDescriptor:(id)a3 level:(float)a4
{
  v8 = a3;
  if (!v8)
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [NSString stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"descriptor", v18];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      *&buf[4] = v20;
      *&buf[12] = 2114;
      *&buf[14] = v22;
      *&buf[22] = 2048;
      v33 = self;
      LOWORD(v34) = 2114;
      *(&v34 + 2) = @"BKDisplayRenderOverlay.m";
      WORD5(v34) = 1024;
      HIDWORD(v34) = 35;
      LOWORD(p_scale) = 2114;
      *(&p_scale + 2) = v19;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1000326ECLL);
  }

  v9 = v8;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = [v9 classForCoder];
    if (!v23)
    {
      v23 = objc_opt_class();
    }

    v24 = NSStringFromClass(v23);
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [NSString stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"descriptor", v24, v26];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      *&buf[4] = v28;
      *&buf[12] = 2114;
      *&buf[14] = v30;
      *&buf[22] = 2048;
      v33 = self;
      LOWORD(v34) = 2114;
      *(&v34 + 2) = @"BKDisplayRenderOverlay.m";
      WORD5(v34) = 1024;
      HIDWORD(v34) = 35;
      LOWORD(p_scale) = 2114;
      *(&p_scale + 2) = v27;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100032828);
  }

  v31.receiver = self;
  v31.super_class = BKDisplayRenderOverlay;
  v10 = [(BKDisplayRenderOverlay *)&v31 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_descriptor, a3);
    v11->_level = a4;
    v12 = +[BKDisplayRenderOverlayPersistenceCoordinator sharedInstance];
    persistenceCoordinator = v11->_persistenceCoordinator;
    v11->_persistenceCoordinator = v12;

    v11->_type = 0;
    *&v11->_visible = 0;
    v14 = [v9 display];
    if ([v14 isExternal])
    {
      v15 = [v14 currentMode];
      v11->_scale = [v15 preferredScale];
    }

    else
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100002FE0;
      v33 = &unk_1000FA7F8;
      v34 = 0uLL;
      p_scale = &v11->_scale;
      v36 = 0;
      v37 = 0;
      sub_100002E40(buf);
    }
  }

  return v11;
}

@end