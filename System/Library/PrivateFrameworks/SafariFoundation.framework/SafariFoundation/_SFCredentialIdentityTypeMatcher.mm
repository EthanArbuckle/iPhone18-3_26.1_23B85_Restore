@interface _SFCredentialIdentityTypeMatcher
+ (id)allTypes;
+ (id)singleType:(int64_t)type;
@end

@implementation _SFCredentialIdentityTypeMatcher

+ (id)allTypes
{
  v2 = objc_alloc_init(_SFCredentialIdentityTypeMatcher);
  v2->_matchAllTypes = 1;
  v2->_typeToMatch = 0;

  return v2;
}

+ (id)singleType:(int64_t)type
{
  v4 = objc_alloc_init(_SFCredentialIdentityTypeMatcher);
  v4->_matchAllTypes = 0;
  v4->_typeToMatch = type;

  return v4;
}

@end