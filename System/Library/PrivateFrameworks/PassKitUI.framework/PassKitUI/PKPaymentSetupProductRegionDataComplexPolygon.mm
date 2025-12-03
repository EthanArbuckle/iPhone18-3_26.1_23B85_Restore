@interface PKPaymentSetupProductRegionDataComplexPolygon
- (BOOL)containsPoint:(CGPoint)point inExclusionaryRegion:(BOOL *)region;
- (PKPaymentSetupProductRegionDataComplexPolygon)initWithInclusionaryZones:(id)zones exclusionaryZones:(id)exclusionaryZones;
- (double)closestDistanceToPoint:(CGPoint)point;
- (void)dealloc;
@end

@implementation PKPaymentSetupProductRegionDataComplexPolygon

- (PKPaymentSetupProductRegionDataComplexPolygon)initWithInclusionaryZones:(id)zones exclusionaryZones:(id)exclusionaryZones
{
  exclusionaryZonesCopy = exclusionaryZones;
  v7 = CreateSanitizedZonesList(zones);
  v8 = CreateSanitizedZonesList(exclusionaryZonesCopy);
  if ((v7 && [v7 count] || v8 && objc_msgSend(v8, "count")) && (v9 = objc_msgSend(v7, "count"), v10 = objc_msgSend(v8, "count"), v9 | v10))
  {
    v12 = v10;
    v26.receiver = self;
    v26.super_class = PKPaymentSetupProductRegionDataComplexPolygon;
    v13 = [(PKPaymentSetupProductRegionDataComplexPolygon *)&v26 init];
    v14 = v13;
    if (v13)
    {
      v13->_inclusionaryPolygonCount = v9;
      if (v9)
      {
        v13->_inclusionaryPolygons = malloc_type_calloc(v9, 0x10uLL, 0x1020040EDED9539uLL);
        if (v14->_inclusionaryPolygonCount)
        {
          v15 = 0;
          v16 = 0;
          do
          {
            v17 = [v7 objectAtIndexedSubscript:v16];
            v18 = &v14->_inclusionaryPolygons[v15];
            *v18 = CreatePolygonForPoints(v17);
            v18[1] = v19;

            ++v16;
            ++v15;
          }

          while (v16 < v14->_inclusionaryPolygonCount);
        }
      }

      if (v14->_exclusionaryPolygonCount)
      {
        v14->_exclusionaryPolygonCount = v12;
        v14->_exclusionaryPolygons = malloc_type_calloc(v12, 0x10uLL, 0x1020040EDED9539uLL);
        if (v14->_exclusionaryPolygonCount)
        {
          v20 = 0;
          v21 = 0;
          do
          {
            v22 = [v8 objectAtIndexedSubscript:v21];
            v23 = &v14->_exclusionaryPolygons[v20];
            *v23 = CreatePolygonForPoints(v22);
            v23[1] = v24;

            ++v21;
            ++v20;
          }

          while (v21 < v14->_exclusionaryPolygonCount);
        }
      }
    }

    self = v14;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  inclusionaryPolygons = self->_inclusionaryPolygons;
  if (inclusionaryPolygons)
  {
    if (self->_inclusionaryPolygonCount)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        free(self->_inclusionaryPolygons[v4].var0);
        ++v5;
        ++v4;
      }

      while (v5 < self->_inclusionaryPolygonCount);
      inclusionaryPolygons = self->_inclusionaryPolygons;
    }

    free(inclusionaryPolygons);
  }

  exclusionaryPolygons = self->_exclusionaryPolygons;
  if (exclusionaryPolygons)
  {
    if (self->_exclusionaryPolygonCount)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        free(self->_exclusionaryPolygons[v7].var0);
        ++v8;
        ++v7;
      }

      while (v8 < self->_exclusionaryPolygonCount);
      exclusionaryPolygons = self->_exclusionaryPolygons;
    }

    free(exclusionaryPolygons);
  }

  v9.receiver = self;
  v9.super_class = PKPaymentSetupProductRegionDataComplexPolygon;
  [(PKPaymentSetupProductRegionDataComplexPolygon *)&v9 dealloc];
}

- (BOOL)containsPoint:(CGPoint)point inExclusionaryRegion:(BOOL *)region
{
  v6 = (point.x + 180.0) * 10000.0 / 360.0;
  v7 = tan(point.y * 3.14159265 / 180.0 * 0.5 + 0.785398163);
  v8 = log(v7) * 10000.0 / -6.28318531 + 2500.0;
  exclusionaryPolygonCount = self->_exclusionaryPolygonCount;
  if (exclusionaryPolygonCount)
  {
    p_var1 = &self->_exclusionaryPolygons->var1;
    while (!PolygonContainsNormalizedPoint(*(p_var1 - 1), *p_var1, v6, v8))
    {
      p_var1 += 2;
      if (!--exclusionaryPolygonCount)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    *region = 1;
  }

  else
  {
LABEL_5:
    inclusionaryPolygonCount = self->_inclusionaryPolygonCount;
    if (inclusionaryPolygonCount)
    {
      v12 = inclusionaryPolygonCount - 1;
      v13 = &self->_inclusionaryPolygons->var1;
      do
      {
        v14 = v12;
        result = PolygonContainsNormalizedPoint(*(v13 - 1), *v13, v6, v8);
        if (result)
        {
          break;
        }

        v12 = v14 - 1;
        v13 += 2;
      }

      while (v14);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (double)closestDistanceToPoint:(CGPoint)point
{
  y = point.y;
  inclusionaryPolygonCount = self->_inclusionaryPolygonCount;
  if (!inclusionaryPolygonCount)
  {
    return 1.79769313e308;
  }

  x = point.x;
  v5 = 0;
  inclusionaryPolygons = self->_inclusionaryPolygons;
  result = 1.79769313e308;
  do
  {
    v8 = &inclusionaryPolygons[v5];
    var1 = v8->var1;
    if (var1)
    {
      v10 = (v8->var0 + 40);
      do
      {
        v33 = result;
        v11 = *(v10 - 5);
        v12 = *(v10 - 4);
        v13 = *(v10 - 1);
        v14 = *v10;
        v28 = *v10;
        v29 = v13;
        v32 = HaversineDistanceBetweenPoints(y, x, v11, v12);
        v30 = HaversineDistanceBetweenPoints(v11, v12, y, x);
        v26 = BearingBetweenPoints(v11, v12, y, x) * 3.14159265 / 180.0;
        v15 = BearingBetweenPoints(v11, v12, v13, v14) * 3.14159265 / 180.0;
        v16 = __sincos_stret(v30 / 6371.0);
        v17 = sin(v26 - v15);
        v31 = asin(v16.__sinval * v17) * 6371.0;
        v18 = cos(v31 / 6371.0);
        v27 = acos(v16.__cosval / v18) * 6371.0;
        v19 = HaversineDistanceBetweenPoints(v29, v28, y, x);
        v20 = cos(v19 / 6371.0);
        v21 = acos(v20 / v18) * 6371.0;
        v22 = HaversineDistanceBetweenPoints(v11, v12, v29, v28);
        v23 = fmin(v32, fabs(v31));
        if (v27 + v21 <= v22)
        {
          v24 = v23;
        }

        else
        {
          v24 = v32;
        }

        result = fmin(v24, v33);
        v10 += 8;
        --var1;
      }

      while (var1);
    }

    ++v5;
  }

  while (v5 != inclusionaryPolygonCount);
  return result;
}

@end