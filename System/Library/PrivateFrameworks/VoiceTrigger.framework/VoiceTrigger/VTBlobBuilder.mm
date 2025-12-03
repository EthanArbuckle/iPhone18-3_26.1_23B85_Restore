@interface VTBlobBuilder
+ (id)getBlobWithConfigFilename:(id)filename rootDirectory:(id)directory;
@end

@implementation VTBlobBuilder

+ (id)getBlobWithConfigFilename:(id)filename rootDirectory:(id)directory
{
  filenameCopy = filename;
  directoryCopy = directory;
  v10 = 0;
  v7 = 0;
  if (!NDBlobGetBlobSize([filenameCopy cStringUsingEncoding:4], objc_msgSend(directoryCopy, "cStringUsingEncoding:", 4), 1, 0, &v10) && v10)
  {
    v8 = [MEMORY[0x277CBEB28] dataWithLength:?];
    if (NDBlobBuildBlob([filenameCopy cStringUsingEncoding:4], objc_msgSend(directoryCopy, "cStringUsingEncoding:", 4), 1, 0, objc_msgSend(v8, "bytes")))
    {
      v7 = 0;
    }

    else
    {
      v7 = v8;
    }
  }

  return v7;
}

@end