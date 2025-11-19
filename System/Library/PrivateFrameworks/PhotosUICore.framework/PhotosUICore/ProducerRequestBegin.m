@interface ProducerRequestBegin
@end

@implementation ProducerRequestBegin

void ___ProducerRequestBegin_block_invoke(uint64_t a1, char a2)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if ((a2 & 1) == 0 && WeakRetained)
  {
    v6 = PLStoryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = 136446722;
      v9 = v7;
      v10 = 2048;
      v11 = 0x4024000000000000;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Invalid story component attributes change (%@ -> %@)", &v8, 0x20u);
    }
  }
}

@end