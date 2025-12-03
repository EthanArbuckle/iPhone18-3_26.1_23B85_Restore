@interface VRXResponse
- (VRXResponse)initWithModel:(id)model responseType:(int64_t)type;
@end

@implementation VRXResponse

- (VRXResponse)initWithModel:(id)model responseType:(int64_t)type
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = VRXResponse;
  v8 = [(VRXResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_model, model);
    v9->_responseType = type;
  }

  return v9;
}

@end