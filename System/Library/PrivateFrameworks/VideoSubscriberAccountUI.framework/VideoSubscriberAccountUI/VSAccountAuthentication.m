@interface VSAccountAuthentication
- (VSAccountAuthentication)init;
- (id)description;
@end

@implementation VSAccountAuthentication

- (VSAccountAuthentication)init
{
  v6.receiver = self;
  v6.super_class = VSAccountAuthentication;
  v2 = [(VSAccountAuthentication *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CE2298]);
    authenticationToken = v2->_authenticationToken;
    v2->_authenticationToken = v3;

    v2->_synchronizable = 1;
  }

  return v2;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCACA8];
  v5 = [(VSAccountAuthentication *)self username];
  v6 = [v4 stringWithFormat:@"%@ = %@", @"username", v5];
  [v3 addObject:v6];

  v7 = MEMORY[0x277CCACA8];
  v8 = [(VSAccountAuthentication *)self authenticationToken];
  v9 = [v7 stringWithFormat:@"%@ = %@", @"authenticationToken", v8];
  [v3 addObject:v9];

  v10 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = VSAccountAuthentication;
  v11 = [(VSAccountAuthentication *)&v15 description];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v10 stringWithFormat:@"<%@ %@>", v11, v12];

  return v13;
}

@end