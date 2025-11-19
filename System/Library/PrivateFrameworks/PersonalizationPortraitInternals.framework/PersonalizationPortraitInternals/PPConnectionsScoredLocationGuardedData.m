@interface PPConnectionsScoredLocationGuardedData
- (PPConnectionsScoredLocationGuardedData)init;
@end

@implementation PPConnectionsScoredLocationGuardedData

- (PPConnectionsScoredLocationGuardedData)init
{
  v8.receiver = self;
  v8.super_class = PPConnectionsScoredLocationGuardedData;
  v2 = [(PPConnectionsScoredLocationGuardedData *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    locations = v2->_locations;
    v2->_locations = v3;

    v5 = objc_opt_new();
    seenValues = v2->_seenValues;
    v2->_seenValues = v5;
  }

  return v2;
}

@end