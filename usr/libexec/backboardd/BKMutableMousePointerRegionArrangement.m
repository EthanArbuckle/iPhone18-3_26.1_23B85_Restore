@interface BKMutableMousePointerRegionArrangement
- (id)copyWithZone:(_NSZone *)a3;
- (void)_computeFrameForRegion:(id)a3 layoutDescriptor:(id)a4 accumulatedFrames:(id)a5;
- (void)_updateFrames;
- (void)addPrimaryRegion:(id)a3;
- (void)removeRegion:(id)a3;
@end

@implementation BKMutableMousePointerRegionArrangement

- (void)_updateFrames
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = objc_alloc_init(NSMutableDictionary);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = self->super._regionToLayoutDescriptor;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)self->super._regionToLayoutDescriptor objectForKey:v13, v28];
        [(BKMutableMousePointerRegionArrangement *)self _computeFrameForRegion:v13 layoutDescriptor:v14 accumulatedFrames:v7];
        v15 = [v7 objectForKey:v13];
        BSRectFromValue();
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v37.origin.x = x;
        v37.origin.y = y;
        v37.size.width = width;
        v37.size.height = height;
        v39.origin.x = v17;
        v39.origin.y = v19;
        v39.size.width = v21;
        v39.size.height = v23;
        v38 = CGRectUnion(v37, v39);
        x = v38.origin.x;
        y = v38.origin.y;
        width = v38.size.width;
        height = v38.size.height;
      }

      v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v10);
  }

  v24 = [v7 copy];
  regionToComputedFrame = self->super._regionToComputedFrame;
  self->super._regionToComputedFrame = v24;

  self->super._globalBounds.origin.x = x;
  self->super._globalBounds.origin.y = y;
  self->super._globalBounds.size.width = width;
  self->super._globalBounds.size.height = height;
  v26 = BKLogMousePointer();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = BSNSStringFromCGRect();
    *buf = 134218242;
    v33 = self;
    v34 = 2114;
    v35 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "region arrangement %p bounds: %{public}@", buf, 0x16u);
  }

  self->super._baseTranslation.x = -x;
  self->super._baseTranslation.y = -y;
}

- (void)_computeFrameForRegion:(id)a3 layoutDescriptor:(id)a4 accumulatedFrames:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 objectForKey:v14];
  if (!v10)
  {
    v11 = [v8 relativeRegion];
    [v14 pointSize];
    if (v11)
    {
      v12 = [(BKMousePointerRegionArrangement *)self _layoutDescriptorForRegion:v11];
      [(BKMutableMousePointerRegionArrangement *)self _computeFrameForRegion:v11 layoutDescriptor:v12 accumulatedFrames:v9];

      v13 = [v9 objectForKey:v11];
      BSRectFromValue();

      [v8 edgePosition];
      BSRectWithSize();
      [v8 edge];
    }

    v10 = BSValueWithRect();
    [v9 setObject:v10 forKey:v14];
  }
}

- (void)removeRegion:(id)a3
{
  [(NSMutableDictionary *)self->super._regionToLayoutDescriptor removeObjectForKey:a3];
  if (![(NSMutableDictionary *)self->super._regionToLayoutDescriptor count])
  {
    regionToLayoutDescriptor = self->super._regionToLayoutDescriptor;
    self->super._regionToLayoutDescriptor = 0;
  }

  [(BKMutableMousePointerRegionArrangement *)self _updateFrames];
}

- (void)addPrimaryRegion:(id)a3
{
  v13 = a3;
  if ([(NSMutableDictionary *)self->super._regionToLayoutDescriptor count])
  {
    v9 = [NSString stringWithFormat:@"Only one primary region may be added"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      v19 = self;
      v20 = 2114;
      v21 = @"BKMousePointerRegionArrangement.m";
      v22 = 1024;
      v23 = 337;
      v24 = 2114;
      v25 = v9;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10009C118);
  }

  v5 = [[_BKMousePointerRegionLayoutDescriptor alloc] initWithRelativeRegion:0 edge:0 edgePosition:0.0];
  regionToLayoutDescriptor = self->super._regionToLayoutDescriptor;
  if (!regionToLayoutDescriptor)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = self->super._regionToLayoutDescriptor;
    self->super._regionToLayoutDescriptor = v7;

    regionToLayoutDescriptor = self->super._regionToLayoutDescriptor;
  }

  [(NSMutableDictionary *)regionToLayoutDescriptor setObject:v5 forKey:v13];
  [(BKMutableMousePointerRegionArrangement *)self _updateFrames];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BKMousePointerRegionArrangement alloc];

  return [(BKMousePointerRegionArrangement *)v4 _initWithCopyOf:self];
}

@end