@interface PXPlacesMapModeController
- (BOOL)_toggle3DModeByAdjustingPitch:(BOOL)pitch;
- (BOOL)is3DPerspectiveActive;
- (BOOL)is3DPerspectiveActiveByCheckingPitch;
- (BOOL)supportsPerspectiveToggling;
- (PXPlacesMapModeController)init;
- (PXPlacesMapModeController)initWithMapView:(id)view prefersRealisticElevationStyle:(BOOL)style;
- (unint64_t)mapStyle;
- (void)setMapStyle:(unint64_t)style;
@end

@implementation PXPlacesMapModeController

- (BOOL)_toggle3DModeByAdjustingPitch:(BOOL)pitch
{
  pitchCopy = pitch;
  mapView = [(PXPlacesMapModeController *)self mapView];
  supportsPerspectiveToggling = [(PXPlacesMapModeController *)self supportsPerspectiveToggling];
  if (supportsPerspectiveToggling)
  {
    is3DPerspectiveActive = [(PXPlacesMapModeController *)self is3DPerspectiveActive];
    v8 = [(PXPlacesMapModeController *)self prefersRealisticElevationStyle]| ~is3DPerspectiveActive;
    preferredConfiguration = [mapView preferredConfiguration];
    [preferredConfiguration setElevationStyle:v8 & 1];

    if (pitchCopy)
    {
      v10 = 45.0;
      if (is3DPerspectiveActive)
      {
        v10 = 0.0;
      }

      [mapView setPitch:v10];
    }

    else
    {
      mapView2 = [(PXPlacesMapModeController *)self mapView];
      v12 = mapView2;
      if (is3DPerspectiveActive)
      {
        [mapView2 _exit3DMode];
      }

      else
      {
        [mapView2 _enter3DMode];
      }
    }
  }

  return supportsPerspectiveToggling;
}

- (BOOL)supportsPerspectiveToggling
{
  mapView = [(PXPlacesMapModeController *)self mapView];
  isPitchEnabled = [mapView isPitchEnabled];

  return isPitchEnabled;
}

- (BOOL)is3DPerspectiveActiveByCheckingPitch
{
  mapView = [(PXPlacesMapModeController *)self mapView];
  px_isPitched = [mapView px_isPitched];

  return px_isPitched;
}

- (BOOL)is3DPerspectiveActive
{
  mapView = [(PXPlacesMapModeController *)self mapView];
  [mapView pitch];
  v4 = v3 > 0.0;

  return v4;
}

- (unint64_t)mapStyle
{
  mapView = [(PXPlacesMapModeController *)self mapView];
  preferredConfiguration = [mapView preferredConfiguration];

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

- (void)setMapStyle:(unint64_t)style
{
  mapView = [(PXPlacesMapModeController *)self mapView];
  is3DPerspectiveActive = [(PXPlacesMapModeController *)self is3DPerspectiveActive];
  prefersRealisticElevationStyle = [(PXPlacesMapModeController *)self prefersRealisticElevationStyle];
  if (style > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_alloc(**(&unk_1E7747C48 + style)) initWithElevationStyle:prefersRealisticElevationStyle || is3DPerspectiveActive];
  }

  [mapView setPreferredConfiguration:v7];
}

- (PXPlacesMapModeController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapModeController.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXPlacesMapModeController init]"}];

  abort();
}

- (PXPlacesMapModeController)initWithMapView:(id)view prefersRealisticElevationStyle:(BOOL)style
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = PXPlacesMapModeController;
  v8 = [(PXPlacesMapModeController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapView, view);
    v9->_prefersRealisticElevationStyle = style;
  }

  return v9;
}

@end