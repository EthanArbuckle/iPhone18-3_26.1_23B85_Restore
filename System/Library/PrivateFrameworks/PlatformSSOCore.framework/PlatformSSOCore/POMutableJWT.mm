@interface POMutableJWT
- (BOOL)isJWE;
- (void)setBodyData:(id)a3;
@end

@implementation POMutableJWT

- (BOOL)isJWE
{
  v2 = [(POMutableJWT *)self header];
  v3 = [v2 enc];
  v4 = v3 != 0;

  return v4;
}

- (void)setBodyData:(id)a3
{
  v3.receiver = self;
  v3.super_class = POMutableJWT;
  [(POMutableJWT *)&v3 setBodyData:a3];
}

@end