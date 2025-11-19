@interface SXMutableComponents
- (id)debugDescription;
- (id)debugDescriptionForComponents:(id)a3 depth:(unint64_t)a4;
- (id)description;
@end

@implementation SXMutableComponents

- (id)description
{
  v2 = [(SXComponents *)self components];
  v3 = [v2 description];

  return v3;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = [(SXMutableComponents *)self debugDescriptionForComponents:self depth:0];
  v6 = [v3 initWithFormat:@"<%@: %p>\n%@", v4, self, v5];

  return v6;
}

- (id)debugDescriptionForComponents:(id)a3 depth:(unint64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v5 = [MEMORY[0x1E696AD60] string];
  v19 = a4;
  for (i = 2 * a4; i; --i)
  {
    [v5 appendString:@" "];
  }

  v7 = [MEMORY[0x1E696AD60] string];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v20 components];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * j);
        [v7 appendFormat:@"%@%@\n", v5, v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 identifier];
          v15 = [v20 componentsForContainerComponentWithIdentifier:v14];

          v16 = [(SXMutableComponents *)self debugDescriptionForComponents:v15 depth:v19 + 1];
          [v7 appendString:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  return v7;
}

@end