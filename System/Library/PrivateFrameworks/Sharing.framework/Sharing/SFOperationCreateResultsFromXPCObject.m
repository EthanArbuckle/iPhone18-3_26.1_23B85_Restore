@interface SFOperationCreateResultsFromXPCObject
@end

@implementation SFOperationCreateResultsFromXPCObject

uint64_t ___SFOperationCreateResultsFromXPCObject_block_invoke(uint64_t a1, char *__s1, void *a3)
{
  if (!strcmp(__s1, "Operation"))
  {
    if (MEMORY[0x1AC58D590](a3) == MEMORY[0x1E69E9F10])
    {
      v10 = *(a1 + 32);
      string_ptr = xpc_string_get_string_ptr(a3);
      v7 = CFStringCreateWithCString(v10, string_ptr, 0x8000100u);
      Internal = _SFOperationCreateInternal(*(a1 + 32), @"Receiver", v7);
      CFDictionarySetValue(*(a1 + 40), @"Receiver", Internal);
      if (Internal)
      {
        CFRelease(Internal);
      }

      if (v7)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v6 = CFStringCreateWithCString(0, __s1, 0x8000100u);
    if (v6)
    {
      v7 = v6;
      if (CFEqual(v6, @"Node") || CFEqual(v7, @"SenderNode"))
      {
        v8 = _SFNodeCreateWithXPCObject(*(a1 + 32), a3);
        goto LABEL_6;
      }

      if (CFEqual(v7, @"FileIcon") || CFEqual(v7, @"SmallFileIcon"))
      {
        v14 = _CFXPCCreateCFObjectFromXPCObject();
        if (!v14)
        {
          goto LABEL_12;
        }

        v15 = v14;
        v16 = CFGetTypeID(v14);
        if (v16 == CFDataGetTypeID())
        {
          CGImageWithData = createCGImageWithData(v15);
LABEL_19:
          v9 = CGImageWithData;
          goto LABEL_29;
        }
      }

      else
      {
        if (!CFEqual(v7, @"Error"))
        {
          v8 = _CFXPCCreateCFObjectFromXPCObject();
LABEL_6:
          v9 = v8;
          if (!v8)
          {
LABEL_12:
            CFRelease(v7);
            return 1;
          }

LABEL_7:
          CFDictionarySetValue(*(a1 + 40), v7, v9);
          CFRelease(v9);
          goto LABEL_12;
        }

        if (!xpc_dictionary_get_value(a3, "Domain"))
        {
          goto LABEL_12;
        }

        v18 = _CFXPCCreateCFObjectFromXPCObject();
        if (!v18)
        {
          goto LABEL_12;
        }

        v15 = v18;
        v19 = CFGetTypeID(v18);
        if (v19 == CFStringGetTypeID())
        {
          int64 = xpc_dictionary_get_int64(a3, "Code");
          if (!xpc_dictionary_get_value(a3, "UserInfo") || (v21 = _CFXPCCreateCFObjectFromXPCObject()) == 0)
          {
            CGImageWithData = CFErrorCreate(*(a1 + 32), v15, int64, 0);
            goto LABEL_19;
          }

          v22 = v21;
          v23 = CFGetTypeID(v21);
          if (v23 == CFDictionaryGetTypeID())
          {
            v24 = v22;
          }

          else
          {
            v24 = 0;
          }

          v9 = CFErrorCreate(*(a1 + 32), v15, int64, v24);
          CFRelease(v22);
LABEL_29:
          CFRelease(v15);
          if (!v9)
          {
            goto LABEL_12;
          }

          goto LABEL_7;
        }
      }

      v9 = 0;
      goto LABEL_29;
    }
  }

  return 1;
}

@end