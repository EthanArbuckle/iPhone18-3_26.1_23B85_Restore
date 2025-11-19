@interface LNCodableValue(Serialization)
+ (id)valueFromSerializedRepresentation:()Serialization variableProvider:parameter:;
- (id)wfSerializedRepresentation;
@end

@implementation LNCodableValue(Serialization)

- (id)wfSerializedRepresentation
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ACB0];
  v2 = [a1 data];
  v3 = [v1 JSONObjectWithData:v2 options:0 error:0];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)valueFromSerializedRepresentation:()Serialization variableProvider:parameter:
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:0 error:0];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E69AC748]) initWithData:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end