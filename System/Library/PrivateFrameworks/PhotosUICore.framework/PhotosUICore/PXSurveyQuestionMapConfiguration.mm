@interface PXSurveyQuestionMapConfiguration
- (CGRect)contentRectForOneUp;
- (PXSurveyQuestionMapConfiguration)init;
- (PXSurveyQuestionMapConfiguration)initWithTitle:(id)title location:(id)location;
- (UIView)contentView;
@end

@implementation PXSurveyQuestionMapConfiguration

- (CGRect)contentRectForOneUp
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIView)contentView
{
  mapView = self->_mapView;
  if (!mapView)
  {
    location = [(PXSurveyQuestionMapConfiguration *)self location];
    v5 = objc_alloc_init(MEMORY[0x1E696F2C0]);
    v6 = self->_mapView;
    self->_mapView = v5;

    [(MKMapView *)self->_mapView setMapType:0];
    [(MKMapView *)self->_mapView setScrollEnabled:0];
    v7 = objc_alloc_init(MEMORY[0x1E696F348]);
    [location coordinate];
    [v7 setCoordinate:?];
    [(MKMapView *)self->_mapView addAnnotation:v7];
    v8 = self->_mapView;
    [location coordinate];
    [(MKMapView *)v8 setRegion:?];

    mapView = self->_mapView;
  }

  return mapView;
}

- (PXSurveyQuestionMapConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionMapConfiguration.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXSurveyQuestionMapConfiguration init]"}];

  abort();
}

- (PXSurveyQuestionMapConfiguration)initWithTitle:(id)title location:(id)location
{
  titleCopy = title;
  locationCopy = location;
  if (!locationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionMapConfiguration.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"location != nil"}];
  }

  v14.receiver = self;
  v14.super_class = PXSurveyQuestionMapConfiguration;
  v9 = [(PXSurveyQuestionMapConfiguration *)&v14 init];
  if (v9)
  {
    v10 = [titleCopy copy];
    title = v9->_title;
    v9->_title = v10;

    objc_storeStrong(&v9->_location, location);
    v9->_isStale = 0;
  }

  return v9;
}

@end