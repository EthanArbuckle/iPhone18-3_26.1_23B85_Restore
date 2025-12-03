@interface VSJSError
- (VSJSError)init;
- (id)description;
- (id)error;
@end

@implementation VSJSError

- (VSJSError)init
{
  currentAppContext = [MEMORY[0x277D1B028] currentAppContext];
  v6.receiver = self;
  v6.super_class = VSJSError;
  v4 = [(IKJSObject *)&v6 initWithAppContext:currentAppContext];

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15.receiver = self;
  v15.super_class = VSJSError;
  v4 = [(VSJSError *)&v15 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[VSJSError code](self, "code")}];
  v7 = [v5 stringWithFormat:@"%@=%@", @"code", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x277CCACA8];
  message = [(VSJSError *)self message];
  v10 = [v8 stringWithFormat:@"%@=%@", @"message", message];
  [v3 addObject:v10];

  v11 = MEMORY[0x277CCACA8];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

- (id)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  message = [(VSJSError *)self message];
  v4 = message;
  if (message)
  {
    v10 = *MEMORY[0x277CCA450];
    v5 = [message copy];
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE2480] code:-[VSJSError code](self userInfo:{"code"), v6}];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end