@interface POMutableJWT
- (BOOL)isJWE;
- (void)setBodyData:(id)data;
@end

@implementation POMutableJWT

- (BOOL)isJWE
{
  header = [(POMutableJWT *)self header];
  v3 = [header enc];
  v4 = v3 != 0;

  return v4;
}

- (void)setBodyData:(id)data
{
  v3.receiver = self;
  v3.super_class = POMutableJWT;
  [(POMutableJWT *)&v3 setBodyData:data];
}

@end