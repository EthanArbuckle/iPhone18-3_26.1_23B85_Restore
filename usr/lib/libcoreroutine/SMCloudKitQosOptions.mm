@interface SMCloudKitQosOptions
- (SMCloudKitQosOptions)initWithDefaultQos:(BOOL)qos masqueradeBundleID:(id)d xpcActivity:(id)activity;
@end

@implementation SMCloudKitQosOptions

- (SMCloudKitQosOptions)initWithDefaultQos:(BOOL)qos masqueradeBundleID:(id)d xpcActivity:(id)activity
{
  dCopy = d;
  activityCopy = activity;
  v14.receiver = self;
  v14.super_class = SMCloudKitQosOptions;
  v11 = [(SMCloudKitQosOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_defaultQos = qos;
    objc_storeStrong(&v11->_masqueradeBundleID, d);
    objc_storeStrong(&v12->_xpcActivity, activity);
  }

  return v12;
}

@end