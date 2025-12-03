@interface UVExceptionError
- (UVExceptionError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
- (UVExceptionError)initWithException:(id)exception;
@end

@implementation UVExceptionError

- (UVExceptionError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  v8 = MEMORY[0x277CBEAD8];
  infoCopy = info;
  domainCopy = domain;
  v11 = [v8 alloc];
  code = [MEMORY[0x277CCACA8] stringWithFormat:@"UVExceptionError instantiated for domain %@ with code %zd.", domainCopy, code];

  v13 = [v11 initWithName:@"No exception specified" reason:code userInfo:infoCopy];
  v14 = [(UVExceptionError *)self initWithException:v13];

  return v14;
}

- (UVExceptionError)initWithException:(id)exception
{
  v14[2] = *MEMORY[0x277D85DE8];
  exceptionCopy = exception;
  v13[0] = *MEMORY[0x277CCA450];
  name = [exceptionCopy name];
  v14[0] = name;
  v13[1] = *MEMORY[0x277CCA470];
  reason = [exceptionCopy reason];
  v14[1] = reason;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12.receiver = self;
  v12.super_class = UVExceptionError;
  v9 = [(UVExceptionError *)&v12 initWithDomain:@"com.apple.PreviewsFoundation.ExceptionError" code:0 userInfo:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_exception, exception);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

@end