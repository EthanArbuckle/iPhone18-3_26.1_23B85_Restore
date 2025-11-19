@interface SUPreferenceEntry
- (SUPreferenceEntry)initWithKey:(id)a3 type:(int64_t)a4 description:(id)a5;
@end

@implementation SUPreferenceEntry

- (SUPreferenceEntry)initWithKey:(id)a3 type:(int64_t)a4 description:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SUPreferenceEntry;
  v11 = [(SUPreferenceEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    if (v9)
    {
      objc_storeStrong(&v11->_preferenceKey, a3);
    }

    v12->_type = a4;
    if (v10)
    {
      objc_storeStrong(&v12->_description, a5);
    }
  }

  return v12;
}

@end