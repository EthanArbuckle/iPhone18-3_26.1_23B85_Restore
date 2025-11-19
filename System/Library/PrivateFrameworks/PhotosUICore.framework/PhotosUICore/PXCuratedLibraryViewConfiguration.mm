@interface PXCuratedLibraryViewConfiguration
- (BOOL)isZoomLevelEnabled:(int64_t)a3;
- (PXCuratedLibraryViewConfiguration)init;
- (PXCuratedLibraryViewConfiguration)initWithPhotoLibrary:(id)a3;
- (PXLemonadeFeatureAvailabilityMonitor)featureAvailabilityMonitor;
- (id)copyWithZone:(_NSZone *)a3;
- (void)swift_propagateEnvironmentValuesToExtendedTraitCollection:(id)a3;
@end

@implementation PXCuratedLibraryViewConfiguration

- (void)swift_propagateEnvironmentValuesToExtendedTraitCollection:(id)a3
{
  sub_1A3C35DC4(&unk_1EB126760);
  sub_1A3C52C70(0, &qword_1EB126868);
  a3;
  self;
  sub_1A5245C64();
}

- (PXLemonadeFeatureAvailabilityMonitor)featureAvailabilityMonitor
{
  type metadata accessor for LemonadeFeatureAvailabilityMonitor();
  v7 = 6;
  v3 = self;
  v4 = [(PXCuratedLibraryViewConfiguration *)v3 photoLibrary];
  v5 = static LemonadeFeatureAvailabilityMonitor.sharedStatus(feature:for:)(&v7, v4);

  return v5;
}

- (BOOL)isZoomLevelEnabled:(int64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3 == 3)
  {
    return [(PXCuratedLibraryViewConfiguration *)self enableDays];
  }

  return 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PXCuratedLibraryViewConfiguration alloc];
  v5 = [(PXCuratedLibraryViewConfiguration *)self photoLibrary];
  v6 = [(PXCuratedLibraryViewConfiguration *)v4 initWithPhotoLibrary:v5];

  [(PXCuratedLibraryViewConfiguration *)v6 setInitialZoomLevel:[(PXCuratedLibraryViewConfiguration *)self initialZoomLevel]];
  [(PXCuratedLibraryViewConfiguration *)v6 setEnableDays:[(PXCuratedLibraryViewConfiguration *)self enableDays]];
  [(PXCuratedLibraryViewConfiguration *)v6 setEnableFooter:[(PXCuratedLibraryViewConfiguration *)self enableFooter]];
  [(PXCuratedLibraryViewConfiguration *)v6 setEnableNavigationHeader:[(PXCuratedLibraryViewConfiguration *)self enableNavigationHeader]];
  [(PXCuratedLibraryViewConfiguration *)v6 setIsExpandedInitially:[(PXCuratedLibraryViewConfiguration *)self isExpandedInitially]];
  [(PXCuratedLibraryViewConfiguration *)v6 setAllowedInteractiveDismissBehaviors:[(PXCuratedLibraryViewConfiguration *)self allowedInteractiveDismissBehaviors]];
  [(PXCuratedLibraryViewConfiguration *)v6 setOverrideDefaultNumberOfColumns:[(PXCuratedLibraryViewConfiguration *)self overrideDefaultNumberOfColumns]];
  [(PXCuratedLibraryViewConfiguration *)v6 setSecondaryToolbarStyle:[(PXCuratedLibraryViewConfiguration *)self secondaryToolbarStyle]];
  v7 = [(PXCuratedLibraryViewConfiguration *)self viewOptionsModel];
  [(PXCuratedLibraryViewConfiguration *)v6 setViewOptionsModel:v7];

  [(PXCuratedLibraryViewConfiguration *)v6 setEnableSecondaryToolbarContainerView:[(PXCuratedLibraryViewConfiguration *)self enableSecondaryToolbarContainerView]];
  [(PXCuratedLibraryViewConfiguration *)v6 setShowSecondaryToolbar:[(PXCuratedLibraryViewConfiguration *)self showSecondaryToolbar]];
  [(PXCuratedLibraryViewConfiguration *)v6 swift_copyPropertiesFromConfiguration:self];
  return v6;
}

- (PXCuratedLibraryViewConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewConfiguration.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXCuratedLibraryViewConfiguration init]"}];

  abort();
}

- (PXCuratedLibraryViewConfiguration)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PXCuratedLibraryViewConfiguration;
  v6 = [(PXCuratedLibraryViewConfiguration *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
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