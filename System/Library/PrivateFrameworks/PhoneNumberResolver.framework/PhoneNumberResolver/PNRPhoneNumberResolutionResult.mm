@interface PNRPhoneNumberResolutionResult
- (PNRPhoneNumberResolutionResult)initWithLocationName:(id)a3 locationDataSource:(int64_t)a4;
@end

@implementation PNRPhoneNumberResolutionResult

- (PNRPhoneNumberResolutionResult)initWithLocationName:(id)a3 locationDataSource:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PNRPhoneNumberResolutionResult;
  v8 = [(PNRPhoneNumberResolutionResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationName, a3);
    v9->_dataSource = a4;
  }

  return v9;
}

@end