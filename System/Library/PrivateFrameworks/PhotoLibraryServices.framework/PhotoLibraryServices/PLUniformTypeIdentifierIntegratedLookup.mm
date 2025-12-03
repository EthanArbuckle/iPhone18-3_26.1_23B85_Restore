@interface PLUniformTypeIdentifierIntegratedLookup
+ (id)compactRepresentationForIdentifier:(id)identifier;
+ (id)compactRepresentationsForIdentifiers:(id)identifiers;
+ (id)identifierFromCompactRepresentation:(id)representation;
+ (signed)conformanceHintForIdentifier:(id)identifier;
@end

@implementation PLUniformTypeIdentifierIntegratedLookup

+ (id)identifierFromCompactRepresentation:(id)representation
{
  v12 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  identifier = [representationCopy length];
  if (identifier)
  {
    if ([representationCopy hasPrefix:@"_"] && identifier > objc_msgSend(@"_", "length"))
    {
      identifier = [representationCopy substringFromIndex:{objc_msgSend(@"_", "length")}];
      goto LABEL_13;
    }

    intValue = [representationCopy intValue];
    if (intValue < 1)
    {
      v7 = PLBackendGetLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        identifier = 0;
        goto LABEL_13;
      }

      v10 = 138543362;
      v11 = representationCopy;
      v8 = "Unable to decode compact UTI value (non natural number): %{public}@";
    }

    else
    {
      v6 = PLUTTypeFromUniformFileType(intValue);
      identifier = [v6 identifier];

      if (identifier)
      {
        goto LABEL_13;
      }

      v7 = PLBackendGetLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v10 = 138543362;
      v11 = representationCopy;
      v8 = "Unable to decode compact UTI value (not in list): %{public}@";
    }

    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, v8, &v10, 0xCu);
    goto LABEL_12;
  }

LABEL_13:

  return identifier;
}

+ (id)compactRepresentationsForIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self compactRepresentationForIdentifier:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)compactRepresentationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy && (v5 = PLFileTypeFromIdentifier(identifierCopy), v5))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
    stringValue = [v6 stringValue];
  }

  else
  {
    stringValue = [@"_" stringByAppendingString:v4];
  }

  return stringValue;
}

+ (signed)conformanceHintForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = PLFileTypeFromIdentifier(identifierCopy);
  if (v4)
  {
    v5 = 2;
    if (v4 <= 0x27)
    {
      if ((0xF800000uLL >> v4))
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }

      if ((0x1DEuLL >> v4))
      {
        v6 = 1;
      }

      if (v4 > 0x25)
      {
        v6 = 1;
      }

      if ((0x7FFE00uLL >> v4))
      {
        v5 = 2;
      }

      else
      {
        v5 = v6;
      }
    }
  }

  else
  {
    v7 = *MEMORY[0x1E6982E30];
    identifier = [*MEMORY[0x1E6982E30] identifier];
    v9 = [identifierCopy isEqualToString:identifier];

    if (v9)
    {
      v5 = 1;
    }

    else
    {
      v10 = [MEMORY[0x1E6982C40] typeWithIdentifier:identifierCopy];
      if ([v10 conformsToType:*MEMORY[0x1E6982F88]])
      {
        v5 = 2;
      }

      else if ([v10 conformsToType:v7])
      {
        v5 = 1;
      }

      else if ([v10 conformsToType:*MEMORY[0x1E6982EE8]])
      {
        v5 = 3;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

@end