@interface INCodableAttributeMetadata(Workflow)
- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:;
@end

@implementation INCodableAttributeMetadata(Workflow)

- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 placeholder];
  if (v5 && (v6 = v5, [v4 objectForKey:@"Placeholder"], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v13 = @"Placeholder";
    v9 = [a1 placeholder];
    v14[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v4 definitionByAddingEntriesInDictionary:v10];
  }

  else
  {
    v8 = v4;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

@end