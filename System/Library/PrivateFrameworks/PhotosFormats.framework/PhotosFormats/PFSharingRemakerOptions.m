@interface PFSharingRemakerOptions
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PFSharingRemakerOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PFSharingRemakerOptions);
  [(PFSharingRemakerOptions *)v4 setShouldStripLocation:[(PFSharingRemakerOptions *)self shouldStripLocation]];
  [(PFSharingRemakerOptions *)v4 setShouldStripCaption:[(PFSharingRemakerOptions *)self shouldStripCaption]];
  [(PFSharingRemakerOptions *)v4 setShouldStripAccessibilityDescription:[(PFSharingRemakerOptions *)self shouldStripAccessibilityDescription]];
  [(PFSharingRemakerOptions *)v4 setShouldStripAllMetadata:[(PFSharingRemakerOptions *)self shouldStripAllMetadata]];
  [(PFSharingRemakerOptions *)v4 setShouldConvertToSRGB:[(PFSharingRemakerOptions *)self shouldConvertToSRGB]];
  v5 = [(PFSharingRemakerOptions *)self customLocation];
  [(PFSharingRemakerOptions *)v4 setCustomLocation:v5];

  v6 = [(PFSharingRemakerOptions *)self customDate];
  [(PFSharingRemakerOptions *)v4 setCustomDate:v6];

  v7 = [(PFSharingRemakerOptions *)self customCaption];
  [(PFSharingRemakerOptions *)v4 setCustomCaption:v7];

  v8 = [(PFSharingRemakerOptions *)self customAccessibilityLabel];
  [(PFSharingRemakerOptions *)v4 setCustomAccessibilityLabel:v8];

  v9 = [(PFSharingRemakerOptions *)self outputDirectoryURL];
  [(PFSharingRemakerOptions *)v4 setOutputDirectoryURL:v9];

  v10 = [(PFSharingRemakerOptions *)self outputFilename];
  [(PFSharingRemakerOptions *)v4 setOutputFilename:v10];

  v11 = [(PFSharingRemakerOptions *)self exportPreset];
  [(PFSharingRemakerOptions *)v4 setExportPreset:v11];

  v12 = [(PFSharingRemakerOptions *)self exportFileType];
  [(PFSharingRemakerOptions *)v4 setExportFileType:v12];

  return v4;
}

@end