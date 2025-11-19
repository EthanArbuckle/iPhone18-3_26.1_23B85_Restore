@interface PXCuratedAssetCollectionDiagnosticsRadarComponentInformation
- (PXCuratedAssetCollectionDiagnosticsRadarComponentInformation)initWithComponentID:(id)a3 name:(id)a4 version:(id)a5;
@end

@implementation PXCuratedAssetCollectionDiagnosticsRadarComponentInformation

- (PXCuratedAssetCollectionDiagnosticsRadarComponentInformation)initWithComponentID:(id)a3 name:(id)a4 version:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PXCuratedAssetCollectionDiagnosticsRadarComponentInformation;
  v11 = [(PXCuratedAssetCollectionDiagnosticsRadarComponentInformation *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    componentID = v11->_componentID;
    v11->_componentID = v12;

    v14 = [v9 copy];
    name = v11->_name;
    v11->_name = v14;

    v16 = [v10 copy];
    version = v11->_version;
    v11->_version = v16;
  }

  return v11;
}

@end