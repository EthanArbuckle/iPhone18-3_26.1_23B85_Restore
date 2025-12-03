@interface PFSharingRemakerOptions
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PFSharingRemakerOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PFSharingRemakerOptions);
  [(PFSharingRemakerOptions *)v4 setShouldStripLocation:[(PFSharingRemakerOptions *)self shouldStripLocation]];
  [(PFSharingRemakerOptions *)v4 setShouldStripCaption:[(PFSharingRemakerOptions *)self shouldStripCaption]];
  [(PFSharingRemakerOptions *)v4 setShouldStripAccessibilityDescription:[(PFSharingRemakerOptions *)self shouldStripAccessibilityDescription]];
  [(PFSharingRemakerOptions *)v4 setShouldStripAllMetadata:[(PFSharingRemakerOptions *)self shouldStripAllMetadata]];
  [(PFSharingRemakerOptions *)v4 setShouldConvertToSRGB:[(PFSharingRemakerOptions *)self shouldConvertToSRGB]];
  customLocation = [(PFSharingRemakerOptions *)self customLocation];
  [(PFSharingRemakerOptions *)v4 setCustomLocation:customLocation];

  customDate = [(PFSharingRemakerOptions *)self customDate];
  [(PFSharingRemakerOptions *)v4 setCustomDate:customDate];

  customCaption = [(PFSharingRemakerOptions *)self customCaption];
  [(PFSharingRemakerOptions *)v4 setCustomCaption:customCaption];

  customAccessibilityLabel = [(PFSharingRemakerOptions *)self customAccessibilityLabel];
  [(PFSharingRemakerOptions *)v4 setCustomAccessibilityLabel:customAccessibilityLabel];

  outputDirectoryURL = [(PFSharingRemakerOptions *)self outputDirectoryURL];
  [(PFSharingRemakerOptions *)v4 setOutputDirectoryURL:outputDirectoryURL];

  outputFilename = [(PFSharingRemakerOptions *)self outputFilename];
  [(PFSharingRemakerOptions *)v4 setOutputFilename:outputFilename];

  exportPreset = [(PFSharingRemakerOptions *)self exportPreset];
  [(PFSharingRemakerOptions *)v4 setExportPreset:exportPreset];

  exportFileType = [(PFSharingRemakerOptions *)self exportFileType];
  [(PFSharingRemakerOptions *)v4 setExportFileType:exportFileType];

  return v4;
}

@end