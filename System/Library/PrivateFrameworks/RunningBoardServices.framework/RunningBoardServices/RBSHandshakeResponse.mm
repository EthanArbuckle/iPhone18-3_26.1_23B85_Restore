@interface RBSHandshakeResponse
- (BOOL)isEqual:(id)equal;
- (RBSHandshakeResponse)initWithRBSXPCCoder:(id)coder;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSHandshakeResponse

- (BOOL)isEqual:(id)equal
{
  v32 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_29;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
LABEL_3:
    v6 = 0;
    goto LABEL_30;
  }

  handle = self->_handle;
  v8 = equalCopy->_handle;
  if (handle != v8)
  {
    v6 = 0;
    if (!handle || !v8)
    {
      goto LABEL_30;
    }

    if (![(RBSProcessHandle *)handle isEqual:?])
    {
      goto LABEL_3;
    }
  }

  assertionIdentifiersByOldIdentifier = self->_assertionIdentifiersByOldIdentifier;
  v10 = equalCopy->_assertionIdentifiersByOldIdentifier;
  if (assertionIdentifiersByOldIdentifier != v10)
  {
    v6 = 0;
    if (!assertionIdentifiersByOldIdentifier || !v10)
    {
      goto LABEL_30;
    }

    if (![(NSDictionary *)assertionIdentifiersByOldIdentifier isEqual:?])
    {
      goto LABEL_3;
    }
  }

  assertionErrorsByOldIdentifier = self->_assertionErrorsByOldIdentifier;
  v12 = equalCopy->_assertionErrorsByOldIdentifier;
  if (assertionErrorsByOldIdentifier != v12)
  {
    v6 = 0;
    if (!assertionErrorsByOldIdentifier || !v12)
    {
      goto LABEL_30;
    }

    if (![(NSDictionary *)assertionErrorsByOldIdentifier isEqual:?])
    {
      goto LABEL_3;
    }
  }

  managedEndpointByLaunchIdentifier = self->_managedEndpointByLaunchIdentifier;
  v14 = equalCopy->_managedEndpointByLaunchIdentifier;
  if (managedEndpointByLaunchIdentifier == v14)
  {
LABEL_29:
    v6 = 1;
    goto LABEL_30;
  }

  v6 = 0;
  if (managedEndpointByLaunchIdentifier && v14)
  {
    Count = CFDictionaryGetCount(managedEndpointByLaunchIdentifier);
    if (Count != CFDictionaryGetCount(v14))
    {
      goto LABEL_3;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = managedEndpointByLaunchIdentifier;
    v17 = [(NSDictionary *)v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          v22 = [(NSDictionary *)v16 objectForKey:v21, v27];
          v23 = [(__CFDictionary *)v14 objectForKey:v21];
          v24 = [v22 _isEquivalentToEndpoint:v23];

          if (!v24)
          {
            v6 = 0;
            goto LABEL_32;
          }
        }

        v18 = [(NSDictionary *)v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v6 = 1;
LABEL_32:
  }

LABEL_30:

  v25 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  handle = self->_handle;
  coderCopy = coder;
  [(RBSProcessHandle *)handle fullEncode:coderCopy forKey:@"_handle"];
  allKeys = [(NSDictionary *)self->_assertionIdentifiersByOldIdentifier allKeys];
  [coderCopy encodeObject:allKeys forKey:@"success-keys"];

  allValues = [(NSDictionary *)self->_assertionIdentifiersByOldIdentifier allValues];
  [coderCopy encodeObject:allValues forKey:@"success-values"];

  allKeys2 = [(NSDictionary *)self->_assertionErrorsByOldIdentifier allKeys];
  [coderCopy encodeObject:allKeys2 forKey:@"fail-keys"];

  allValues2 = [(NSDictionary *)self->_assertionErrorsByOldIdentifier allValues];
  [coderCopy encodeObject:allValues2 forKey:@"fail-values"];

  [coderCopy encodeDictionary:self->_managedEndpointByLaunchIdentifier forKey:@"_managedEndpointByLaunchIdentifier"];
}

- (RBSHandshakeResponse)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = RBSHandshakeResponse;
  v5 = [(RBSHandshakeResponse *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    if ([coderCopy containsValueForKey:@"success-values"])
    {
      v8 = MEMORY[0x1E695DF20];
      v9 = objc_opt_class();
      v10 = [coderCopy decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"success-values"];
      v11 = objc_opt_class();
      v12 = [coderCopy decodeCollectionOfClass:v11 containingClass:objc_opt_class() forKey:@"success-keys"];
      v13 = [v8 dictionaryWithObjects:v10 forKeys:v12];
      assertionIdentifiersByOldIdentifier = v5->_assertionIdentifiersByOldIdentifier;
      v5->_assertionIdentifiersByOldIdentifier = v13;
    }

    if ([coderCopy containsValueForKey:@"fail-values"])
    {
      v15 = MEMORY[0x1E695DF20];
      v16 = objc_opt_class();
      v17 = [coderCopy decodeCollectionOfClass:v16 containingClass:objc_opt_class() forKey:@"fail-values"];
      v18 = objc_opt_class();
      v19 = [coderCopy decodeCollectionOfClass:v18 containingClass:objc_opt_class() forKey:@"fail-keys"];
      v20 = [v15 dictionaryWithObjects:v17 forKeys:v19];
      assertionErrorsByOldIdentifier = v5->_assertionErrorsByOldIdentifier;
      v5->_assertionErrorsByOldIdentifier = v20;
    }

    v22 = [coderCopy decodeDictionaryOfClass:objc_opt_class() forKey:@"_managedEndpointByLaunchIdentifier"];
    managedEndpointByLaunchIdentifier = v5->_managedEndpointByLaunchIdentifier;
    v5->_managedEndpointByLaunchIdentifier = v22;
  }

  return v5;
}

@end