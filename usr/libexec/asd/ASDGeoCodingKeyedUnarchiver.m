@interface ASDGeoCodingKeyedUnarchiver
- (id)allowedClasses;
@end

@implementation ASDGeoCodingKeyedUnarchiver

- (id)allowedClasses
{
  Class = objc_getClass("ASGeoCodeResult");
  if (!Class)
  {
    v3 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_1005933BC(v3);
    }
  }

  v15 = objc_opt_self();
  v16[0] = v15;
  v4 = objc_opt_self();
  v16[1] = v4;
  v5 = objc_opt_self();
  v16[2] = v5;
  v6 = objc_opt_self();
  v16[3] = v6;
  v7 = objc_opt_self();
  v16[4] = v7;
  v8 = objc_opt_self();
  v16[5] = v8;
  v9 = objc_opt_self();
  v16[6] = v9;
  v10 = objc_opt_self();
  v16[7] = v10;
  v16[8] = Class;
  v11 = objc_opt_self();
  v16[9] = v11;
  v12 = [NSArray arrayWithObjects:v16 count:10];
  v13 = [NSSet setWithArray:v12];

  return v13;
}

@end