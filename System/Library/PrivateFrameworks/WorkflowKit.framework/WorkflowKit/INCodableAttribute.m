@interface INCodableAttribute
@end

@implementation INCodableAttribute

id __87__INCodableAttribute_Workflow__wf_updatedParameterDefinition_parameterClass_localizer___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) arraySizeForSizeClass:a2];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:v2];
  }

  return v3;
}

void __87__INCodableAttribute_Workflow__wf_updatedParameterDefinition_parameterClass_localizer___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v5];

  if (!v7)
  {
    v8 = *(*(*(a1 + 32) + 8) + 40);
    v14 = v5;
    v15[0] = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v8 definitionByAddingEntriesInDictionary:v9];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end