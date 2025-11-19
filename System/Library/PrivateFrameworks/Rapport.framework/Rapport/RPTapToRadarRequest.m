@interface RPTapToRadarRequest
- (RPTapToRadarRequest)initWithTitle:(id)a3 message:(id)a4;
@end

@implementation RPTapToRadarRequest

- (RPTapToRadarRequest)initWithTitle:(id)a3 message:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RPTapToRadarRequest;
  v9 = [(RPTapToRadarRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_message, a4);
  }

  return v10;
}

@end