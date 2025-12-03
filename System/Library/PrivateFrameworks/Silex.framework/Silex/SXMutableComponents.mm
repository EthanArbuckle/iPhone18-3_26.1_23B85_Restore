@interface SXMutableComponents
- (id)debugDescription;
- (id)debugDescriptionForComponents:(id)components depth:(unint64_t)depth;
- (id)description;
@end

@implementation SXMutableComponents

- (id)description
{
  components = [(SXComponents *)self components];
  v3 = [components description];

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

- (id)debugDescriptionForComponents:(id)components depth:(unint64_t)depth
{
  v26 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  string = [MEMORY[0x1E696AD60] string];
  depthCopy = depth;
  for (i = 2 * depth; i; --i)
  {
    [string appendString:@" "];
  }

  string2 = [MEMORY[0x1E696AD60] string];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  components = [componentsCopy components];
  v9 = [components countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(components);
        }

        v13 = *(*(&v21 + 1) + 8 * j);
        [string2 appendFormat:@"%@%@\n", string, v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier = [v13 identifier];
          v15 = [componentsCopy componentsForContainerComponentWithIdentifier:identifier];

          v16 = [(SXMutableComponents *)self debugDescriptionForComponents:v15 depth:depthCopy + 1];
          [string2 appendString:v16];
        }
      }

      v10 = [components countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  return string2;
}

@end