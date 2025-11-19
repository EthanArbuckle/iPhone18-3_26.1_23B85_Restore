@interface WBSFormAutoFillTestSupport
+ (id)stringRepresentationFromMetadataProvider:(id)a3;
@end

@implementation WBSFormAutoFillTestSupport

+ (id)stringRepresentationFromMetadataProvider:(id)a3
{
  v3 = a3;
  v4 = [v3 formCount];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
    v6 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __71__WBSFormAutoFillTestSupport_stringRepresentationFromMetadataProvider___block_invoke;
    v22[3] = &unk_1E7FC5AC8;
    v23 = v5;
    v7 = v6;
    v24 = v7;
    v8 = v5;
    [v3 enumerateFormsAndFramesUsingBlock:v22];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__WBSFormAutoFillTestSupport_stringRepresentationFromMetadataProvider___block_invoke_2;
    v20[3] = &unk_1E7FC5AF0;
    v9 = v7;
    v21 = v9;
    [v8 sortWithOptions:16 usingComparator:v20];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __71__WBSFormAutoFillTestSupport_stringRepresentationFromMetadataProvider___block_invoke_3;
    v18 = &unk_1E7FC5B18;
    v19 = v9;
    v10 = v9;
    v11 = [v8 safari_mapObjectsUsingBlock:&v15];
    v12 = [v11 componentsJoinedByString:{@" ", v15, v16, v17, v18}];
    v13 = [v12 stringByAppendingString:@"\n"];
  }

  else
  {
    v13 = @"No forms exist on this page.\n";
  }

  return v13;
}

void __71__WBSFormAutoFillTestSupport_stringRepresentationFromMetadataProvider___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v27[5] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 addObject:v5];
  v6 = *(a1 + 40);
  v7 = [v5 dictionaryRepresentation];
  v8 = sanitizedMetadata(v7);
  v9 = [v7 safari_arrayForKey:@"FormControls"];
  v10 = [v9 safari_mapObjectsUsingBlock:&__block_literal_global_48];
  [v8 setObject:v10 forKey:@"FormControls"];
  [v8 removeObjectForKey:@"FormID"];
  [v8 removeObjectForKey:@"RequestType"];
  [v8 removeObjectForKey:@"TextSample"];
  v26[0] = @"UsernameElementUniqueID";
  v26[1] = @"PasswordElementUniqueID";
  v27[0] = @"UsernameElement";
  v27[1] = @"PasswordElement";
  v26[2] = @"OldPasswordElementUniqueID";
  v26[3] = @"ConfirmPasswordElementUniqueID";
  v27[2] = @"OldPasswordElement";
  v27[3] = @"ConfirmPasswordElement";
  v26[4] = @"FirstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID";
  v27[4] = @"FirstCreditCardCardholderFieldOrCreditCardNumberField";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:5];
  v12 = [v8 copy];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __sanitizedFormMetadata_block_invoke_2;
  v22 = &unk_1E7FC5B60;
  v23 = v11;
  v13 = v8;
  v24 = v13;
  v25 = v9;
  v14 = v11;
  v15 = v9;
  [v12 enumerateKeysAndObjectsUsingBlock:&v19];
  v16 = v25;
  v17 = v13;

  v18 = [v17 description];
  [v6 setObject:v18 forKey:v5];
}

uint64_t __71__WBSFormAutoFillTestSupport_stringRepresentationFromMetadataProvider___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = formRect(v5);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = formRect(v6);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v25.origin.x = v7;
  v25.origin.y = v9;
  v25.size.width = v11;
  v25.size.height = v13;
  if (CGRectIsEmpty(v25))
  {
    v26.origin.x = v14;
    v26.origin.y = v16;
    v26.size.width = v18;
    v26.size.height = v20;
    if (CGRectIsEmpty(v26))
    {
LABEL_3:
      v21 = [*(a1 + 32) objectForKey:v5];
      v22 = [*(a1 + 32) objectForKey:v6];
      v23 = [v21 compare:v22];

      goto LABEL_6;
    }
  }

  v27.origin.x = v7;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  if (CGRectIsEmpty(v27))
  {
LABEL_5:
    v23 = 1;
    goto LABEL_6;
  }

  v28.origin.x = v14;
  v28.origin.y = v16;
  v28.size.width = v18;
  v28.size.height = v20;
  v23 = -1;
  if (!CGRectIsEmpty(v28) && v9 >= v16)
  {
    if (v9 <= v16)
    {
      if (v7 < v14)
      {
        goto LABEL_6;
      }

      if (v7 <= v14)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_5;
  }

LABEL_6:

  return v23;
}

@end