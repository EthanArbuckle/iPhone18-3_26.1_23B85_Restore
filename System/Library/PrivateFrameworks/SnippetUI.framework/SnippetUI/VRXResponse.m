@interface VRXResponse
- (VRXResponse)initWithModel:(id)a3 responseType:(int64_t)a4;
@end

@implementation VRXResponse

- (VRXResponse)initWithModel:(id)a3 responseType:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = VRXResponse;
  v8 = [(VRXResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_model, a3);
    v9->_responseType = a4;
  }

  return v9;
}

@end