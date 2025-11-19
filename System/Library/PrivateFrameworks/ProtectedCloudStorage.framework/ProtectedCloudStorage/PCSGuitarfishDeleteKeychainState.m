@interface PCSGuitarfishDeleteKeychainState
@end

@implementation PCSGuitarfishDeleteKeychainState

void ___PCSGuitarfishDeleteKeychainState_block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v4 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "Error while deleting Guitarfish state: %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end