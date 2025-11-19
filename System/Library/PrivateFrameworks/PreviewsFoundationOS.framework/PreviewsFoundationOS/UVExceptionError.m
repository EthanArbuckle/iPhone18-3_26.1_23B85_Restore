@interface UVExceptionError
- (UVExceptionError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
- (UVExceptionError)initWithException:(id)a3;
@end

@implementation UVExceptionError

- (UVExceptionError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  v8 = MEMORY[0x277CBEAD8];
  v9 = a5;
  v10 = a3;
  v11 = [v8 alloc];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"UVExceptionError instantiated for domain %@ with code %zd.", v10, a4];

  v13 = [v11 initWithName:@"No exception specified" reason:v12 userInfo:v9];
  v14 = [(UVExceptionError *)self initWithException:v13];

  return v14;
}

- (UVExceptionError)initWithException:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v13[0] = *MEMORY[0x277CCA450];
  v6 = [v5 name];
  v14[0] = v6;
  v13[1] = *MEMORY[0x277CCA470];
  v7 = [v5 reason];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12.receiver = self;
  v12.super_class = UVExceptionError;
  v9 = [(UVExceptionError *)&v12 initWithDomain:@"com.apple.PreviewsFoundation.ExceptionError" code:0 userInfo:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_exception, a3);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

@end