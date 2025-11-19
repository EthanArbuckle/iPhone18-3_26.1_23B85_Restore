void sub_8F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (qword_42E0 != -1)
  {
    sub_D88();
  }

  if (a1 == 2)
  {
    v10 = qword_42D8;
    v11 = [NSNumber numberWithUnsignedLongLong:a2];
    v7 = [v10 objectForKeyedSubscript:v11];

    if (v7)
    {
      [v7 pointerValue];
      MGCancelNotifications();
      v12 = qword_42D8;
      v13 = [NSNumber numberWithUnsignedLongLong:a2];
      [v12 removeObjectForKey:v13];
    }

    goto LABEL_21;
  }

  if (a1 == 1)
  {
    v6 = xpc_dictionary_get_value(v5, "Queries");
    v7 = v6;
    if (!v6)
    {
      v16 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltEvents/MobileGestaltEvents.m", 47);
      if (v16)
      {
        v17 = v16 + 1;
      }

      else
      {
        v17 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltEvents/MobileGestaltEvents.m";
      }

      NSLog(&cfstr_SDNoQueriesSpe.isa, v17, 16);
      goto LABEL_21;
    }

    if (xpc_get_type(v6) != &_xpc_type_array)
    {
      v8 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltEvents/MobileGestaltEvents.m", 47);
      if (v8)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltEvents/MobileGestaltEvents.m";
      }

      NSLog(&cfstr_SDQueriesValue.isa, v9, 21);
LABEL_21:

      goto LABEL_22;
    }

    v18 = +[NSMutableSet set];
    count = xpc_array_get_count(v7);
    if (count)
    {
      v20 = count;
      for (i = 0; i != v20; ++i)
      {
        string = xpc_array_get_string(v7, i);
        if (string)
        {
          v23 = [NSString stringWithUTF8String:string];
          [v18 addObject:v23];
        }

        else
        {
          v24 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltEvents/MobileGestaltEvents.m", 47);
          if (v24)
          {
            v25 = v24 + 1;
          }

          else
          {
            v25 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltEvents/MobileGestaltEvents.m";
          }

          NSLog(&cfstr_SDIllegalQuery.isa, v25, 30, i);
        }
      }
    }

    v26 = [v18 allObjects];

    if (v26)
    {
      v27 = dispatch_get_global_queue(0, 0);
      v28 = MGRegisterForBulkUpdates();

      if (v28 == -1)
      {
        v32 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltEvents/MobileGestaltEvents.m", 47);
        if (v32)
        {
          v33 = v32 + 1;
        }

        else
        {
          v33 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltEvents/MobileGestaltEvents.m";
        }

        NSLog(&cfstr_SDMgregisterfo.isa, v33, 66);
      }

      else
      {
        v29 = [NSValue valueWithPointer:v28];
        v30 = qword_42D8;
        v31 = [NSNumber numberWithUnsignedLongLong:a2];
        [v30 setObject:v29 forKeyedSubscript:v31];
      }
    }
  }

  else
  {
    v14 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltEvents/MobileGestaltEvents.m", 47);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltEvents/MobileGestaltEvents.m";
    }

    NSLog(&cfstr_SDUnknownActio.isa, v15, 85, a1);
  }

LABEL_22:
}

void sub_C94(id a1)
{
  qword_42D8 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

void sub_CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = +[NSMutableDictionary dictionary];
  if (a2)
  {
    [v7 setObject:a2 forKeyedSubscript:@"ChangedQuestions"];
  }

  if (a3)
  {
    [v7 setObject:a3 forKeyedSubscript:@"AdditionalInfo"];
  }

  _CFXPCCreateXPCObjectFromCFObject();
  v6 = *(a1 + 32);
  xpc_event_provider_token_fire();
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