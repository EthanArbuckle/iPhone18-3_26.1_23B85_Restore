@interface PassKitCoreXPCService
- (void)faceBoundingBoxForImageData:(id)a3 withReply:(id)a4;
@end

@implementation PassKitCoreXPCService

- (void)faceBoundingBoxForImageData:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x4010000000;
    v19 = &unk_100001471;
    size = CGRectNull.size;
    origin = CGRectNull.origin;
    v21 = size;
    v8 = objc_autoreleasePoolPush();
    if ([(__CFData *)v5 length])
    {
      v9 = CGImageSourceCreateWithData(v5, 0);
      v10 = v9;
      if (v9)
      {
        if (CGImageSourceGetCount(v9))
        {
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, 0);
        }

        else
        {
          ImageAtIndex = 0;
        }

        CFRelease(v10);
        if (ImageAtIndex)
        {
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_100000F00;
          v15[3] = &unk_100004120;
          v15[4] = &v16;
          v12 = [[VNDetectFaceRectanglesRequest alloc] initWithCompletionHandler:v15];
          v13 = [[VNImageRequestHandler alloc] initWithCGImage:ImageAtIndex options:&__NSDictionary0__struct];
          CGImageRelease(ImageAtIndex);
          v22 = v12;
          v14 = [NSArray arrayWithObjects:&v22 count:1];
          [v13 performRequests:v14 error:0];
        }
      }
    }

    objc_autoreleasePoolPop(v8);
    v6[2](v6, v17[4], v17[5], v17[6], v17[7]);
    _Block_object_dispose(&v16, 8);
  }
}

@end