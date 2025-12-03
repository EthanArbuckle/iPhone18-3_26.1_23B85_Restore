@interface XBLaunchImageError
- (XBLaunchImageError)initWithCode:(int64_t)code bundleID:(id)d reason:(id)reason fatal:(BOOL)fatal;
- (XBLaunchImageError)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XBLaunchImageError

- (XBLaunchImageError)initWithCode:(int64_t)code bundleID:(id)d reason:(id)reason fatal:(BOOL)fatal
{
  v19[3] = *MEMORY[0x277D85DE8];
  self->_fatal = fatal;
  v9 = *MEMORY[0x277CCA470];
  v18[0] = *MEMORY[0x277CCA450];
  v18[1] = v9;
  v19[0] = @"Unable to generate launch image";
  v19[1] = reason;
  v18[2] = @"XBApplicationBundleIdentifier";
  if (d)
  {
    dCopy = d;
  }

  else
  {
    dCopy = @"Unknown application";
  }

  v19[2] = dCopy;
  v11 = MEMORY[0x277CBEAC0];
  reasonCopy = reason;
  dCopy2 = d;
  v14 = [v11 dictionaryWithObjects:v19 forKeys:v18 count:3];
  v17.receiver = self;
  v17.super_class = XBLaunchImageError;
  v15 = [(XBLaunchImageError *)&v17 initWithDomain:@"XBLaunchStoryboardErrorDomain" code:code userInfo:v14];

  return v15;
}

- (XBLaunchImageError)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = XBLaunchImageError;
  v5 = [(XBLaunchImageError *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_fatal = [coderCopy decodeBoolForKey:@"fatal"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = XBLaunchImageError;
  coderCopy = coder;
  [(XBLaunchImageError *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_fatal forKey:{@"fatal", v5.receiver, v5.super_class}];
}

@end