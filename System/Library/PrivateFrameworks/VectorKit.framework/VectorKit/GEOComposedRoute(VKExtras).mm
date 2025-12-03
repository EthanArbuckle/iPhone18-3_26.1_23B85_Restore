@interface GEOComposedRoute(VKExtras)
- (double)_applyAltitudeCorrectionIfNecessary:()VKExtras;
- (double)pointWithAltitudeCorrectionAtIndex:()VKExtras;
- (double)pointWithAltitudeCorrectionAtRouteCoordinate:()VKExtras;
- (uint64_t)routeRequiresElevationCorrection;
- (uint64_t)shouldRequestWGS84Elevations;
@end

@implementation GEOComposedRoute(VKExtras)

- (uint64_t)routeRequiresElevationCorrection
{
  if ([self elevationModel])
  {
    return 0;
  }

  return [self shouldRequestWGS84Elevations];
}

- (double)pointWithAltitudeCorrectionAtIndex:()VKExtras
{
  [self pointAt:?];
  v6[0] = v2;
  v6[1] = v3;
  v6[2] = v4;
  [self _applyAltitudeCorrectionIfNecessary:v6];
  return *v6;
}

- (double)pointWithAltitudeCorrectionAtRouteCoordinate:()VKExtras
{
  [self pointAtRouteCoordinate:?];
  v6[0] = v2;
  v6[1] = v3;
  v6[2] = v4;
  [self _applyAltitudeCorrectionIfNecessary:v6];
  return *v6;
}

- (double)_applyAltitudeCorrectionIfNecessary:()VKExtras
{
  if ([self routeRequiresElevationCorrection])
  {
    v5 = +[VKSharedResourcesManager sharedResources];
    undulationModel = [v5 undulationModel];

    if (undulationModel)
    {
      Undulation = md::GeoidModel::getUndulation(undulationModel, *a3, a3[1]);
      v8 = *&Undulation;
      if (!HIDWORD(Undulation))
      {
        v8 = 0.0;
      }

      result = v8 + a3[2];
      a3[2] = result;
    }
  }

  return result;
}

- (uint64_t)shouldRequestWGS84Elevations
{
  v2 = objc_getAssociatedObject(self, &[GEOComposedRoute(VKExtras) shouldRequestWGS84Elevations]::singletonCachedValue);
  v3 = v2;
  if (v2)
  {
    value = [(CachedShouldRequestWGS84Elevations *)v2 value];
  }

  else
  {
    v5 = objc_alloc_init(CachedShouldRequestWGS84Elevations);
    objc_setAssociatedObject(self, &[GEOComposedRoute(VKExtras) shouldRequestWGS84Elevations]::singletonCachedValue, v5, 0x301);
    value = [(CachedShouldRequestWGS84Elevations *)v5 value];
    v3 = v5;
  }

  return value;
}

@end