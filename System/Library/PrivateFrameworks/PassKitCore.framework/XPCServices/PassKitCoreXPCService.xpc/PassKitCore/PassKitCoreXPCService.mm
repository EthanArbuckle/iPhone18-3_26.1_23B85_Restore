@interface PassKitCoreXPCService
- (void)faceBoundingBoxForImageData:(id)data withReply:(id)reply;
@end

@implementation PassKitCoreXPCService

- (void)faceBoundingBoxForImageData:(id)data withReply:(id)reply
{
  dataCopy = data;
  replyCopy = reply;
  if (replyCopy)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x4010000000;
    v19 = &unk_100001471;
    size = CGRectNull.size;
    origin = CGRectNull.origin;
    v21 = size;
    v8 = objc_autoreleasePoolPush();
    if ([(__CFData *)dataCopy length])
    {
      v9 = CGImageSourceCreateWithData(dataCopy, 0);
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
    replyCopy[2](replyCopy, v17[4], v17[5], v17[6], v17[7]);
    _Block_object_dispose(&v16, 8);
  }
}

@end