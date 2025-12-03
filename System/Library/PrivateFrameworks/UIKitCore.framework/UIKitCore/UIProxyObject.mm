@interface UIProxyObject
+ (__CFDictionary)proxyDecodingMap;
+ (id)mappedObjectForCoder:(id)coder withIdentifier:(id)identifier;
+ (void)addMappingFromIdentifier:(id)identifier toObject:(id)object forCoder:(id)coder;
+ (void)addMappings:(id)mappings forCoder:(id)coder;
+ (void)removeMappingsForCoder:(id)coder;
- (UIProxyObject)initWithCoder:(id)coder;
- (void)setProxiedObjectIdentifier:(id)identifier;
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

+ (void)addMappingFromIdentifier:(id)identifier toObject:(id)object forCoder:(id)coder
{
  key = identifier;
  objectCopy = object;
  coderCopy = coder;
  Value = CFDictionaryGetValue([self proxyDecodingMap], coderCopy);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue([self proxyDecodingMap], coderCopy, Value);
    CFRelease(Value);
  }

  CFDictionarySetValue(Value, key, objectCopy);
}

+ (void)addMappings:(id)mappings forCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  mappingsCopy = mappings;
  coderCopy = coder;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [mappingsCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [mappingsCopy objectForKey:v12];
        [UIProxyObject addMappingFromIdentifier:v12 toObject:v13 forCoder:coderCopy];
      }

      v9 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

+ (id)mappedObjectForCoder:(id)coder withIdentifier:(id)identifier
{
  identifierCopy = identifier;
  coderCopy = coder;
  proxyDecodingMap = [objc_opt_class() proxyDecodingMap];
  Value = CFDictionaryGetValue(proxyDecodingMap, coderCopy);

  if (Value)
  {
    Value = CFDictionaryGetValue(Value, identifierCopy);
  }

  v9 = Value;

  return Value;
}

+ (void)removeMappingsForCoder:(id)coder
{
  key = coder;
  CFDictionaryRemoveValue([self proxyDecodingMap], key);
}

- (UIProxyObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = UIProxyObject;
  v5 = [(UIProxyObject *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UIProxiedObjectIdentifier"];
    v7 = [v6 copy];
    proxiedObjectIdentifier = v5->proxiedObjectIdentifier;
    v5->proxiedObjectIdentifier = v7;

    v9 = objc_opt_class();
    proxiedObjectIdentifier = [(UIProxyObject *)v5 proxiedObjectIdentifier];
    v11 = [v9 mappedObjectForCoder:coderCopy withIdentifier:proxiedObjectIdentifier];

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

- (void)setProxiedObjectIdentifier:(id)identifier
{
  if (self->proxiedObjectIdentifier != identifier)
  {
    v5 = [identifier copy];
    proxiedObjectIdentifier = self->proxiedObjectIdentifier;
    self->proxiedObjectIdentifier = v5;
  }
}

@end