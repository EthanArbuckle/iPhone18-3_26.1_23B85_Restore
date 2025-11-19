@interface SFOperationCreateConnection
@end

@implementation SFOperationCreateConnection

void ___SFOperationCreateConnection_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1AC58D590](a2);
  if (v4 == MEMORY[0x1E69E9E98])
  {
    if (a2 == MEMORY[0x1E69E9E20])
    {
      v12 = framework_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28[0]) = 0;
        _os_log_impl(&dword_1A9662000, v12, OS_LOG_TYPE_DEFAULT, "Connection to sharingd became invalid", v28, 2u);
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9E18];
      v10 = framework_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (a2 == v9)
      {
        if (v11)
        {
          ___SFOperationCreateConnection_block_invoke_cold_2();
        }

        v18 = *(a1 + 32);
        v19 = *(v18 + 184);
        *(v18 + 184) = 0;
        if (CFEqual(*(v18 + 48), @"Status") || CFEqual(*(v18 + 48), @"Listener") || CFEqual(*(v18 + 48), @"Controller") || CFEqual(*(v18 + 48), @"Information"))
        {
          SFOperationResume(v18);
        }

        else
        {
          v20 = CFGetAllocator(v18);
          v21 = MEMORY[0x1E695E9D8];
          v22 = MEMORY[0x1E695E9E8];
          Mutable = CFDictionaryCreateMutable(v20, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v24 = CFDictionaryCreateMutable(v20, 0, v21, v22);
          if (CFEqual(*(v18 + 48), @"Sender") || CFEqual(*(v18 + 48), @"Receiver"))
          {
            v25 = copyLocalizedStringForKey(@"Transfer Failed");
            if (v25)
            {
              v26 = v25;
              CFDictionarySetValue(v24, *MEMORY[0x1E695E650], v25);
              CFRelease(v26);
            }
          }

          v27 = CFErrorCreate(v20, @"SFOperation", -10, v24);
          CFDictionarySetValue(Mutable, @"Error", v27);
          _SFOperationNotifyClient(v18, 10, Mutable);
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          CFRelease(v24);
          CFRelease(v27);
        }

        xpc_release(v19);
      }

      else if (v11)
      {
        ___SFOperationCreateConnection_block_invoke_cold_1();
      }
    }
  }

  else if (v4 == MEMORY[0x1E69E9E80])
  {
    context = xpc_connection_get_context(*(a1 + 40));
    value = xpc_dictionary_get_value(a2, "Results");
    if (value)
    {
      v7 = value;
      v8 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 0x40000000;
      v28[2] = ___SFOperationCreateResultsFromXPCObject_block_invoke;
      v28[3] = &__block_descriptor_tmp_370;
      v28[4] = 0;
      v28[5] = v8;
      xpc_dictionary_apply(v7, v28);
    }

    else
    {
      v8 = 0;
    }

    uint64 = xpc_dictionary_get_uint64(a2, "Events");
    v14 = CFDictionaryGetValue(v8, @"Node");
    if (v14)
    {
      v15 = v14;
      v16 = SFOperationCopyProperty(context, @"Node");
      if (v16)
      {
        v17 = v16;
        _SFNodeUpdateCachedChildNode(v16, v15);
        CFRelease(v17);
      }
    }

    _SFOperationNotifyClient(context, uint64, v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

@end