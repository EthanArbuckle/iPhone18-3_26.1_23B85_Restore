@interface NSValueTransformer
@end

@implementation NSValueTransformer

void __65__NSValueTransformer_PosterFoundation__pf_ISO8601DateTransformer__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = [PFGenericValueTransformer alloc];
  v2 = objc_opt_self();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__NSValueTransformer_PosterFoundation__pf_ISO8601DateTransformer__block_invoke_2;
  v9[3] = &unk_1E8189BA8;
  v10 = v0;
  v3 = objc_opt_self();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__NSValueTransformer_PosterFoundation__pf_ISO8601DateTransformer__block_invoke_3;
  v7[3] = &unk_1E8189BD0;
  v8 = v10;
  v4 = v10;
  v5 = [(PFGenericValueTransformer *)v1 initWithTransformedValueClass:v2 transformer:v9 reverseValueClass:v3 reverseTransformer:v7];
  v6 = pf_ISO8601DateTransformer_transformer;
  pf_ISO8601DateTransformer_transformer = v5;
}

void __75__NSValueTransformer_PosterFoundation__pf_dateTransformerForDateFormatter___block_invoke(uint64_t a1)
{
  v2 = [PFGenericValueTransformer alloc];
  v3 = objc_opt_self();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__NSValueTransformer_PosterFoundation__pf_dateTransformerForDateFormatter___block_invoke_2;
  v9[3] = &unk_1E8189BA8;
  v10 = *(a1 + 32);
  v4 = objc_opt_self();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__NSValueTransformer_PosterFoundation__pf_dateTransformerForDateFormatter___block_invoke_3;
  v7[3] = &unk_1E8189BD0;
  v8 = *(a1 + 32);
  v5 = [(PFGenericValueTransformer *)v2 initWithTransformedValueClass:v3 transformer:v9 reverseValueClass:v4 reverseTransformer:v7];
  v6 = pf_dateTransformerForDateFormatter__transformer;
  pf_dateTransformerForDateFormatter__transformer = v5;
}

void __68__NSValueTransformer_PosterFoundation__pf_UUIDToNSStringTransformer__block_invoke()
{
  v0 = [PFGenericValueTransformer alloc];
  v3 = objc_opt_self();
  v1 = [(PFGenericValueTransformer *)v0 initWithTransformedValueClass:v3 transformer:&__block_literal_global_10 reverseValueClass:objc_opt_class() reverseTransformer:&__block_literal_global_14];
  v2 = pf_UUIDToNSStringTransformer_transformer;
  pf_UUIDToNSStringTransformer_transformer = v1;
}

id __68__NSValueTransformer_PosterFoundation__pf_UUIDToNSStringTransformer__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

void __68__NSValueTransformer_PosterFoundation__pf_JSONDictionaryTransformer__block_invoke()
{
  v0 = [PFGenericValueTransformer alloc];
  v4 = objc_opt_self();
  v1 = objc_opt_self();
  v2 = [(PFGenericValueTransformer *)v0 initWithTransformedValueClass:v4 transformer:&__block_literal_global_20_0 reverseValueClass:v1 reverseTransformer:&__block_literal_global_25_0];
  v3 = pf_JSONDictionaryTransformer_transformer;
  pf_JSONDictionaryTransformer_transformer = v2;
}

void __63__NSValueTransformer_PosterFoundation__pf_JSONArrayTransformer__block_invoke()
{
  v0 = [PFGenericValueTransformer alloc];
  v4 = objc_opt_self();
  v1 = objc_opt_self();
  v2 = [(PFGenericValueTransformer *)v0 initWithTransformedValueClass:v4 transformer:&__block_literal_global_30 reverseValueClass:v1 reverseTransformer:&__block_literal_global_34];
  v3 = pf_JSONArrayTransformer_transformer;
  pf_JSONArrayTransformer_transformer = v2;
}

void __75__NSValueTransformer_PosterFoundation__pf_NSKeyedArchivingValueTransformer__block_invoke()
{
  v0 = [PFGenericValueTransformer alloc];
  v3 = objc_opt_self();
  v1 = [(PFGenericValueTransformer *)v0 initWithTransformedValueClass:v3 transformer:&__block_literal_global_44 reverseValueClass:0 reverseTransformer:&__block_literal_global_48];
  v2 = pf_NSKeyedArchivingValueTransformer_transformer;
  pf_NSKeyedArchivingValueTransformer_transformer = v1;
}

@end