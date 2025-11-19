@interface SMCloudKitQosOptions
- (SMCloudKitQosOptions)initWithDefaultQos:(BOOL)a3 masqueradeBundleID:(id)a4 xpcActivity:(id)a5;
@end

@implementation SMCloudKitQosOptions

- (SMCloudKitQosOptions)initWithDefaultQos:(BOOL)a3 masqueradeBundleID:(id)a4 xpcActivity:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SMCloudKitQosOptions;
  v11 = [(SMCloudKitQosOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_defaultQos = a3;
    objc_storeStrong(&v11->_masqueradeBundleID, a4);
    objc_storeStrong(&v12->_xpcActivity, a5);
  }

  return v12;
}

@end