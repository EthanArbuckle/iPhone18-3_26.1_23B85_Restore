@interface VGOEMExtensionConnection
@end

@implementation VGOEMExtensionConnection

void __50___VGOEMExtensionConnection_resumeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = VGGetVGOEMExtensionConnectionLog();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349314;
        v26 = WeakRetained;
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_ERROR, "[%{public}p] Got error resuming connection: %@", buf, 0x16u);
      }

      [WeakRetained _complete];
      os_unfair_lock_lock(WeakRetained + 12);
      v10 = VGGetVGOEMExtensionConnectionLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [*(WeakRetained + 4) count];
        *buf = 134349312;
        v26 = WeakRetained;
        v27 = 2048;
        v28 = v11;
        _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_DEBUG, "[%{public}p] Executing %lu connection error handler(s)", buf, 0x16u);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = *(WeakRetained + 4);
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v12);
            }

            (*(*(*(&v20 + 1) + 8 * i) + 16))();
          }

          v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }

      os_unfair_lock_unlock(WeakRetained + 12);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v26 = WeakRetained;
        _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "[%{public}p] Successfully resumed connection; starting intent handling", buf, 0xCu);
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __50___VGOEMExtensionConnection_resumeWithCompletion___block_invoke_22;
      v18[3] = &unk_279E26678;
      objc_copyWeak(&v19, (a1 + 32));
      [v5 handleIntentWithCompletionHandler:v18];
      objc_destroyWeak(&v19);
    }
  }

  else
  {
    v16 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[_VGOEMExtensionConnection resumeWithCompletion:]_block_invoke";
      v27 = 1024;
      LODWORD(v28) = 167;
      _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __50___VGOEMExtensionConnection_resumeWithCompletion___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = VGGetVGOEMExtensionConnectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134349570;
      v24 = WeakRetained;
      v25 = 2112;
      v26 = v5;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "[%{public}p] Got intent response: %@, error: %@", buf, 0x20u);
    }

    [WeakRetained _complete];
    os_unfair_lock_lock(WeakRetained + 12);
    v9 = VGGetVGOEMExtensionConnectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*(WeakRetained + 5) count];
      *buf = 134349312;
      v24 = WeakRetained;
      v25 = 2048;
      v26 = v10;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Executing %lu intent completion handler(s)", buf, 0x16u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = *(WeakRetained + 5);
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v18 + 1) + 8 * i) + 16))(*(*(&v18 + 1) + 8 * i));
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    [*(WeakRetained + 1) reset];
    os_unfair_lock_unlock(WeakRetained + 12);
  }

  else
  {
    v16 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[_VGOEMExtensionConnection resumeWithCompletion:]_block_invoke";
      v25 = 1024;
      LODWORD(v26) = 181;
      _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __48___VGOEMExtensionConnection_initWithConnection___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = VGGetVGOEMExtensionConnectionLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349314;
      v21 = WeakRetained;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "[%{public}p] Connection timed out: %@", buf, 0x16u);
    }

    [WeakRetained _complete];
    os_unfair_lock_lock(WeakRetained + 12);
    v6 = VGGetVGOEMExtensionConnectionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(WeakRetained + 3) count];
      *buf = 134349312;
      v21 = WeakRetained;
      v22 = 2048;
      v23 = v7;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Executing %lu connection timeout handler(s)", buf, 0x16u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = *(WeakRetained + 3);
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v15 + 1) + 8 * i) + 16))(*(*(&v15 + 1) + 8 * i));
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    os_unfair_lock_unlock(WeakRetained + 12);
  }

  else
  {
    v13 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[_VGOEMExtensionConnection initWithConnection:]_block_invoke";
      v22 = 1024;
      LODWORD(v23) = 132;
      _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end