@interface APOdmlAppInfo
- (APOdmlAppInfo)initWithBundleID:(id)d adamID:(unint64_t)iD;
- (BOOL)isEqual:(id)equal;
@end

@implementation APOdmlAppInfo

- (APOdmlAppInfo)initWithBundleID:(id)d adamID:(unint64_t)iD
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = APOdmlAppInfo;
  v7 = [(APOdmlAppInfo *)&v12 init];
  v9 = v7;
  if (v7)
  {
    objc_msgSend_setBundleID_(v7, v8, dCopy);
    objc_msgSend_setAdamID_(v9, v10, iD);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    v9 = objc_msgSend_adamID(self, v7, v8);
    v12 = v9 == objc_msgSend_adamID(equalCopy, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end