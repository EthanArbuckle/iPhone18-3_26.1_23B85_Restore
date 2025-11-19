@interface UIProxyObject
+ (__CFDictionary)proxyDecodingMap;
+ (id)mappedObjectForCoder:(id)a3 withIdentifier:(id)a4;
+ (void)addMappingFromIdentifier:(id)a3 toObject:(id)a4 forCoder:(id)a5;
+ (void)addMappings:(id)a3 forCoder:(id)a4;
+ (void)removeMappingsForCoder:(id)a3;
- (UIProxyObject)initWithCoder:(id)a3;
- (void)setProxiedObjectIdentifier:(id)a3;
@end

@implementation UIProxyObject

+ (__CFDictionary)proxyDecodingMap
{
  result = proxyDecodingMap_proxyDecodingMap;
  if (!proxyDecodingMap_proxyDecodingMap)
  {
    v3 = *(MEMORY[0x1E695E9D8] + 16);
    *&v4.version = *MEMORY[0x1E695E9D8];
    *&v4.release = v3;
    v4.equal = 0;
    v4.hash = 0;
    result = CFDictionaryCreateMutable(0, 0, &v4, MEMORY[0x1E695E9E8]);
    proxyDecodingMap_proxyDecodingMap = result;
  }

  return result;
}

+ (void)addMappingFromIdentifier:(id)a3 toObject:(id)a4 forCoder:(id)a5
{
  key = a3;
  v8 = a4;
  v9 = a5;
  Value = CFDictionaryGetValue([a1 proxyDecodingMap], v9);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue([a1 proxyDecodingMap], v9, Value);
    CFRelease(Value);
  }

  CFDictionarySetValue(Value, key, v8);
}

+ (void)addMappings:(id)a3 forCoder:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [v5 objectForKey:v12];
        [UIProxyObject addMappingFromIdentifier:v12 toObject:v13 forCoder:v6];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

+ (id)mappedObjectForCoder:(id)a3 withIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() proxyDecodingMap];
  Value = CFDictionaryGetValue(v7, v6);

  if (Value)
  {
    Value = CFDictionaryGetValue(Value, v5);
  }

  v9 = Value;

  return Value;
}

+ (void)removeMappingsForCoder:(id)a3
{
  key = a3;
  CFDictionaryRemoveValue([a1 proxyDecodingMap], key);
}

- (UIProxyObject)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UIProxyObject;
  v5 = [(UIProxyObject *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UIProxiedObjectIdentifier"];
    v7 = [v6 copy];
    proxiedObjectIdentifier = v5->proxiedObjectIdentifier;
    v5->proxiedObjectIdentifier = v7;

    v9 = objc_opt_class();
    v10 = [(UIProxyObject *)v5 proxiedObjectIdentifier];
    v11 = [v9 mappedObjectForCoder:v4 withIdentifier:v10];

    if (v11)
    {
      v12 = v11;

      v5 = v12;
    }

    else
    {
      NSLog(&cfstr_MissingProxyFo.isa, v5->proxiedObjectIdentifier);
    }
  }

  return v5;
}

- (void)setProxiedObjectIdentifier:(id)a3
{
  if (self->proxiedObjectIdentifier != a3)
  {
    v5 = [a3 copy];
    proxiedObjectIdentifier = self->proxiedObjectIdentifier;
    self->proxiedObjectIdentifier = v5;
  }
}

@end