@interface InteractiveViewController
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityPerformMagicTap;
- (NSArray)keyCommands;
- (_TtC11WeatherMaps25InteractiveViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)accessibilityModelOverlayKeyForMapView:(id)a3;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)didHoverMap:(id)a3;
- (void)didMoveToBackground;
- (void)didMoveToForeground;
- (void)didMoveToParentViewController:(id)a3;
- (void)didTapMap:(id)a3;
- (void)dismissFromKeyboard;
- (void)handleVoiceOverStatusDidChangeWithNotification:(id)a3;
- (void)mapGestureDidChange;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapView:(id)a3 requestedAccessibilityModelForLocation:(id)a4 completion:(id)a5;
- (void)mapViewDidChangeVisibleRegion:(id)a3;
- (void)selectAirQualityOverlay;
- (void)selectPrecipitationOverlay;
- (void)selectTemperatureOverlay;
- (void)selectWindOverlay;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)zoomIn;
- (void)zoomOut;
@end

@implementation InteractiveViewController

- (void)handleVoiceOverStatusDidChangeWithNotification:(id)a3
{
  v4 = sub_220FBFDC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FBFD90();
  v9 = self;
  sub_220EF92F0();

  (*(v5 + 8))(v8, v4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_220EF9500();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_220EFAE98(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_220EFAF64();
}

- (void)didMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_220EFB79C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_220EFB8BC();
}

- (BOOL)accessibilityPerformEscape
{
  v2 = self;
  v3 = sub_220EFBC50();

  return v3 & 1;
}

- (BOOL)accessibilityPerformMagicTap
{
  v2 = self;
  sub_220EFBCD4();
  v4 = v3;

  return v4 & 1;
}

- (void)didMoveToBackground
{
  v2 = self;
  sub_220EFC1CC();
}

- (void)didMoveToForeground
{
  v2 = self;
  sub_220EFC2D8();
}

- (void)mapGestureDidChange
{
  v2 = self;
  sub_220EFD440();
}

- (void)didTapMap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_220EFD660(v4);
}

- (void)didHoverMap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_220EFD9B4(v4);
}

- (NSArray)keyCommands
{
  v2 = self;
  sub_220EFF778();

  sub_220E1966C(0, &qword_27CF9EBC8);
  v3 = sub_220FC2960();

  return v3;
}

- (void)selectTemperatureOverlay
{
  v2 = self;
  sub_220EFFA18(4u);
}

- (void)selectPrecipitationOverlay
{
  v2 = self;
  sub_220EFFA18(0);
}

- (void)selectAirQualityOverlay
{
  v2 = self;
  sub_220EFFA18(3u);
}

- (void)selectWindOverlay
{
  v2 = self;
  sub_220EFFA18(5u);
}

- (void)zoomIn
{
  v2 = self;
  sub_220EFFB40(sub_220F32618);
}

- (void)zoomOut
{
  v2 = self;
  sub_220EFFB40(sub_220F327D8);
}

- (void)dismissFromKeyboard
{
  v2 = self;
  sub_220EFFC60();
}

- (_TtC11WeatherMaps25InteractiveViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_220FC2700();
  }

  v5 = a4;
  sub_220EFFD08();
}

- (void)mapViewDidChangeVisibleRegion:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_220F01CAC(v4);
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_220F01D58(v7, a4);

  swift_unknownObjectRelease();

  return v8;
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_220F01DFC();

  swift_unknownObjectRelease();

  return v7;
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_220F01EE4(v5);
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_220F0222C();
}

- (void)mapView:(id)a3 requestedAccessibilityModelForLocation:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v8;
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_220F0333C();
}

- (id)accessibilityModelOverlayKeyForMapView:(id)a3
{
  v4 = a3;
  v5 = self;
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