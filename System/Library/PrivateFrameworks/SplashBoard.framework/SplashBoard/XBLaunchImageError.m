@interface XBLaunchImageError
- (XBLaunchImageError)initWithCode:(int64_t)a3 bundleID:(id)a4 reason:(id)a5 fatal:(BOOL)a6;
- (XBLaunchImageError)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XBLaunchImageError

- (XBLaunchImageError)initWithCode:(int64_t)a3 bundleID:(id)a4 reason:(id)a5 fatal:(BOOL)a6
{
  v19[3] = *MEMORY[0x277D85DE8];
  self->_fatal = a6;
  v9 = *MEMORY[0x277CCA470];
  v18[0] = *MEMORY[0x277CCA450];
  v18[1] = v9;
  v19[0] = @"Unable to generate launch image";
  v19[1] = a5;
  v18[2] = @"XBApplicationBundleIdentifier";
  if (a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = @"Unknown application";
  }

  v19[2] = v10;
  v11 = MEMORY[0x277CBEAC0];
  v12 = a5;
  v13 = a4;
  v14 = [v11 dictionaryWithObjects:v19 forKeys:v18 count:3];
  v17.receiver = self;
  v17.super_class = XBLaunchImageError;
  v15 = [(XBLaunchImageError *)&v17 initWithDomain:@"XBLaunchStoryboardErrorDomain" code:a3 userInfo:v14];

  return v15;
}

- (XBLaunchImageError)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = XBLaunchImageError;
  v5 = [(XBLaunchImageError *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_fatal = [v4 decodeBoolForKey:@"fatal"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = XBLaunchImageError;
  v4 = a3;
  [(XBLaunchImageError *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_fatal forKey:{@"fatal", v5.receiver, v5.super_class}];
}

@end