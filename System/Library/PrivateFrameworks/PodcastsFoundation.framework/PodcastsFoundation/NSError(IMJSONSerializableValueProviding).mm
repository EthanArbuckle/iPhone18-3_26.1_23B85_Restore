@interface NSError(IMJSONSerializableValueProviding)
- (id)im_jsonSerializableValue;
@end

@implementation NSError(IMJSONSerializableValueProviding)

- (id)im_jsonSerializableValue
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "code")}];
  v13[0] = v2;
  v12[1] = @"domain";
  v3 = [a1 domain];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F548B930;
  }

  v13[1] = v5;
  v12[2] = @"localizedDescription";
  v6 = [a1 localizedDescription];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1F548B930;
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end