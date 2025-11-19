@interface RegisterUserCleanupUAFActivity
@end

@implementation RegisterUserCleanupUAFActivity

void ___RegisterUserCleanupUAFActivity_block_invoke(uint64_t a1, void *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CF0]);
    xpc_dictionary_set_int64(v3, *MEMORY[0x1E69E9C98], *MEMORY[0x1E69E9CE0]);
    xpc_dictionary_set_int64(v3, *MEMORY[0x1E69E9D80], *MEMORY[0x1E69E9CC8]);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9D88], 1);
    xpc_dictionary_set_string(v3, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9C40], 0);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9DA8], 1);
    xpc_activity_set_criteria(activity, v3);
  }
}

void ___RegisterUserCleanupUAFActivity_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  +[UAFUserManager performUserCleanup];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
    v3 = v4;
  }
}

@end