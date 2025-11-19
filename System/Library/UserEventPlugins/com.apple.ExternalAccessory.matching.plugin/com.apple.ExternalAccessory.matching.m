uint64_t sub_C70(__asl_object_s *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return asl_log(a1, 0, 6, a4);
}

id sub_C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return [v29 countByEnumeratingWithState:&a13 objects:&a29 count:16];
}

id sub_CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{

  return [a14 countByEnumeratingWithState:&a23 objects:&a55 count:16];
}

void sub_DF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v8 = objc_autoreleasePoolPush();
    if (a1 == 2)
    {
      [a4 removeClient:a2];
    }

    else if (a1 == 1)
    {
      [a4 addClient:a2 eventMatchDict:a3];
    }

    objc_autoreleasePoolPop(v8);
  }
}

void xpc_event_module_get_aslclient()
{
    ;
  }
}

void xpc_event_provider_create()
{
    ;
  }
}

void xpc_event_provider_token_fire()
{
    ;
  }
}