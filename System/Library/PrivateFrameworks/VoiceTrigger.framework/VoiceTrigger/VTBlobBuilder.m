@interface VTBlobBuilder
+ (id)getBlobWithConfigFilename:(id)a3 rootDirectory:(id)a4;
@end

@implementation VTBlobBuilder

+ (id)getBlobWithConfigFilename:(id)a3 rootDirectory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v10 = 0;
  v7 = 0;
  if (!NDBlobGetBlobSize([v5 cStringUsingEncoding:4], objc_msgSend(v6, "cStringUsingEncoding:", 4), 1, 0, &v10) && v10)
  {
    v8 = [MEMORY[0x277CBEB28] dataWithLength:?];
    if (NDBlobBuildBlob([v5 cStringUsingEncoding:4], objc_msgSend(v6, "cStringUsingEncoding:", 4), 1, 0, objc_msgSend(v8, "bytes")))
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