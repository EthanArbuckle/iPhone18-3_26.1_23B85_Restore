@interface NSValueTransformer
@end

@implementation NSValueTransformer

id __101__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_transformerWithFormatter_forObjectClass___block_invoke(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v47[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (!v7)
  {
    v18 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = *(a1 + 32);
    v40 = 0;
    v41 = 0;
    v9 = [v8 getObjectValue:&v41 forString:v7 errorDescription:&v40];
    v10 = v41;
    v11 = v40;
    *a3 = v9;
    if (v11)
    {
      if (a4)
      {
        v44[0] = *MEMORY[0x1E696A578];
        v12 = MEMORY[0x1E696AEC0];
        v13 = [MEMORY[0x1E696AAE8] mainBundle];
        v14 = [v13 localizedStringForKey:@"Could not convert string to %@" value:&stru_1F4A1C408 table:0];
        v15 = [v12 stringWithFormat:v14, *(a1 + 40)];
        v16 = *MEMORY[0x1E696A588];
        v45[0] = v15;
        v45[1] = v11;
        v44[1] = v16;
        v44[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
        v45[2] = v7;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];

        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v17];
      }
    }

    else
    {
      v28 = *(a1 + 40);
      if (objc_opt_isKindOfClass())
      {
        v18 = v10;
LABEL_15:

        goto LABEL_16;
      }

      if (a4)
      {
        v42[0] = *MEMORY[0x1E696A578];
        v29 = MEMORY[0x1E696AEC0];
        v39 = [MEMORY[0x1E696AAE8] mainBundle];
        v38 = [v39 localizedStringForKey:@"Could not convert string to %@" value:&stru_1F4A1C408 table:0];
        v30 = [v29 stringWithFormat:v38, *(a1 + 40)];
        v43[0] = v30;
        v42[1] = *MEMORY[0x1E696A588];
        v31 = MEMORY[0x1E696AEC0];
        v32 = [MEMORY[0x1E696AAE8] mainBundle];
        v33 = [v32 localizedStringForKey:@"Expected an %@ as output from the formatter value:got: %@." table:{&stru_1F4A1C408, 0}];
        v34 = [v31 stringWithFormat:v33, *(a1 + 40), v10];
        v43[1] = v34;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];

        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:2048 userInfo:v35];
      }
    }

    v18 = 0;
    *a3 = 0;
    goto LABEL_15;
  }

  if (a4)
  {
    v46[0] = *MEMORY[0x1E696A578];
    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AAE8] mainBundle];
    v21 = [v20 localizedStringForKey:@"Could not convert string to %@" value:&stru_1F4A1C408 table:0];
    v22 = [v19 stringWithFormat:v21, *(a1 + 40)];
    v47[0] = v22;
    v46[1] = *MEMORY[0x1E696A588];
    v23 = MEMORY[0x1E696AEC0];
    v24 = [MEMORY[0x1E696AAE8] mainBundle];
    v25 = [v24 localizedStringForKey:@"Expected an NSString as input value:got: %@." table:{&stru_1F4A1C408, 0}];
    v26 = [v23 stringWithFormat:v25, v7];
    v46[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
    v47[1] = v26;
    v47[2] = v7;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:3];

    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v27];
  }

  v18 = 0;
  *a3 = 0;
LABEL_16:

  v36 = *MEMORY[0x1E69E9840];

  return v18;
}

void *__101__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_transformerWithFormatter_forObjectClass___block_invoke_2(uint64_t a1, void *a2, BOOL *a3, void *a4)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (v7)
  {
    v8 = *(a1 + 40);
    if (objc_opt_isKindOfClass())
    {
      a4 = [*(a1 + 32) stringForObjectValue:v7];
      v9 = a4 != 0;
    }

    else if (a4)
    {
      v21[0] = *MEMORY[0x1E696A578];
      v10 = MEMORY[0x1E696AEC0];
      v11 = [MEMORY[0x1E696AAE8] mainBundle];
      v12 = [v11 localizedStringForKey:@"Could not convert %@ to string" value:&stru_1F4A1C408 table:0];
      v13 = [v10 stringWithFormat:v12, *(a1 + 40)];
      v22[0] = v13;
      v21[1] = *MEMORY[0x1E696A588];
      v14 = MEMORY[0x1E696AEC0];
      v15 = [MEMORY[0x1E696AAE8] mainBundle];
      v16 = [v15 localizedStringForKey:@"Expected an %@ as input value:got: %@." table:{&stru_1F4A1C408, 0}];
      v17 = [v14 stringWithFormat:v16, *(a1 + 40), v7];
      v21[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
      v22[1] = v17;
      v22[2] = v7;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v18];

      v9 = 0;
      a4 = 0;
    }

    else
    {
      v9 = 0;
    }

    *a3 = v9;
  }

  else
  {
    a4 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return a4;
}

void *__132__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_valueMappingTransformerWithDictionary_defaultValue_reverseDefaultValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (!v3)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6;
  if (!v6)
  {
    v7 = *(a1 + 40);
  }

  v8 = v7;

  if (!v3)
  {
  }

  return v7;
}

id __132__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_valueMappingTransformerWithDictionary_defaultValue_reverseDefaultValue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__61453;
  v16 = __Block_byref_object_dispose__61454;
  v17 = 0;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __132__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_valueMappingTransformerWithDictionary_defaultValue_reverseDefaultValue___block_invoke_148;
  v9[3] = &unk_1E837D318;
  v5 = v3;
  v10 = v5;
  v11 = &v12;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v13[5];
  if (!v6)
  {
    v6 = *(a1 + 40);
  }

  v7 = v6;

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __132__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_valueMappingTransformerWithDictionary_defaultValue_reverseDefaultValue___block_invoke_148(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 32) isEqual:a3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

id __91__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_validatingTransformerForClass___block_invoke(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (v7 && (v8 = *(a1 + 32), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (a4)
    {
      v19[0] = *MEMORY[0x1E696A578];
      v10 = [MEMORY[0x1E696AAE8] mainBundle];
      v11 = [v10 localizedStringForKey:@"Value did not match expected type" value:&stru_1F4A1C408 table:0];
      v20[0] = v11;
      v19[1] = *MEMORY[0x1E696A588];
      v12 = MEMORY[0x1E696AEC0];
      v13 = [MEMORY[0x1E696AAE8] mainBundle];
      v14 = [v13 localizedStringForKey:@"Expected %1$@ to be of class %2$@ but got %3$@" value:&stru_1F4A1C408 table:0];
      v15 = [v12 stringWithFormat:v14, v7, *(a1 + 32), objc_opt_class()];
      v19[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
      v20[1] = v15;
      v20[2] = v7;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v16];
    }

    v9 = 0;
    *a3 = 0;
  }

  else
  {
    v9 = v7;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

id __100__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_arrayMappingTransformerWithTransformer___block_invoke(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v55[3] = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = a4;
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v40 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v48;
        v12 = -1;
        obj = v8;
LABEL_5:
        v13 = 0;
        v14 = v12 + 1;
        v41 = v12 + v10;
        while (1)
        {
          if (*v48 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v47 + 1) + 8 * v13);
          v16 = [MEMORY[0x1E695DFB0] null];

          if (v15 == v16)
          {
            break;
          }

          v17 = [*(a1 + 32) conformsToProtocol:&unk_1F4AAC500];
          v18 = *(a1 + 32);
          if (v17)
          {
            v46 = 0;
            v19 = [v18 transformedValue:v15 success:a3 error:&v46];
            v20 = v46;
            if ((*a3 & 1) == 0)
            {
              v29 = obj;
              if (v39)
              {
                v51[0] = *MEMORY[0x1E696A578];
                v44 = v20;
                v42 = [MEMORY[0x1E696AAE8] mainBundle];
                v30 = [v42 localizedStringForKey:@"Could not transform array" value:&stru_1F4A1C408 table:0];
                v52[0] = v30;
                v51[1] = *MEMORY[0x1E696A588];
                v31 = MEMORY[0x1E696AEC0];
                v29 = obj;
                v32 = [MEMORY[0x1E696AAE8] mainBundle];
                v33 = [v32 localizedStringForKey:@"Could not transform value at index %ld" value:&stru_1F4A1C408 table:0];
                v34 = [v31 stringWithFormat:v33, v14];
                v35 = *MEMORY[0x1E696AA08];
                v52[1] = v34;
                v52[2] = v44;
                v51[2] = v35;
                v51[3] = @"MTLTransformerErrorHandlingInputValueErrorKey";
                v52[3] = obj;
                v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:4];

                *v39 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v36];

                v20 = v44;
              }

              v21 = 0;
              goto LABEL_26;
            }

            if (!v19)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }

          v19 = [v18 transformedValue:v15];
          if (v19)
          {
            goto LABEL_15;
          }

LABEL_16:

          ++v13;
          ++v14;
          if (v10 == v13)
          {
            v8 = obj;
            v10 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
            v12 = v41;
            if (v10)
            {
              goto LABEL_5;
            }

            goto LABEL_18;
          }
        }

        v19 = [MEMORY[0x1E695DFB0] null];
LABEL_15:
        [v7 addObject:v19];
        goto LABEL_16;
      }

LABEL_18:

      v21 = v7;
LABEL_26:

      v6 = v40;
    }

    else
    {
      if (a4)
      {
        v54[0] = *MEMORY[0x1E696A578];
        v22 = [MEMORY[0x1E696AAE8] mainBundle];
        v23 = [v22 localizedStringForKey:@"Could not transform non-array type" value:&stru_1F4A1C408 table:0];
        v55[0] = v23;
        v54[1] = *MEMORY[0x1E696A588];
        v24 = MEMORY[0x1E696AEC0];
        v25 = [MEMORY[0x1E696AAE8] mainBundle];
        v26 = [v25 localizedStringForKey:@"Expected an NSArray value:got: %@." table:{&stru_1F4A1C408, 0}];
        v27 = [v24 stringWithFormat:v26, v6];
        v54[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
        v55[1] = v27;
        v55[2] = v6;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:3];

        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v28];
      }

      v21 = 0;
      *a3 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v21;
}

id __100__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_arrayMappingTransformerWithTransformer___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v54[3] = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = a4;
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v40 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v47;
        v12 = -1;
LABEL_5:
        v13 = 0;
        v14 = v12 + 1;
        v41 = v12 + v10;
        while (1)
        {
          if (*v47 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v46 + 1) + 8 * v13);
          v16 = [MEMORY[0x1E695DFB0] null];

          if (v15 == v16)
          {
            break;
          }

          v17 = *(a1 + 32);
          v18 = objc_opt_respondsToSelector();
          v19 = *(a1 + 32);
          if (v18)
          {
            v45 = 0;
            v20 = [v19 reverseTransformedValue:v15 success:a3 error:&v45];
            v21 = v45;
            if ((*a3 & 1) == 0)
            {
              if (v39)
              {
                v50[0] = *MEMORY[0x1E696A578];
                v44 = v21;
                v43 = [MEMORY[0x1E696AAE8] mainBundle];
                v30 = [v43 localizedStringForKey:@"Could not transform array" value:&stru_1F4A1C408 table:0];
                v51[0] = v30;
                v50[1] = *MEMORY[0x1E696A588];
                v31 = MEMORY[0x1E696AEC0];
                v32 = [MEMORY[0x1E696AAE8] mainBundle];
                v33 = [v32 localizedStringForKey:@"Could not transform value at index %ld" value:&stru_1F4A1C408 table:0];
                v34 = [v31 stringWithFormat:v33, v14];
                v35 = *MEMORY[0x1E696AA08];
                v51[1] = v34;
                v51[2] = v44;
                v50[2] = v35;
                v50[3] = @"MTLTransformerErrorHandlingInputValueErrorKey";
                v51[3] = v8;
                v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:4];

                *v39 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v36];

                v21 = v44;
              }

              v22 = 0;
              goto LABEL_26;
            }

            if (!v20)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }

          v20 = [v19 reverseTransformedValue:v15];
          if (v20)
          {
            goto LABEL_15;
          }

LABEL_16:

          ++v13;
          ++v14;
          if (v10 == v13)
          {
            v10 = [v8 countByEnumeratingWithState:&v46 objects:v52 count:16];
            v12 = v41;
            if (v10)
            {
              goto LABEL_5;
            }

            goto LABEL_18;
          }
        }

        v20 = [MEMORY[0x1E695DFB0] null];
LABEL_15:
        [v7 addObject:v20];
        goto LABEL_16;
      }

LABEL_18:

      v22 = v7;
LABEL_26:

      v6 = v40;
    }

    else
    {
      if (a4)
      {
        v53[0] = *MEMORY[0x1E696A578];
        v23 = [MEMORY[0x1E696AAE8] mainBundle];
        v24 = [v23 localizedStringForKey:@"Could not transform non-array type" value:&stru_1F4A1C408 table:0];
        v54[0] = v24;
        v53[1] = *MEMORY[0x1E696A588];
        v25 = MEMORY[0x1E696AEC0];
        v26 = [MEMORY[0x1E696AAE8] mainBundle];
        v27 = [v26 localizedStringForKey:@"Expected an NSArray value:got: %@." table:{&stru_1F4A1C408, 0}];
        v28 = [v25 stringWithFormat:v27, v6];
        v53[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
        v54[1] = v28;
        v54[2] = v6;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:3];

        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v29];
      }

      v22 = 0;
      *a3 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v22;
}

void __84__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_BOOLeanValueTransformer__block_invoke()
{
  v0 = [MTLValueTransformer transformerUsingReversibleBlock:&__block_literal_global_52];
  v1 = mtl_BOOLeanValueTransformer_BOOLeanValueTransformer;
  mtl_BOOLeanValueTransformer_BOOLeanValueTransformer = v0;
}

id __84__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_BOOLeanValueTransformer__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 BOOLValue];
      v8 = MEMORY[0x1E695E4D0];
      if (!v7)
      {
        v8 = MEMORY[0x1E695E4C0];
      }

      v9 = *v8;
    }

    else
    {
      if (a4)
      {
        v19[0] = *MEMORY[0x1E696A578];
        v10 = [MEMORY[0x1E696AAE8] mainBundle];
        v11 = [v10 localizedStringForKey:@"Could not convert number to BOOLean-backed number or vice-versa" value:&stru_1F4A1C408 table:0];
        v20[0] = v11;
        v19[1] = *MEMORY[0x1E696A588];
        v12 = MEMORY[0x1E696AEC0];
        v13 = [MEMORY[0x1E696AAE8] mainBundle];
        v14 = [v13 localizedStringForKey:@"Expected an NSNumber value:got: %@." table:{&stru_1F4A1C408, 0}];
        v15 = [v12 stringWithFormat:v14, v6];
        v19[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
        v20[1] = v15;
        v20[2] = v6;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v16];
      }

      v9 = 0;
      *a3 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

void __81__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_UUIDValueTransformer__block_invoke()
{
  v0 = [MTLValueTransformer transformerUsingForwardBlock:&__block_literal_global_31 reverseBlock:&__block_literal_global_41];
  v1 = mtl_UUIDValueTransformer_UUIDValueTransformer;
  mtl_UUIDValueTransformer_UUIDValueTransformer = v0;
}

id __81__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_UUIDValueTransformer__block_invoke_3(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 UUIDString];
    }

    else
    {
      if (a4)
      {
        v17[0] = *MEMORY[0x1E696A578];
        v8 = [MEMORY[0x1E696AAE8] mainBundle];
        v9 = [v8 localizedStringForKey:@"Could not convert UUID to string" value:&stru_1F4A1C408 table:0];
        v18[0] = v9;
        v17[1] = *MEMORY[0x1E696A588];
        v10 = MEMORY[0x1E696AEC0];
        v11 = [MEMORY[0x1E696AAE8] mainBundle];
        v12 = [v11 localizedStringForKey:@"Expected an NSUUID value:got: %@." table:{&stru_1F4A1C408, 0}];
        v13 = [v10 stringWithFormat:v12, v6];
        v17[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
        v18[1] = v13;
        v18[2] = v6;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v14];
      }

      v7 = 0;
      *a3 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

id __81__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_UUIDValueTransformer__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v29[3] = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        if (a4)
        {
          v26[0] = *MEMORY[0x1E696A578];
          v17 = [MEMORY[0x1E696AAE8] mainBundle];
          v18 = [v17 localizedStringForKey:@"Could not convert string to UUID" value:&stru_1F4A1C408 table:0];
          v27[0] = v18;
          v26[1] = *MEMORY[0x1E696A588];
          v19 = MEMORY[0x1E696AEC0];
          v20 = [MEMORY[0x1E696AAE8] mainBundle];
          v21 = [v20 localizedStringForKey:@"Input UUID string %@ was malformed" value:&stru_1F4A1C408 table:0];
          v22 = [v19 stringWithFormat:v21, v6];
          v26[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
          v27[1] = v22;
          v27[2] = v6;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];

          *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v23];
        }

        *a3 = 0;
      }
    }

    else
    {
      if (a4)
      {
        v28[0] = *MEMORY[0x1E696A578];
        v10 = [MEMORY[0x1E696AAE8] mainBundle];
        v11 = [v10 localizedStringForKey:@"Could not convert string to UUID" value:&stru_1F4A1C408 table:0];
        v29[0] = v11;
        v28[1] = *MEMORY[0x1E696A588];
        v12 = MEMORY[0x1E696AEC0];
        v13 = [MEMORY[0x1E696AAE8] mainBundle];
        v14 = [v13 localizedStringForKey:@"Expected an NSString value:got: %@." table:{&stru_1F4A1C408, 0}];
        v15 = [v12 stringWithFormat:v14, v6];
        v28[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
        v29[1] = v15;
        v29[2] = v6;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];

        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v16];
      }

      v8 = 0;
      *a3 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v8;
}

void __80__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_URLValueTransformer__block_invoke()
{
  v0 = [MTLValueTransformer transformerUsingForwardBlock:&__block_literal_global_3 reverseBlock:&__block_literal_global_21];
  v1 = mtl_URLValueTransformer_URLValueTransformer;
  mtl_URLValueTransformer_URLValueTransformer = v0;
}

id __80__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_URLValueTransformer__block_invoke_3(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 absoluteString];
    }

    else
    {
      if (a4)
      {
        v17[0] = *MEMORY[0x1E696A578];
        v8 = [MEMORY[0x1E696AAE8] mainBundle];
        v9 = [v8 localizedStringForKey:@"Could not convert URL to string" value:&stru_1F4A1C408 table:0];
        v18[0] = v9;
        v17[1] = *MEMORY[0x1E696A588];
        v10 = MEMORY[0x1E696AEC0];
        v11 = [MEMORY[0x1E696AAE8] mainBundle];
        v12 = [v11 localizedStringForKey:@"Expected an NSURL value:got: %@." table:{&stru_1F4A1C408, 0}];
        v13 = [v10 stringWithFormat:v12, v6];
        v17[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
        v18[1] = v13;
        v18[2] = v6;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v14];
      }

      v7 = 0;
      *a3 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

id __80__NSValueTransformer_MTLPredefinedTransformerAdditions__mtl_URLValueTransformer__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v29[3] = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        if (a4)
        {
          v26[0] = *MEMORY[0x1E696A578];
          v17 = [MEMORY[0x1E696AAE8] mainBundle];
          v18 = [v17 localizedStringForKey:@"Could not convert string to URL" value:&stru_1F4A1C408 table:0];
          v27[0] = v18;
          v26[1] = *MEMORY[0x1E696A588];
          v19 = MEMORY[0x1E696AEC0];
          v20 = [MEMORY[0x1E696AAE8] mainBundle];
          v21 = [v20 localizedStringForKey:@"Input URL string %@ was malformed" value:&stru_1F4A1C408 table:0];
          v22 = [v19 stringWithFormat:v21, v6];
          v26[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
          v27[1] = v22;
          v27[2] = v6;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];

          *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v23];
        }

        *a3 = 0;
      }
    }

    else
    {
      if (a4)
      {
        v28[0] = *MEMORY[0x1E696A578];
        v10 = [MEMORY[0x1E696AAE8] mainBundle];
        v11 = [v10 localizedStringForKey:@"Could not convert string to URL" value:&stru_1F4A1C408 table:0];
        v29[0] = v11;
        v28[1] = *MEMORY[0x1E696A588];
        v12 = MEMORY[0x1E696AEC0];
        v13 = [MEMORY[0x1E696AAE8] mainBundle];
        v14 = [v13 localizedStringForKey:@"Expected an NSString value:got: %@." table:{&stru_1F4A1C408, 0}];
        v15 = [v12 stringWithFormat:v14, v6];
        v28[2] = @"MTLTransformerErrorHandlingInputValueErrorKey";
        v29[1] = v15;
        v29[2] = v6;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];

        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLTransformerErrorHandlingErrorDomain" code:1 userInfo:v16];
      }

      v8 = 0;
      *a3 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v8;
}

@end