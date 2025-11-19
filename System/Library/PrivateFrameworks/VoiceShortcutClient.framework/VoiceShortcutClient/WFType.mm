@interface WFType
- (BOOL)conformsToTypes:(id)a3;
- (BOOL)isEqualToType:(id)a3;
- (NSString)string;
- (id)description;
- (unint64_t)hash;
@end

@implementation WFType

- (unint64_t)hash
{
  v2 = [(WFType *)self string];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFType;
  v4 = [(WFType *)&v8 description];
  v5 = [(WFType *)self string];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

- (NSString)string
{
  result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[WFType string] must be overridden"];
  __break(1u);
  return result;
}

- (BOOL)isEqualToType:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WFType *)self string];
    v6 = [v4 string];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)conformsToTypes:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(WFType *)self conformsToType:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end