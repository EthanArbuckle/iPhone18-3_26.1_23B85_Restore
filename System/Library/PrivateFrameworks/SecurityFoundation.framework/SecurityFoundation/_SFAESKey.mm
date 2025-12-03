@interface _SFAESKey
- (id)initRandomKeyWithSpecifier:(id)specifier error:(id *)error;
@end

@implementation _SFAESKey

- (id)initRandomKeyWithSpecifier:(id)specifier error:(id *)error
{
  v5.receiver = self;
  v5.super_class = _SFAESKey;
  return [(_SFSymmetricKey *)&v5 initRandomKeyWithSpecifier:specifier error:error];
}

@end