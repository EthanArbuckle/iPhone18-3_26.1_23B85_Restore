uint64_t sub_578(uint64_t a1, io_iterator_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = *(a1 + 16);
  sub_7EC(7, "%s - for token %lld", a3, a4, a5, a6, a7, a8, "firstMatchIteratorCallback");
  result = IOIteratorNext(a2);
  if (result)
  {
    v17 = result;
    v18 = (a1 + 32);
    do
    {
      if (*(a1 + 28) == 1)
      {
        entryID = 0;
        IORegistryEntryGetRegistryEntryID(v17, &entryID);
        v19 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v19, "IOMatchLaunchServiceID", entryID);
        v46 = *(a1 + 16);
        sub_7EC(7, "%s - stream fire for token %lld", v20, v21, v22, v23, v24, v25, "firstMatchIteratorCallback");
        v26 = *(a1 + 16);
        v27 = *(*(a1 + 8) + 8);
        xpc_event_provider_token_fire();
      }

      if (IOObjectConformsTo(v17, "IOService"))
      {
        v28 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040EDCEB4C7uLL);
        v28[4] = 0;
        *v28 = *(a1 + 32);
        *(v28 + 1) = a1;
        *(a1 + 32) = v28;
        v47 = *(a1 + 16);
        sub_7EC(7, "%s - token %lld new iokit_matching_notification_context %p", v29, v30, v31, v32, v33, v34, "recordMatch");
        if (IOServiceAddInterestNotification(qword_4178, v17, "IOGeneralInterest", sub_DBC, v28, v28 + 4))
        {
          v48 = *(a1 + 16);
          sub_7EC(3, "%s - IOServiceAddInterestNotification failed for token %lld", v35, v36, v37, v38, v39, v40, "recordMatch");
          v41 = *v18;
          if (*v18 == v28)
          {
            v42 = (a1 + 32);
          }

          else
          {
            do
            {
              v42 = v41;
              v41 = *v41;
            }

            while (v41 != v28);
          }

          *v42 = *v41;
          free(v28);
        }

        else
        {
          v49 = *(a1 + 16);
          v51 = v28[4];
          sub_7EC(7, "%s - token %lld new notificationObj %u", v35, v36, v37, v38, v39, v40, "recordMatch");
        }
      }

      IOObjectRelease(v17);
      result = IOIteratorNext(a2);
      v17 = result;
    }

    while (result);
  }

  if ((*(a1 + 28) & 1) == 0)
  {
    v50 = *(a1 + 32) != 0;
    v52 = *(a1 + 16);
    sub_7EC(7, "%s - set state runJob %d for token %lld", v11, v12, v13, v14, v15, v16, "firstMatchIteratorCallback");
    v43 = *(a1 + 16);
    v44 = *(*(a1 + 8) + 8);
    xpc_event_provider_token_set_state();
  }

  return result;
}

void sub_7EC(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12[0] = 0;
  v12[1] = &a9;
  vasprintf(v12, a2, &a9);
  v11 = v12[0];
  if (!v12[0])
  {
    v11 = a2;
  }

  asl_log(0, 0, a1, "%s", v11);
  if (v12[0])
  {
    free(v12[0]);
  }
}

void sub_93C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_7EC(7, "%s - for token %lld", a3, a4, a5, a6, a7, a8, "eventCallback");
  if (a1 == 2)
  {
    v26 = *(a4 + 16);
    v24 = (a4 + 16);
    v25 = v26;
    if (v26)
    {
      do
      {
        v27 = *v25;
        if (v25[2] == a2)
        {
          sub_7EC(7, "%s - remove event for token %lld", v12, v13, v14, v15, v16, v17, "removeIOKitMatchEvent");
          v34 = *v24;
          if (*v24 == v25)
          {
            v35 = v24;
          }

          else
          {
            do
            {
              v35 = v34;
              v34 = *v34;
            }

            while (v34 != v25);
          }

          *v35 = *v34;
          v93 = *(v25 + 6);
          sub_7EC(7, "%s - token %lld release firstMatchIterator %u", v28, v29, v30, v31, v32, v33, "removeIOKitMatchEvent");
          IOObjectRelease(*(v25 + 6));
          v42 = (v25 + 4);
          v43 = v25[4];
          if (v43)
          {
            do
            {
              v44 = *v42;
              if (*v42 == v43)
              {
                v45 = (v25 + 4);
              }

              else
              {
                do
                {
                  v45 = v44;
                  v44 = *v44;
                }

                while (v44 != v43);
              }

              v46 = *v43;
              *v45 = *v44;
              v94 = v43[4];
              sub_7EC(7, "%s - token %lld release notificationObj %u", v36, v37, v38, v39, v40, v41, "removeIOKitMatchEvent");
              IOObjectRelease(v43[4]);
              sub_7EC(7, "%s - token %lld free iokit_matching_notification_context %p", v47, v48, v49, v50, v51, v52, "removeIOKitMatchEvent");
              free(v43);
              v43 = v46;
            }

            while (v46);
          }

          sub_7EC(7, "%s - token %lld free iokit_matching_event %p", v36, v37, v38, v39, v40, v41, "removeIOKitMatchEvent");
          free(v25);
        }

        v25 = v27;
      }

      while (v27);
    }
  }

  else
  {
    if (a1 != 1)
    {
      sub_7EC(3, "%s - invalid launch event action %ld", v12, v13, v14, v15, v16, v17, "eventCallback");
      return;
    }

    sub_7EC(7, "%s - for token %lld", v12, v13, v14, v15, v16, v17, "addIOKitMatchEvent");
    if (xpc_get_type(a3) != &_xpc_type_dictionary)
    {
      CFGetTypeID(a3);
      sub_7EC(3, "%s - invalid launch event type %ld", v18, v19, v20, v21, v22, v23, "addIOKitMatchEvent");
      return;
    }

    v53 = _CFXPCCreateCFObjectFromXPCObject();
    if (!v53)
    {
      sub_7EC(3, "%s - _CFXPCCreateCFObjectFromXPCObject failed", v54, v55, v56, v57, v58, v59, "addIOKitMatchEvent");
      return;
    }

    v60 = v53;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v53);
    CFRelease(v60);
    if (!MutableCopy)
    {
      sub_7EC(3, "%s - CFDictionaryCreateMutableCopy failed", v62, v63, v64, v65, v66, v67, "addIOKitMatchEvent");
      return;
    }

    v68 = malloc_type_calloc(1uLL, 0x28uLL, 0x1020040C6695F62uLL);
    *(v68 + 1) = a4;
    *(v68 + 2) = a2;
    v68[6] = 0;
    *(v68 + 28) = 0;
    *(v68 + 4) = 0;
    Value = CFDictionaryGetValue(MutableCopy, @"IOMatchLaunchStream");
    *(v68 + 28) = Value == kCFBooleanTrue;
    if (Value)
    {
      CFDictionaryRemoveValue(MutableCopy, @"IOMatchLaunchStream");
    }

    v70 = CFDictionaryGetValue(MutableCopy, @"IOMatchAll");
    if (v70 == kCFBooleanTrue)
    {
      v71 = "IOServiceMatched";
    }

    else
    {
      v71 = "IOServiceFirstMatch";
    }

    if (v70)
    {
      CFDictionaryRemoveValue(MutableCopy, @"IOMatchAll");
    }

    v72 = CFDictionaryGetValue(MutableCopy, @"IONotificationType");
    if (v72)
    {
      v73 = v72;
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(v73))
      {
        Length = CFStringGetLength(v73);
        SystemEncoding = CFStringGetSystemEncoding();
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, SystemEncoding);
        v78 = malloc_type_malloc(MaximumSizeForEncoding + 4, 0x100004077774924uLL);
        if (v78 && CFStringGetCString(v73, v78, MaximumSizeForEncoding + 4, 0))
        {
          v71 = v78;
        }
      }

      else
      {
        v78 = 0;
      }

      CFDictionaryRemoveValue(MutableCopy, @"IONotificationType");
    }

    else
    {
      v78 = 0;
    }

    if (IOServiceAddMatchingNotification(qword_4178, v71, MutableCopy, sub_578, v68, v68 + 6))
    {
      sub_7EC(3, "%s - IOServiceAddMatchingNotification failed", v79, v80, v81, v82, v83, v84, "addIOKitMatchEvent");
      v85 = v68;
    }

    else
    {
      v92 = *(v68 + 2);
      sub_7EC(7, "%s - for token %lld add iokit_matching_event %p ", v79, v80, v81, v82, v83, v84, "addIOKitMatchEvent");
      *v68 = *(a4 + 16);
      *(a4 + 16) = v68;
      sub_578(v68, v68[6], v86, v87, v88, v89, v90, v91);
      if (!v78)
      {
        return;
      }

      v85 = v78;
    }

    free(v85);
  }
}

void sub_DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == -536870896)
  {
    sub_7EC(7, "%s", a3, a4, a5, a6, a7, a8, "interestNotificationCallback");
    v15 = *(a1 + 8);
    if (v15)
    {
      v17 = v15 + 4;
      for (i = v15[4]; i != a1; i = *i)
      {
        v17 = i;
      }

      *v17 = *i;
      if (*(a1 + 16))
      {
        v26 = v15[2];
        v29 = *(a1 + 16);
        sub_7EC(7, "%s - token %lld release notificationObj %u", v9, v10, v11, v12, v13, v14, "interestNotificationCallback");
        IOObjectRelease(*(a1 + 16));
      }

      v27 = v15[2];
      sub_7EC(7, "%s - token %lld free iokit_matching_notification_context %p", v9, v10, v11, v12, v13, v14, "interestNotificationCallback");
      free(a1);
      v28 = v15[4] != 0;
      sub_7EC(7, "%s - set state runJob %d", v18, v19, v20, v21, v22, v23, "interestNotificationCallback");
      v24 = v15[2];
      v25 = *(v15[1] + 8);

      xpc_event_provider_token_set_state();
    }

    sub_7EC(3, "%s - owner is NULL", v9, v10, v11, v12, v13, v14, "interestNotificationCallback");
  }
}

void xpc_event_provider_create()
{
    ;
  }
}

void xpc_event_provider_get_queue()
{
    ;
  }
}

void xpc_event_provider_token_fire()
{
    ;
  }
}

void xpc_event_provider_token_set_state()
{
    ;
  }
}