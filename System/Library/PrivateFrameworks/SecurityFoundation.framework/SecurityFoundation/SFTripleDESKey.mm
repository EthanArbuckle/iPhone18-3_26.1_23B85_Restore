@interface SFTripleDESKey
- (id)initRandomKeyWithSpecifier:(id)specifier error:(id *)error;
@end

@implementation SFTripleDESKey

- (id)initRandomKeyWithSpecifier:(id)specifier error:(id *)error
{
  v5.receiver = self;
  v5.super_class = SFTripleDESKey;
  return [(_SFSymmetricKey *)&v5 initRandomKeyWithSpecifier:specifier error:error];
}

@end