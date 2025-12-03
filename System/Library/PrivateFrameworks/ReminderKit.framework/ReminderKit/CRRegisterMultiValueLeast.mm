@interface CRRegisterMultiValueLeast
- (id)contents;
@end

@implementation CRRegisterMultiValueLeast

- (id)contents
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  values = [(CRRegisterMultiValue *)self values];
  v3 = 0;
  v4 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(values);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (!v3 || [v3 compare:*(*(&v11 + 1) + 8 * i)] == 1)
        {
          v8 = v7;

          v3 = v8;
        }
      }

      v4 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

@end