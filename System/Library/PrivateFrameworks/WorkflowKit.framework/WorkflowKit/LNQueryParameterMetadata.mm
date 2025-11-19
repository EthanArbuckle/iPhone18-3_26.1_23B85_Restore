@interface LNQueryParameterMetadata
@end

@implementation LNQueryParameterMetadata

id __66__LNQueryParameterMetadata_Workflow__wf_supportedContentOperators__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "comparatorType")}];
  v4 = [v2 allKeysForObject:v3];
  v5 = [v4 firstObject];

  return v5;
}

@end