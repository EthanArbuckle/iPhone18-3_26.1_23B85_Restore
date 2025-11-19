@interface APOdmlAppInfo
- (APOdmlAppInfo)initWithBundleID:(id)a3 adamID:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
@end

@implementation APOdmlAppInfo

- (APOdmlAppInfo)initWithBundleID:(id)a3 adamID:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = APOdmlAppInfo;
  v7 = [(APOdmlAppInfo *)&v12 init];
  v9 = v7;
  if (v7)
  {
    objc_msgSend_setBundleID_(v7, v8, v6);
    objc_msgSend_setAdamID_(v9, v10, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    v9 = objc_msgSend_adamID(self, v7, v8);
    v12 = v9 == objc_msgSend_adamID(v4, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end