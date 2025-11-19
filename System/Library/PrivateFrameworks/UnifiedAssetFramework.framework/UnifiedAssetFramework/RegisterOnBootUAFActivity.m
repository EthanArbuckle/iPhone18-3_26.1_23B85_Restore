@interface RegisterOnBootUAFActivity
@end

@implementation RegisterOnBootUAFActivity

void ___RegisterOnBootUAFActivity_block_invoke(uint64_t a1, void *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9D88], 0);
    xpc_dictionary_set_int64(v3, *MEMORY[0x1E69E9C68], 0);
    xpc_dictionary_set_int64(v3, *MEMORY[0x1E69E9C98], *MEMORY[0x1E69E9CE8]);
    xpc_dictionary_set_string(v3, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9DB0], 1);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9C40], 1);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9D98], 1);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9DA8], 1);
    xpc_activity_set_criteria(activity, v3);
  }
}

void ___RegisterOnBootUAFActivity_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (*(a1 + 32) == 1)
  {
    v6 = +[UAFCommonUtilities acquireClassAAssertion];
  }

  else
  {
    v6 = 0;
  }

  v7 = +[UAFSubscriptionStoreManager writeManager];
  v8 = +[UAFConfigurationManager defaultManager];
  [UAFAssetSetManager configureAssetDelivery:v7 configurationManager:v8 lockIfUnchanged:0];

  [UAFCommonUtilities releaseClassAAssertion:v6];
  if (v5)
  {
    v5[2](v5);
  }
}

@end