@interface PXPlacesMapModeController
- (BOOL)_toggle3DModeByAdjustingPitch:(BOOL)a3;
- (BOOL)is3DPerspectiveActive;
- (BOOL)is3DPerspectiveActiveByCheckingPitch;
- (BOOL)supportsPerspectiveToggling;
- (PXPlacesMapModeController)init;
- (PXPlacesMapModeController)initWithMapView:(id)a3 prefersRealisticElevationStyle:(BOOL)a4;
- (unint64_t)mapStyle;
- (void)setMapStyle:(unint64_t)a3;
@end

@implementation PXPlacesMapModeController

- (BOOL)_toggle3DModeByAdjustingPitch:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXPlacesMapModeController *)self mapView];
  v6 = [(PXPlacesMapModeController *)self supportsPerspectiveToggling];
  if (v6)
  {
    v7 = [(PXPlacesMapModeController *)self is3DPerspectiveActive];
    v8 = [(PXPlacesMapModeController *)self prefersRealisticElevationStyle]| ~v7;
    v9 = [v5 preferredConfiguration];
    [v9 setElevationStyle:v8 & 1];

    if (v3)
    {
      v10 = 45.0;
      if (v7)
      {
        v10 = 0.0;
      }

      [v5 setPitch:v10];
    }

    else
    {
      v11 = [(PXPlacesMapModeController *)self mapView];
      v12 = v11;
      if (v7)
      {
        [v11 _exit3DMode];
      }

      else
      {
        [v11 _enter3DMode];
      }
    }
  }

  return v6;
}

- (BOOL)supportsPerspectiveToggling
{
  v2 = [(PXPlacesMapModeController *)self mapView];
  v3 = [v2 isPitchEnabled];

  return v3;
}

- (BOOL)is3DPerspectiveActiveByCheckingPitch
{
  v2 = [(PXPlacesMapModeController *)self mapView];
  v3 = [v2 px_isPitched];

  return v3;
}

- (BOOL)is3DPerspectiveActive
{
  v2 = [(PXPlacesMapModeController *)self mapView];
  [v2 pitch];
  v4 = v3 > 0.0;

  return v4;
}

- (unint64_t)mapStyle
{
  v2 = [(PXPlacesMapModeController *)self mapView];
  v3 = [v2 preferredConfiguration];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (void)setMapStyle:(unint64_t)a3
{
  v8 = [(PXPlacesMapModeController *)self mapView];
  v5 = [(PXPlacesMapModeController *)self is3DPerspectiveActive];
  v6 = [(PXPlacesMapModeController *)self prefersRealisticElevationStyle];
  if (a3 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_alloc(**(&unk_1E7747C48 + a3)) initWithElevationStyle:v6 || v5];
  }

  [v8 setPreferredConfiguration:v7];
}

- (PXPlacesMapModeController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPlacesMapModeController.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXPlacesMapModeController init]"}];

  abort();
}

- (PXPlacesMapModeController)initWithMapView:(id)a3 prefersRealisticElevationStyle:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PXPlacesMapModeController;
  v8 = [(PXPlacesMapModeController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapView, a3);
    v9->_prefersRealisticElevationStyle = a4;
  }

  return v9;
}

@end