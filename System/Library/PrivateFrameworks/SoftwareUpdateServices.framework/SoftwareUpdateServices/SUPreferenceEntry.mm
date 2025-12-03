@interface SUPreferenceEntry
- (SUPreferenceEntry)initWithKey:(id)key type:(int64_t)type description:(id)description;
@end

@implementation SUPreferenceEntry

- (SUPreferenceEntry)initWithKey:(id)key type:(int64_t)type description:(id)description
{
  keyCopy = key;
  descriptionCopy = description;
  v14.receiver = self;
  v14.super_class = SUPreferenceEntry;
  v11 = [(SUPreferenceEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    if (keyCopy)
    {
      objc_storeStrong(&v11->_preferenceKey, key);
    }

    v12->_type = type;
    if (descriptionCopy)
    {
      objc_storeStrong(&v12->_description, description);
    }
  }

  return v12;
}

@end