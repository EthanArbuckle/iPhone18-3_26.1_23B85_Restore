@interface SFBrowserCreateConnection
@end

@implementation SFBrowserCreateConnection

void ___SFBrowserCreateConnection_block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1AC58D590](a2);
  if (v4 != MEMORY[0x1E69E9E98])
  {
    if (v4 != MEMORY[0x1E69E9E80])
    {
      goto LABEL_52;
    }

    context = xpc_connection_get_context(*(a1 + 40));
    pthread_mutex_lock((context + 88));
    value = xpc_dictionary_get_value(a2, "Node");
    if (value)
    {
      v7 = _SFNodeCreateWithXPCObject(0, value);
      if (v7)
      {
        v8 = CFDictionaryGetValue(*(context + 5), v7);
        if (v8)
        {
          v9 = v8;
          CFRetain(v8);
          _SFNodeUpdateCachedParentNode(v9, v7);
          CFRelease(v7);
          v7 = v9;
        }

        else
        {
          v25 = browser_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            ___SFBrowserCreateConnection_block_invoke_cold_1();
          }

          CFDictionarySetValue(*(context + 5), v7, v7);
        }
      }
    }

    else
    {
      v7 = 0;
    }

    if (xpc_dictionary_get_value(a2, "Protocol"))
    {
      v26 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v26 = 0;
    }

    int64 = xpc_dictionary_get_int64(a2, "Error");
    v28 = xpc_dictionary_get_value(a2, "Children");
    if (v28)
    {
      ChildrenFromXPCNodes = _SFBrowserCreateChildrenFromXPCNodes(v28);
      _SFBrowserUpdateCachedChildrenNodes(context, v7, ChildrenFromXPCNodes, 0);
      if (ChildrenFromXPCNodes)
      {
        CFRelease(ChildrenFromXPCNodes);
      }
    }

    else
    {
      _SFBrowserUpdateCachedChildrenNodes(context, v7, 0, 0);
    }

    if (CFEqual(*(context + 7), @"Network") && SFNodeIsRoot(v7))
    {
      v30 = xpc_dictionary_get_value(a2, "Sidebar");
      if (v30)
      {
        v31 = _SFBrowserCreateChildrenFromXPCNodes(v30);
        _SFBrowserUpdateCachedChildrenNodes(context, v7, v31, 1);
        if (v31)
        {
          CFRelease(v31);
        }
      }

      else
      {
        _SFBrowserUpdateCachedChildrenNodes(context, v7, 0, 1);
      }
    }

    pthread_mutex_unlock((context + 88));
    if (context[16])
    {
      v32 = browser_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        ___SFBrowserCreateConnection_block_invoke_cold_2();
        if (!v26)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v33 = CFDictionaryContainsKey(*(context + 6), v7);
      v34 = browser_log();
      v35 = v34;
      if (v33)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v7;
          _os_log_impl(&dword_1A9662000, v35, OS_LOG_TYPE_DEFAULT, "SFBrowserCallBack (node = %@)", buf, 0xCu);
        }

        (*(context + 19))(context, v7, v26, 0, int64, *(context + 21));
        if (!v26)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        ___SFBrowserCreateConnection_block_invoke_cold_3();
        if (!v26)
        {
LABEL_50:
          if (v7)
          {
            CFRelease(v7);
          }

          goto LABEL_52;
        }

LABEL_49:
        CFRelease(v26);
        goto LABEL_50;
      }
    }

    if (!v26)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (a2 == MEMORY[0x1E69E9E20])
  {
    v13 = browser_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "Connection to sharingd became invalid", buf, 2u);
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9E18];
    v11 = browser_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (a2 == v10)
    {
      if (v12)
      {
        ___SFBrowserCreateConnection_block_invoke_cold_5();
      }

      v14 = *(a1 + 32);
      pthread_mutex_lock((v14 + 88));
      v15 = *(v14 + 216);
      *(v14 + 216) = _SFBrowserCreateConnection(v14);
      pthread_mutex_unlock((v14 + 88));
      SFBrowserSetMode(v14, *(v14 + 200));
      v16 = copyValuesFromDictionary(0, *(v14 + 48));
      if (v16)
      {
        v17 = v16;
        v37 = v15;
        Count = CFArrayGetCount(v16);
        if (Count >= 1)
        {
          v19 = Count;
          for (i = 0; i != v19; ++i)
          {
            *buf = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(v17, i);
            v22 = CFDictionaryGetValue(ValueAtIndex, @"Node");
            v23 = CFDictionaryGetValue(ValueAtIndex, @"Flags");
            v24 = CFDictionaryGetValue(ValueAtIndex, @"Protocol");
            CFNumberGetValue(v23, kCFNumberLongType, buf);
            SFBrowserOpenNode(v14, v22, v24, *buf);
          }
        }

        CFRelease(v17);
        v15 = v37;
      }

      xpc_release(v15);
    }

    else if (v12)
    {
      ___SFBrowserCreateConnection_block_invoke_cold_4();
    }
  }

LABEL_52:
  v36 = *MEMORY[0x1E69E9840];
}

void ___SFBrowserCreateConnection_block_invoke_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1A9662000, v0, OS_LOG_TYPE_ERROR, "SFBrowserNotifyClient: node %@ not found", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end