@interface InteractiveViewController
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityPerformMagicTap;
- (NSArray)keyCommands;
- (_TtC11WeatherMaps25InteractiveViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)accessibilityModelOverlayKeyForMapView:(id)view;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)didHoverMap:(id)map;
- (void)didMoveToBackground;
- (void)didMoveToForeground;
- (void)didMoveToParentViewController:(id)controller;
- (void)didTapMap:(id)map;
- (void)dismissFromKeyboard;
- (void)handleVoiceOverStatusDidChangeWithNotification:(id)notification;
- (void)mapGestureDidChange;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view requestedAccessibilityModelForLocation:(id)location completion:(id)completion;
- (void)mapViewDidChangeVisibleRegion:(id)region;
- (void)selectAirQualityOverlay;
- (void)selectPrecipitationOverlay;
- (void)selectTemperatureOverlay;
- (void)selectWindOverlay;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)zoomIn;
- (void)zoomOut;
@end

@implementation InteractiveViewController

- (void)handleVoiceOverStatusDidChangeWithNotification:(id)notification
{
  v4 = sub_220FBFDC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FBFD90();
  selfCopy = self;
  sub_220EF92F0();

  (*(v5 + 8))(v8, v4);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_220EF9500();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_220EFAE98(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_220EFAF64();
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_220EFB79C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_220EFB8BC();
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  v3 = sub_220EFBC50();

  return v3 & 1;
}

- (BOOL)accessibilityPerformMagicTap
{
  selfCopy = self;
  sub_220EFBCD4();
  v4 = v3;

  return v4 & 1;
}

- (void)didMoveToBackground
{
  selfCopy = self;
  sub_220EFC1CC();
}

- (void)didMoveToForeground
{
  selfCopy = self;
  sub_220EFC2D8();
}

- (void)mapGestureDidChange
{
  selfCopy = self;
  sub_220EFD440();
}

- (void)didTapMap:(id)map
{
  mapCopy = map;
  selfCopy = self;
  sub_220EFD660(mapCopy);
}

- (void)didHoverMap:(id)map
{
  mapCopy = map;
  selfCopy = self;
  sub_220EFD9B4(mapCopy);
}

- (NSArray)keyCommands
{
  selfCopy = self;
  sub_220EFF778();

  sub_220E1966C(0, &qword_27CF9EBC8);
  v3 = sub_220FC2960();

  return v3;
}

- (void)selectTemperatureOverlay
{
  selfCopy = self;
  sub_220EFFA18(4u);
}

- (void)selectPrecipitationOverlay
{
  selfCopy = self;
  sub_220EFFA18(0);
}

- (void)selectAirQualityOverlay
{
  selfCopy = self;
  sub_220EFFA18(3u);
}

- (void)selectWindOverlay
{
  selfCopy = self;
  sub_220EFFA18(5u);
}

- (void)zoomIn
{
  selfCopy = self;
  sub_220EFFB40(sub_220F32618);
}

- (void)zoomOut
{
  selfCopy = self;
  sub_220EFFB40(sub_220F327D8);
}

- (void)dismissFromKeyboard
{
  selfCopy = self;
  sub_220EFFC60();
}

- (_TtC11WeatherMaps25InteractiveViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_220FC2700();
  }

  bundleCopy = bundle;
  sub_220EFFD08();
}

- (void)mapViewDidChangeVisibleRegion:(id)region
{
  regionCopy = region;
  selfCopy = self;
  sub_220F01CAC(regionCopy);
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_220F01D58(selfCopy, overlay);

  swift_unknownObjectRelease();

  return v8;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_220F01DFC();

  swift_unknownObjectRelease();

  return v7;
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  viewCopy = view;
  selfCopy = self;
  sub_220F01EE4(viewCopy);
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  viewCopy = view;
  annotationViewCopy = annotationView;
  selfCopy = self;
  sub_220F0222C();
}

- (void)mapView:(id)view requestedAccessibilityModelForLocation:(id)location completion:(id)completion
{
  v8 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v8;
  viewCopy = view;
  locationCopy = location;
  selfCopy = self;
  sub_220F0333C();
}

- (id)accessibilityModelOverlayKeyForMapView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_220F035E4();
  v7 = v6;

  if (v7)
  {
    v8 = sub_220FC26C0();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end