@interface RBSWrappedLSInfo
- (id)_initWithBundleID:(id)a3 personaString:(id)a4 persistentJobLabel:(id)a5 platform:(int)a6 bundleInode:(unint64_t)a7 execInode:(unint64_t)a8;
@end

@implementation RBSWrappedLSInfo

- (id)_initWithBundleID:(id)a3 personaString:(id)a4 persistentJobLabel:(id)a5 platform:(int)a6 bundleInode:(unint64_t)a7 execInode:(unint64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v22.receiver = self;
  v22.super_class = RBSWrappedLSInfo;
  v18 = [(RBSWrappedLSInfo *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_bundleID, a3);
    objc_storeStrong(&v19->_personaString, a4);
    objc_storeStrong(&v19->_persistentJobLabel, a5);
    v19->_platform = a6;
    v19->_bundleInode = a7;
    v19->_execInode = a8;
    v20 = v19;
  }

  return v19;
}

@end