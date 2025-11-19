@interface BKMousePointerRegionArrangement
- (BKMousePointerRegionArrangement)initWithCoalitionIdentifier:(id)a3;
- (CGPoint)convertFromGlobalPoint:(CGPoint)a3 toRegion:(id)a4;
- (CGPoint)convertToGlobalPoint:(CGPoint)a3 fromRegion:(id)a4;
- (CGPoint)normalizedGlobalPosition:(CGPoint)a3;
- (CGRect)_frameForRegion:(id)a3;
- (NSArray)regions;
- (id)_initWithCopyOf:(id)a3;
- (id)_layoutDescriptorForRegion:(id)a3;
- (id)closestRegionForGlobalPoint:(CGPoint)a3 returningClosestContainingPoint:(CGPoint *)a4 returningEdgeMask:(unsigned __int8 *)a5;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)regionForDisplayUUID:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation BKMousePointerRegionArrangement

- (id)_layoutDescriptorForRegion:(id)a3
{
  v5 = a3;
  v6 = [(NSMutableDictionary *)self->_regionToLayoutDescriptor objectForKey:v5];
  if (!v6)
  {
    v9 = [NSString stringWithFormat:@"Layout descriptors and regions must always be paired"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138544642;
      v14 = v10;
      v15 = 2114;
      v16 = v12;
      v17 = 2048;
      v18 = self;
      v19 = 2114;
      v20 = @"BKMousePointerRegionArrangement.m";
      v21 = 1024;
      v22 = 318;
      v23 = 2114;
      v24 = v9;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10009AB04);
  }

  v7 = v6;

  return v7;
}

- (CGRect)_frameForRegion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v23 = [NSString stringWithFormat:@"Requesting frame for a nil region"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v31 = 138544642;
      v32 = v24;
      v33 = 2114;
      v34 = v26;
      v35 = 2048;
      v36 = self;
      v37 = 2114;
      v38 = @"BKMousePointerRegionArrangement.m";
      v39 = 1024;
      v40 = 307;
      v41 = 2114;
      v42 = v23;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v31, 0x3Au);
    }

    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10009ACBCLL);
  }

  v6 = v5;
  v7 = [(NSDictionary *)self->_regionToComputedFrame objectForKey:v5];
  if (!v7)
  {
    v27 = [NSString stringWithFormat:@"Requesting frame for a region not part of this arrangement"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = 138544642;
      v32 = v28;
      v33 = 2114;
      v34 = v30;
      v35 = 2048;
      v36 = self;
      v37 = 2114;
      v38 = @"BKMousePointerRegionArrangement.m";
      v39 = 1024;
      v40 = 309;
      v41 = 2114;
      v42 = v27;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v31, 0x3Au);
    }

    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10009ADA8);
  }

  v8 = v7;
  BSRectFromValue();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  x = self->_baseTranslation.x;
  y = self->_baseTranslation.y;

  v19 = x + v10;
  v20 = v12 + y;
  v21 = v14;
  v22 = v16;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)appendDescriptionToStream:(id)a3
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009AEA8;
  v9[3] = &unk_1000FD128;
  v4 = a3;
  v10 = v4;
  v11 = self;
  [v4 appendProem:self block:v9];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009AF20;
  v6[3] = &unk_1000FD128;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendBodySectionWithName:0 block:v6];
}

- (CGPoint)convertFromGlobalPoint:(CGPoint)a3 toRegion:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(BKMousePointerRegionArrangement *)self _frameForRegion:a4];
  v7 = x - v6;
  v9 = y - v8;
  result.y = v9;
  result.x = v7;
  return result;
}

- (CGPoint)convertToGlobalPoint:(CGPoint)a3 fromRegion:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(BKMousePointerRegionArrangement *)self _frameForRegion:a4];
  v7 = x + v6;
  v9 = y + v8;
  result.y = v9;
  result.x = v7;
  return result;
}

- (CGPoint)normalizedGlobalPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  MaxX = CGRectGetMaxX(self->_globalBounds);
  MinX = CGRectGetMinX(self->_globalBounds);
  if (MinX < x)
  {
    MinX = x;
  }

  if (MaxX <= MinX)
  {
    v8 = MaxX;
  }

  else
  {
    v8 = MinX;
  }

  v16.origin.x = self->_globalBounds.origin.x;
  v16.origin.y = self->_globalBounds.origin.y;
  width = self->_globalBounds.size.width;
  v16.size.height = self->_globalBounds.size.height;
  v16.size.width = width;
  MaxY = CGRectGetMaxY(v16);
  MinY = CGRectGetMinY(self->_globalBounds);
  if (MinY < y)
  {
    MinY = y;
  }

  if (MaxY <= MinY)
  {
    v12 = MaxY;
  }

  else
  {
    v12 = MinY;
  }

  v13 = v8 / width;
  v14 = v12 / self->_globalBounds.size.height;
  result.y = v14;
  result.x = v13;
  return result;
}

- (id)closestRegionForGlobalPoint:(CGPoint)a3 returningClosestContainingPoint:(CGPoint *)a4 returningEdgeMask:(unsigned __int8 *)a5
{
  y = a3.y;
  x = a3.x;
  v56 = CGPointZero.x;
  v57 = CGPointZero.y;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v10 = self->_regionToComputedFrame;
  v11 = [(NSDictionary *)v10 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v11)
  {
    v12 = v11;
    v53 = a4;
    v54 = a5;
    v13 = 0;
    v14 = 0;
    v15 = *v59;
    v55 = y;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v59 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v58 + 1) + 8 * v16);
        [(BKMousePointerRegionArrangement *)self _frameForRegion:v17];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        [v17 cornerRadius];
        v27 = v26;
        v28 = v26 + v21;
        if (y >= v26 + v21)
        {
          v21 = v21 + v25;
          v35 = v21 - v26;
          if (y <= v21 - v26)
          {
            if (x < v19)
            {
              v34 = 2;
              goto LABEL_34;
            }

            v19 = v19 + v23;
            if (x > v19)
            {
              v34 = 8;
LABEL_34:
              v21 = y;
              if (v14)
              {
                goto LABEL_44;
              }

              goto LABEL_45;
            }

            goto LABEL_39;
          }

          v36 = v26 + v19;
          if (x >= v26 + v19)
          {
            v19 = v19 + v23;
            v44 = v19 - v26;
            if (x <= v19 - v26)
            {
              y = v55;
              if (v55 > v21)
              {
                v34 = 4;
                goto LABEL_40;
              }

LABEL_39:
              v34 = 0;
              v21 = y;
LABEL_40:
              v19 = x;
              if (v14)
              {
                goto LABEL_44;
              }

              goto LABEL_45;
            }

            if (v26 > 0.0)
            {
              v45 = x - v44;
              v31 = v55;
              v46 = v55 - v35;
              v47 = sqrt(v45 * v45 + v46 * v46);
              if (BSFloatLessThanOrEqualToFloat())
              {
LABEL_26:
                v34 = 0;
                v21 = v31;
                v19 = x;
              }

              else
              {
                v19 = v44 + v45 / v47 * v27;
                v21 = v35 + v46 / v47 * v27;
                v34 = 12;
              }

LABEL_27:
              y = v31;
              if (v14)
              {
                goto LABEL_44;
              }

              goto LABEL_45;
            }

            v34 = 12;
          }

          else
          {
            if (v26 > 0.0)
            {
              v37 = x - v36;
              v31 = v55;
              v38 = v55 - v35;
              v39 = sqrt(v37 * v37 + v38 * v38);
              if (BSFloatLessThanOrEqualToFloat())
              {
                goto LABEL_26;
              }

              v19 = v36 + v37 / v39 * v27;
              v21 = v35 + v38 / v39 * v27;
              v34 = 6;
              goto LABEL_27;
            }

            v34 = 6;
          }
        }

        else
        {
          v29 = v26 + v19;
          if (x >= v26 + v19)
          {
            v19 = v19 + v23;
            v40 = v19 - v26;
            if (x <= v19 - v26)
            {
              y = v55;
              if (v55 < v21)
              {
                v34 = 1;
              }

              else
              {
                v21 = v55;
                v34 = 0;
              }

              goto LABEL_40;
            }

            if (v26 > 0.0)
            {
              v41 = x - v40;
              v31 = v55;
              v42 = v55 - v28;
              v43 = sqrt(v42 * v42 + v41 * v41);
              if (BSFloatLessThanOrEqualToFloat())
              {
                goto LABEL_26;
              }

              v19 = v40 + v41 / v43 * v27;
              v21 = v28 + v42 / v43 * v27;
              v34 = 9;
              goto LABEL_27;
            }
          }

          else if (v26 > 0.0)
          {
            v30 = x - v29;
            v31 = v55;
            v32 = v55 - v28;
            v33 = sqrt(v30 * v30 + v32 * v32);
            if (BSFloatLessThanOrEqualToFloat())
            {
              goto LABEL_26;
            }

            v19 = v29 + v30 / v33 * v27;
            v21 = v28 + v32 / v33 * v27;
            v34 = 3;
            goto LABEL_27;
          }

          v34 = 0;
        }

        y = v55;
        if (v14)
        {
LABEL_44:
          if (!BSFloatLessThanFloat())
          {
            goto LABEL_46;
          }
        }

LABEL_45:
        v48 = v17;

        v13 = v34;
        v56 = v19;
        v57 = v21;
        v14 = v48;
LABEL_46:
        ++v16;
      }

      while (v12 != v16);
      v49 = [(NSDictionary *)v10 countByEnumeratingWithState:&v58 objects:v62 count:16];
      v12 = v49;
      if (!v49)
      {

        a4 = v53;
        if (v53)
        {
          a5 = v54;
          if (v14)
          {
            [(BKMousePointerRegionArrangement *)self convertFromGlobalPoint:v14 toRegion:v56, v57];
            v53->x = v50;
            v53->y = v51;
            goto LABEL_57;
          }

LABEL_56:
          v14 = 0;
          *a4 = CGPointZero;
        }

        else
        {
          a5 = v54;
        }

        goto LABEL_57;
      }
    }
  }

  v13 = 0;
  if (a4)
  {
    goto LABEL_56;
  }

  v14 = 0;
LABEL_57:
  if (a5)
  {
    *a5 = v13;
  }

  return v14;
}

- (id)regionForDisplayUUID:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_regionToLayoutDescriptor;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 displayUUID];
        v11 = BSEqualObjects();

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSArray)regions
{
  v2 = [(NSMutableDictionary *)self->_regionToLayoutDescriptor allKeys];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = v4;

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKMutableMousePointerRegionArrangement alloc];

  return [(BKMousePointerRegionArrangement *)v4 _initWithCopyOf:self];
}

- (id)_initWithCopyOf:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BKMousePointerRegionArrangement;
  v5 = [(BKMousePointerRegionArrangement *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_coalitionIdentifier, v4[1]);
    v6->_baseTranslation = *(v4 + 1);
    v7 = *(v4 + 3);
    v6->_globalBounds.origin = *(v4 + 2);
    v6->_globalBounds.size = v7;
    v8 = [v4[8] copy];
    regionToComputedFrame = v6->_regionToComputedFrame;
    v6->_regionToComputedFrame = v8;

    v10 = [v4[9] copy];
    regionToLayoutDescriptor = v6->_regionToLayoutDescriptor;
    v6->_regionToLayoutDescriptor = v10;
  }

  return v6;
}

- (BKMousePointerRegionArrangement)initWithCoalitionIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BKMousePointerRegionArrangement;
  v5 = [(BKMousePointerRegionArrangement *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    coalitionIdentifier = v5->_coalitionIdentifier;
    v5->_coalitionIdentifier = v6;
  }

  return v5;
}

@end