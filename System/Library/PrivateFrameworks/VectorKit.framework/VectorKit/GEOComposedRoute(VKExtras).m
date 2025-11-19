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
  if ([a1 elevationModel])
  {
    return 0;
  }

  return [a1 shouldRequestWGS84Elevations];
}

- (double)pointWithAltitudeCorrectionAtIndex:()VKExtras
{
  [a1 pointAt:?];
  v6[0] = v2;
  v6[1] = v3;
  v6[2] = v4;
  [a1 _applyAltitudeCorrectionIfNecessary:v6];
  return *v6;
}

- (double)pointWithAltitudeCorrectionAtRouteCoordinate:()VKExtras
{
  [a1 pointAtRouteCoordinate:?];
  v6[0] = v2;
  v6[1] = v3;
  v6[2] = v4;
  [a1 _applyAltitudeCorrectionIfNecessary:v6];
  return *v6;
}

- (double)_applyAltitudeCorrectionIfNecessary:()VKExtras
{
  if ([a1 routeRequiresElevationCorrection])
  {
    v5 = +[VKSharedResourcesManager sharedResources];
    v6 = [v5 undulationModel];

    if (v6)
    {
      Undulation = md::GeoidModel::getUndulation(v6, *a3, a3[1]);
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
  v2 = objc_getAssociatedObject(a1, &[GEOComposedRoute(VKExtras) shouldRequestWGS84Elevations]::singletonCachedValue);
  v3 = v2;
  if (v2)
  {
    v4 = [(CachedShouldRequestWGS84Elevations *)v2 value];
  }

  else
  {
    v5 = objc_alloc_init(CachedShouldRequestWGS84Elevations);
    objc_setAssociatedObject(a1, &[GEOComposedRoute(VKExtras) shouldRequestWGS84Elevations]::singletonCachedValue, v5, 0x301);
    v4 = [(CachedShouldRequestWGS84Elevations *)v5 value];
    v3 = v5;
  }

  return v4;
}

@end