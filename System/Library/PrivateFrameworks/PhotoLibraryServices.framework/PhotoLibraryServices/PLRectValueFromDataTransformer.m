@interface PLRectValueFromDataTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation PLRectValueFromDataTransformer

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 length] == 32)
    {
      v5 = [MEMORY[0x1E696B098] valueWithBytes:objc_msgSend(v4 objCType:{"bytes"), "{CGRect={CGPoint=dd}{CGSize=dd}}"}];

      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (id)transformedValue:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    memset(v6, 0, sizeof(v6));
    [v3 getValue:v6];
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:32];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end