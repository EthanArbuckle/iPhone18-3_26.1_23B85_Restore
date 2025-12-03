@interface _UIActivityDiscoveryContext
+ (id)contextFromExtensionItem:(id)item;
- (_UIActivityDiscoveryContext)initWithCoder:(id)coder;
- (id)newExtensionItem;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIActivityDiscoveryContext

+ (id)contextFromExtensionItem:(id)item
{
  v3 = MEMORY[0x1E696ACD0];
  itemCopy = item;
  v5 = objc_opt_class();
  userInfo = [itemCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:@"_UIActivityViewDiscoveryContextKey"];
  v8 = [v3 unarchivedObjectOfClass:v5 fromData:v7 error:0];

  return v8;
}

- (_UIActivityDiscoveryContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _UIActivityDiscoveryContext;
  v5 = [(_UIActivityDiscoveryContext *)&v11 init];
  if (v5)
  {
    v6 = _UISecureStandardPropertyListClasses();
    v7 = NSStringFromSelector(sel_activityItemValueExtensionMatchingDictionaries);
    v8 = [coderCopy decodeObjectOfClasses:v6 forKey:v7];
    activityItemValueExtensionMatchingDictionaries = v5->_activityItemValueExtensionMatchingDictionaries;
    v5->_activityItemValueExtensionMatchingDictionaries = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  activityItemValueExtensionMatchingDictionaries = self->_activityItemValueExtensionMatchingDictionaries;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_activityItemValueExtensionMatchingDictionaries);
  [coderCopy encodeObject:activityItemValueExtensionMatchingDictionaries forKey:v5];
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