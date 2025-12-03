@interface PXCuratedAssetCollectionDiagnosticsRadarComponentInformation
- (PXCuratedAssetCollectionDiagnosticsRadarComponentInformation)initWithComponentID:(id)d name:(id)name version:(id)version;
@end

@implementation PXCuratedAssetCollectionDiagnosticsRadarComponentInformation

- (PXCuratedAssetCollectionDiagnosticsRadarComponentInformation)initWithComponentID:(id)d name:(id)name version:(id)version
{
  dCopy = d;
  nameCopy = name;
  versionCopy = version;
  v19.receiver = self;
  v19.super_class = PXCuratedAssetCollectionDiagnosticsRadarComponentInformation;
  v11 = [(PXCuratedAssetCollectionDiagnosticsRadarComponentInformation *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    componentID = v11->_componentID;
    v11->_componentID = v12;

    v14 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v14;

    v16 = [versionCopy copy];
    version = v11->_version;
    v11->_version = v16;
  }

  return v11;
}

@end