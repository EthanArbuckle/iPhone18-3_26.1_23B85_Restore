@interface PXPlacesMapContainerConfiguration
+ (id)new;
- (PXPlacesMapContainerConfiguration)init;
- (PXPlacesMapContainerConfiguration)initWithConfiguration:(id)configuration;
- (void)setInitialCoordinateRegion:(id *)region;
@end

@implementation PXPlacesMapContainerConfiguration

- (void)setInitialCoordinateRegion:(id *)region
{
  self->_initialCoordinateRegion.center.latitude = v3;
  self->_initialCoordinateRegion.center.longitude = v4;
  self->_initialCoordinateRegion.span.latitudeDelta = v5;
  self->_initialCoordinateRegion.span.longitudeDelta = v6;
}

- (PXPlacesMapContainerConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapContainerConfiguration.m" lineNumber:43 description:{@"%s is not available as initializer", "-[PXPlacesMapContainerConfiguration init]"}];

  abort();
}

- (PXPlacesMapContainerConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = PXPlacesMapContainerConfiguration;
  v5 = [(PXPlacesMapContainerConfiguration *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = *(MEMORY[0x1E696F068] + 16);
    *(v5 + 24) = *MEMORY[0x1E696F068];
    *(v5 + 40) = v7;
    configurationCopy[2](configurationCopy, v5);
  }

  return v6;
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapContainerConfiguration.m" lineNumber:39 description:{@"%s is not available as initializer", "+[PXPlacesMapContainerConfiguration new]"}];

  abort();
}

@end