@interface _UIActivityDiscoveryContext
+ (id)contextFromExtensionItem:(id)a3;
- (_UIActivityDiscoveryContext)initWithCoder:(id)a3;
- (id)newExtensionItem;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIActivityDiscoveryContext

+ (id)contextFromExtensionItem:(id)a3
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:@"_UIActivityViewDiscoveryContextKey"];
  v8 = [v3 unarchivedObjectOfClass:v5 fromData:v7 error:0];

  return v8;
}

- (_UIActivityDiscoveryContext)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UIActivityDiscoveryContext;
  v5 = [(_UIActivityDiscoveryContext *)&v11 init];
  if (v5)
  {
    v6 = _UISecureStandardPropertyListClasses();
    v7 = NSStringFromSelector(sel_activityItemValueExtensionMatchingDictionaries);
    v8 = [v4 decodeObjectOfClasses:v6 forKey:v7];
    activityItemValueExtensionMatchingDictionaries = v5->_activityItemValueExtensionMatchingDictionaries;
    v5->_activityItemValueExtensionMatchingDictionaries = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  activityItemValueExtensionMatchingDictionaries = self->_activityItemValueExtensionMatchingDictionaries;
  v4 = a3;
  v5 = NSStringFromSelector(sel_activityItemValueExtensionMatchingDictionaries);
  [v4 encodeObject:activityItemValueExtensionMatchingDictionaries forKey:v5];
}

- (id)newExtensionItem
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = objc_alloc_init(MEMORY[0x1E696ABE0]);
  v6 = @"_UIActivityViewDiscoveryContextKey";
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 setUserInfo:v4];

  return v3;
}

@end