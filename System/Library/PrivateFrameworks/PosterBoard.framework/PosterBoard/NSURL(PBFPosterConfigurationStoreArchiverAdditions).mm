@interface NSURL(PBFPosterConfigurationStoreArchiverAdditions)
+ (id)pbf_manifestURLInContainerURL:()PBFPosterConfigurationStoreArchiverAdditions;
@end

@implementation NSURL(PBFPosterConfigurationStoreArchiverAdditions)

+ (id)pbf_manifestURLInContainerURL:()PBFPosterConfigurationStoreArchiverAdditions
{
  v3 = [a3 URLByAppendingPathComponent:@"manifest"];
  v4 = [v3 URLByAppendingPathExtension:@"plist"];

  return v4;
}

@end