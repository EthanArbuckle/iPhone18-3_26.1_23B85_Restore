@interface _SFAESKey
- (id)initRandomKeyWithSpecifier:(id)a3 error:(id *)a4;
@end

@implementation _SFAESKey

- (id)initRandomKeyWithSpecifier:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = _SFAESKey;
  return [(_SFSymmetricKey *)&v5 initRandomKeyWithSpecifier:a3 error:a4];
}

@end