@interface PXCuratedLibraryViewConfiguration
- (BOOL)isZoomLevelEnabled:(int64_t)enabled;
- (PXCuratedLibraryViewConfiguration)init;
- (PXCuratedLibraryViewConfiguration)initWithPhotoLibrary:(id)library;
- (PXLemonadeFeatureAvailabilityMonitor)featureAvailabilityMonitor;
- (id)copyWithZone:(_NSZone *)zone;
- (void)swift_propagateEnvironmentValuesToExtendedTraitCollection:(id)collection;
@end

@implementation PXCuratedLibraryViewConfiguration

- (void)swift_propagateEnvironmentValuesToExtendedTraitCollection:(id)collection
{
  sub_1A3C35DC4(&unk_1EB126760);
  sub_1A3C52C70(0, &qword_1EB126868);
  collection;
  self;
  sub_1A5245C64();
}

- (PXLemonadeFeatureAvailabilityMonitor)featureAvailabilityMonitor
{
  type metadata accessor for LemonadeFeatureAvailabilityMonitor();
  v7 = 6;
  selfCopy = self;
  photoLibrary = [(PXCuratedLibraryViewConfiguration *)selfCopy photoLibrary];
  v5 = static LemonadeFeatureAvailabilityMonitor.sharedStatus(feature:for:)(&v7, photoLibrary);

  return v5;
}

- (BOOL)isZoomLevelEnabled:(int64_t)enabled
{
  if (!enabled)
  {
    return 0;
  }

  if (enabled == 3)
  {
    return [(PXCuratedLibraryViewConfiguration *)self enableDays];
  }

  return 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PXCuratedLibraryViewConfiguration alloc];
  photoLibrary = [(PXCuratedLibraryViewConfiguration *)self photoLibrary];
  v6 = [(PXCuratedLibraryViewConfiguration *)v4 initWithPhotoLibrary:photoLibrary];

  [(PXCuratedLibraryViewConfiguration *)v6 setInitialZoomLevel:[(PXCuratedLibraryViewConfiguration *)self initialZoomLevel]];
  [(PXCuratedLibraryViewConfiguration *)v6 setEnableDays:[(PXCuratedLibraryViewConfiguration *)self enableDays]];
  [(PXCuratedLibraryViewConfiguration *)v6 setEnableFooter:[(PXCuratedLibraryViewConfiguration *)self enableFooter]];
  [(PXCuratedLibraryViewConfiguration *)v6 setEnableNavigationHeader:[(PXCuratedLibraryViewConfiguration *)self enableNavigationHeader]];
  [(PXCuratedLibraryViewConfiguration *)v6 setIsExpandedInitially:[(PXCuratedLibraryViewConfiguration *)self isExpandedInitially]];
  [(PXCuratedLibraryViewConfiguration *)v6 setAllowedInteractiveDismissBehaviors:[(PXCuratedLibraryViewConfiguration *)self allowedInteractiveDismissBehaviors]];
  [(PXCuratedLibraryViewConfiguration *)v6 setOverrideDefaultNumberOfColumns:[(PXCuratedLibraryViewConfiguration *)self overrideDefaultNumberOfColumns]];
  [(PXCuratedLibraryViewConfiguration *)v6 setSecondaryToolbarStyle:[(PXCuratedLibraryViewConfiguration *)self secondaryToolbarStyle]];
  viewOptionsModel = [(PXCuratedLibraryViewConfiguration *)self viewOptionsModel];
  [(PXCuratedLibraryViewConfiguration *)v6 setViewOptionsModel:viewOptionsModel];

  [(PXCuratedLibraryViewConfiguration *)v6 setEnableSecondaryToolbarContainerView:[(PXCuratedLibraryViewConfiguration *)self enableSecondaryToolbarContainerView]];
  [(PXCuratedLibraryViewConfiguration *)v6 setShowSecondaryToolbar:[(PXCuratedLibraryViewConfiguration *)self showSecondaryToolbar]];
  [(PXCuratedLibraryViewConfiguration *)v6 swift_copyPropertiesFromConfiguration:self];
  return v6;
}

- (PXCuratedLibraryViewConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewConfiguration.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXCuratedLibraryViewConfiguration init]"}];

  abort();
}

- (PXCuratedLibraryViewConfiguration)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v10.receiver = self;
  v10.super_class = PXCuratedLibraryViewConfiguration;
  v6 = [(PXCuratedLibraryViewConfiguration *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    v7->_initialZoomLevel = 0;
    v7->_enableDays = MEMORY[0x1A590D320]() ^ 1;
    v7->_enableFooter = MEMORY[0x1A590D320]() ^ 1;
    *&v7->_enableNavigationHeader = 257;
    v7->_enableSecondaryToolbarContainerView = 0;
    v7->_overrideDefaultNumberOfColumns = 0;
    v7->_allowedInteractiveDismissBehaviors = 0;
    v7->_secondaryToolbarStyle = 0;
    v8 = +[PXCuratedLibrarySettings sharedInstance];
    v7->_showSecondaryToolbar = [v8 showSecondaryToolbar];
  }

  return v7;
}

@end