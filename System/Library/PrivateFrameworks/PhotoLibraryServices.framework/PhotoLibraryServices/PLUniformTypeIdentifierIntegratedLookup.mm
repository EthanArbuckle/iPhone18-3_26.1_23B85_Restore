@interface PLUniformTypeIdentifierIntegratedLookup
+ (id)compactRepresentationForIdentifier:(id)a3;
+ (id)compactRepresentationsForIdentifiers:(id)a3;
+ (id)identifierFromCompactRepresentation:(id)a3;
+ (signed)conformanceHintForIdentifier:(id)a3;
@end

@implementation PLUniformTypeIdentifierIntegratedLookup

+ (id)identifierFromCompactRepresentation:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 length];
  if (v4)
  {
    if ([v3 hasPrefix:@"_"] && v4 > objc_msgSend(@"_", "length"))
    {
      v4 = [v3 substringFromIndex:{objc_msgSend(@"_", "length")}];
      goto LABEL_13;
    }

    v5 = [v3 intValue];
    if (v5 < 1)
    {
      v7 = PLBackendGetLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        v4 = 0;
        goto LABEL_13;
      }

      v10 = 138543362;
      v11 = v3;
      v8 = "Unable to decode compact UTI value (non natural number): %{public}@";
    }

    else
    {
      v6 = PLUTTypeFromUniformFileType(v5);
      v4 = [v6 identifier];

      if (v4)
      {
        goto LABEL_13;
      }

      v7 = PLBackendGetLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v10 = 138543362;
      v11 = v3;
      v8 = "Unable to decode compact UTI value (not in list): %{public}@";
    }

    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, v8, &v10, 0xCu);
    goto LABEL_12;
  }

LABEL_13:

  return v4;
}

+ (id)compactRepresentationsForIdentifiers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
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

        v11 = [a1 compactRepresentationForIdentifier:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)compactRepresentationForIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (v5 = PLFileTypeFromIdentifier(v3), v5))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
    v7 = [v6 stringValue];
  }

  else
  {
    v7 = [@"_" stringByAppendingString:v4];
  }

  return v7;
}

+ (signed)conformanceHintForIdentifier:(id)a3
{
  v3 = a3;
  v4 = PLFileTypeFromIdentifier(v3);
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
    v8 = [*MEMORY[0x1E6982E30] identifier];
    v9 = [v3 isEqualToString:v8];

    if (v9)
    {
      v5 = 1;
    }

    else
    {
      v10 = [MEMORY[0x1E6982C40] typeWithIdentifier:v3];
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