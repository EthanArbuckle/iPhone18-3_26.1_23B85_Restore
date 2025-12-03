@interface PNRPhoneNumberResolutionResult
- (PNRPhoneNumberResolutionResult)initWithLocationName:(id)name locationDataSource:(int64_t)source;
@end

@implementation PNRPhoneNumberResolutionResult

- (PNRPhoneNumberResolutionResult)initWithLocationName:(id)name locationDataSource:(int64_t)source
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = PNRPhoneNumberResolutionResult;
  v8 = [(PNRPhoneNumberResolutionResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationName, name);
    v9->_dataSource = source;
  }

  return v9;
}

@end