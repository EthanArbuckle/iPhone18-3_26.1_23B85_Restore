@interface _SFCredentialIdentityTypeMatcher
+ (id)allTypes;
+ (id)singleType:(int64_t)a3;
@end

@implementation _SFCredentialIdentityTypeMatcher

+ (id)allTypes
{
  v2 = objc_alloc_init(_SFCredentialIdentityTypeMatcher);
  v2->_matchAllTypes = 1;
  v2->_typeToMatch = 0;

  return v2;
}

+ (id)singleType:(int64_t)a3
{
  v4 = objc_alloc_init(_SFCredentialIdentityTypeMatcher);
  v4->_matchAllTypes = 0;
  v4->_typeToMatch = a3;

  return v4;
}

@end