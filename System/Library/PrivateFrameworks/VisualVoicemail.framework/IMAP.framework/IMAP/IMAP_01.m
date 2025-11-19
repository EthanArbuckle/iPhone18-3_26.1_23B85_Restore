void MFAssertNetworkActivityAllowed()
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (!_ThreadLocalAssertionForKey(@"_MFMainThreadNetworkingAllowedAssertionKey"))
    {
      if ((EFIsSeedBuild() & 1) != 0 || ([MEMORY[0x277D07148] currentDevice], v0 = objc_claimAutoreleasedReturnValue(), v1 = objc_msgSend(v0, "isInternal"), v0, v1))
      {
        MFAssertNetworkActivityAllowed_cold_1();
      }
    }
  }

  if (_ThreadLocalAssertionForKey(@"_MFDisallowNetworkActivityAssertionKey"))
  {
    if ((EFIsSeedBuild() & 1) != 0 || ([MEMORY[0x277D07148] currentDevice], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isInternal"), v2, v3))
    {
      MFAssertNetworkActivityAllowed_cold_2();
    }
  }
}

BOOL _ThreadLocalAssertionForKey(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:v1];

  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _ThreadLocalAssertionForKey_cold_1();
    }

    v5 = [v4 unsignedIntegerValue] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_27212482C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 buf)
{
  if (a2 == 1)
  {
    v38 = v37 = objc_begin_catch(a1);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v37;
      _os_log_impl(&dword_2720B1000, v38, OS_LOG_TYPE_DEFAULT, "#I Exception while getting all email addresses: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x2721247A4);
  }

  _Unwind_Resume(a1);
}

void sub_2721254FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MailAccount;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_272125E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (!v10)
  {
  }

  _Unwind_Resume(a1);
}

void _invalidateMailboxCache(MailAccount *a1)
{
  v1 = a1;
  *&v1->_flags &= ~0x20000u;
  v3 = v1;
  [(MFMailboxUid *)v1->_rootMailboxUid invalidate];
  [(MailAccount *)v3 mf_lock];
  rootMailboxUid = v3->_rootMailboxUid;
  v3->_rootMailboxUid = 0;

  [(MailAccount *)v3 mf_unlock];
}

void sub_2721291D0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void _recurseIntoFileSystem(void *a1, id *a2)
{
  v8 = [a1 objectForKey:@"MailboxName"];
  v4 = [a1 objectForKey:@"MailboxAttributes"];
  v5 = [v4 unsignedIntValue];

  if ((v5 & 1) == 0)
  {
    v6 = [a2[1] length];
    v7 = [a2[2] childWithName:v8];
    if (!v7)
    {
      v7 = [*a2 _copyMailboxWithParent:a2[2] name:v8 attributes:v5 dictionary:0];
    }

    [a2[1] appendString:@"/"];
    [a2[1] appendString:v8];
    [*a2 _loadEntriesFromFileSystemPath:a2[1] parent:v7];
    [a2[1] deleteCharactersInRange:{v6, objc_msgSend(a2[1], "length") - v6}];
  }
}

void sub_27212C084(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void *encodedURLComponent(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x277CBEBC0] vf_defaultAllowedCharacterSet];
    v3 = [v1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4;

  return v4;
}

void sub_27212CCCC(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

CFComparisonResult _MFCompareMailboxDictionariesByName(void *a1, void *a2)
{
  v2 = kCFCompareEqualTo;
  if (a1 && a2)
  {
    v4 = [a1 objectForKey:@"MailboxName"];
    if (v4)
    {
      v5 = [a2 objectForKey:@"MailboxName"];
      if (v5)
      {
        v2 = CFStringCompare(v4, v5, 0);
      }

      else
      {
        v2 = kCFCompareEqualTo;
      }
    }

    else
    {
      v2 = kCFCompareEqualTo;
    }
  }

  return v2;
}

CFComparisonResult _compareNameWithMailboxDictionary(void *a1, void *a2, void *a3)
{
  if (a1 == a3)
  {
    v6 = a1;
    v5 = [a2 objectForKey:@"MailboxName"];
  }

  else
  {
    v4 = [a1 objectForKey:@"MailboxName"];
    v5 = a2;
    v6 = v4;
  }

  v7 = kCFCompareEqualTo;
  if (v6 && v5)
  {
    v7 = CFStringCompare(v6, v5, 0);
  }

  return v7;
}

uint64_t ___ZN12_GLOBAL__N_114staticLogger_t14getOsLogHandleEv_block_invoke_1()
{
  v0 = os_log_create("com.apple.voicemail", "acct");

  return MEMORY[0x2821F96F8](v0, v1);
}

unint64_t _MFFlagsBySettingValueForKey(unint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  if ([v5 isEqual:@"MessageIsRead"])
  {
    if ((a1 & 1) != a3)
    {
      a1 = a1 & 0xFFFFFFFFFFFFFFFELL | a3;
    }

    goto LABEL_16;
  }

  if ([v5 isEqual:@"MessageIsDeleted"])
  {
    v6 = (a1 >> 1) & 1;
    v7 = a1 & 0xFFFFFFFFFFFFFFFDLL;
    v8 = a3 == 0;
    v9 = 2;
LABEL_11:
    if (v8)
    {
      v9 = 0;
    }

    v10 = v9 | v7;
    if (v6 != a3)
    {
      a1 = v10;
    }

    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"MessageWasRepliedTo"])
  {
    v6 = (a1 >> 2) & 1;
    v7 = a1 & 0xFFFFFFFFFFFFFCFBLL;
    v8 = a3 == 0;
    v9 = 4;
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"MessageWasForwarded"])
  {
    v6 = (a1 >> 8) & 1;
    v7 = a1 & 0xFFFFFFFFFFFFFCFBLL;
    v8 = a3 == 0;
    v9 = 256;
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"MessageWasRedirected"])
  {
    if (((a1 >> 9) & 1) == a3)
    {
      goto LABEL_16;
    }

    v12 = a1 & 0xFFFFFFFFFFFFFCFBLL;
    v13 = a3 == 0;
    v14 = 512;
    goto LABEL_53;
  }

  if ([v5 isEqualToString:@"MessageIsJunk"])
  {
    if (((a1 >> 21) & 1) == a3)
    {
      goto LABEL_16;
    }

    v12 = a1 & 0xFFFFFFFF7FDFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x200000;
    goto LABEL_53;
  }

  if ([v5 isEqualToString:@"MessageIsNotJunk"])
  {
    if (((a1 & 0x80000000) != 0) == a3)
    {
      goto LABEL_16;
    }

    v12 = a1 & 0xFFFFFFFF7FDFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x80000000;
    goto LABEL_53;
  }

  if ([v5 isEqualToString:@"MessageIsFlagged"])
  {
    if (((a1 >> 4) & 1) == a3)
    {
      goto LABEL_16;
    }

    v12 = a1 & 0xFFFFFFFFFFFFFFEFLL;
    v13 = a3 == 0;
    v14 = 16;
    goto LABEL_53;
  }

  if ([v5 isEqualToString:@"MessageIsServerSearchResult"])
  {
    if (((a1 >> 7) & 1) == a3)
    {
      goto LABEL_16;
    }

    v12 = a1 & 0xFFFFFFFFFFFFFF7FLL;
    v13 = a3 == 0;
    v14 = 128;
    goto LABEL_53;
  }

  if ([v5 isEqualToString:@"MessageIsThreadSearchResult"])
  {
    if (((a1 >> 20) & 1) == a3)
    {
      goto LABEL_16;
    }

    v12 = a1 & 0xFFFFFFFFFFEFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x100000;
    goto LABEL_53;
  }

  if ([v5 isEqualToString:@"MessageSenderIsVIP"])
  {
    if (((a1 >> 24) & 1) == a3)
    {
      goto LABEL_16;
    }

    v12 = a1 & 0xFFFFFFFFFEFFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x1000000;
    goto LABEL_53;
  }

  if ([v5 isEqualToString:@"MessageDeliveryInProgress"])
  {
    if (((a1 >> 37) & 1) == a3)
    {
      goto LABEL_16;
    }

    v12 = a1 & 0xFFFFFFDFFFFFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x2000000000;
    goto LABEL_53;
  }

  if ([v5 isEqualToString:@"MessageQueuedForDelivery"])
  {
    if (((a1 >> 38) & 1) == a3)
    {
      goto LABEL_16;
    }

    v12 = a1 & 0xFFFFFFBFFFFFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x4000000000;
    goto LABEL_53;
  }

  if ([v5 isEqualToString:@"MessageNeedsSyncConfirmation"])
  {
    if (((a1 >> 22) & 1) == a3)
    {
      goto LABEL_16;
    }

    v12 = a1 & 0xFFFFFFFFFFBFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x400000;
    goto LABEL_53;
  }

  if ([v5 isEqualToString:@"MessageToContainsAccountAddress"])
  {
    if (((a1 >> 39) & 1) == a3)
    {
      goto LABEL_16;
    }

    v12 = a1 & 0xFFFFFF7FFFFFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x8000000000;
    goto LABEL_53;
  }

  if ([v5 isEqualToString:@"MessageCcContainsAccountAddress"])
  {
    if (((a1 >> 40) & 1) == a3)
    {
      goto LABEL_16;
    }

    v12 = a1 & 0xFFFFFEFFFFFFFFFFLL;
    v13 = a3 == 0;
    v14 = 0x10000000000;
LABEL_53:
    if (v13)
    {
      v14 = 0;
    }

    a1 = v14 | v12;
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"MessageToOrCcContainsAccountAddress"])
  {
    v15 = 0x8000000000;
    if (!a3)
    {
      v15 = 0;
    }

    v16 = v15 | a1 & 0xFFFFFE7FFFFFFFFFLL;
    v17 = 0x10000000000;
    if (!a3)
    {
      v17 = 0;
    }

    a1 = v16 | v17;
  }

  else if (([v5 isEqualToString:@"_Encoding"] & 1) == 0)
  {
    v18 = vm_imap_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      _MFFlagsBySettingValueForKey_cold_1(v5, v18);
    }
  }

LABEL_16:

  return a1;
}

unint64_t IMAPMessageFlagsByApplyingDictionary(unint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        a1 = _MFFlagsBySettingValueForKey(a1, *(*(&v11 + 1) + 8 * v8), [v3 mf_BOOLForKey:*(*(&v11 + 1) + 8 * v8)]);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

unint64_t _MFFlagsBySettingNumberOfAttachments(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 63;
  }

  if (a2 > 0x3E)
  {
    v4 = 62;
  }

  v5 = 8;
  if (!a4)
  {
    v5 = 0;
  }

  v6 = 0x800000;
  if (!a3)
  {
    v6 = 0;
  }

  return v6 & 0xFFFFFFFFFFFF03FFLL | a1 & 0xFFFFFFFFFF7F03F7 | v5 & 0xFFFFFFFFFFFF03FFLL | ((v4 & 0x3F) << 10);
}

void sub_272130BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id truncatedDescriptionToMaxAllowableSize(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 substringToIndex:v5];

  return v6;
}

uint64_t __initErrorDecodersOnce_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = sErrorDecoders;
  sErrorDecoders = v0;

  v2 = dispatch_queue_create("com.apple.mail.errorDecoder", 0);
  v3 = sErrorDecodeQueue;
  sErrorDecodeQueue = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

const char *asString(int a1)
{
  if ((a1 - 2) > 0x16)
  {
    return "IMAPContinuationResponse";
  }

  else
  {
    return off_279E35730[a1 - 2];
  }
}

void sub_272131384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  if (!a12)
  {

    a12 = 0;
  }

  _Unwind_Resume(a1);
}

id createFixedMutableArray(NSArray *a1)
{
  v1 = a1;
  v2 = [(NSArray *)v1 count];
  if (v2)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, v2, v1);
LABEL_5:
    v4 = MutableCopy;
    goto LABEL_6;
  }

  if (v1)
  {
    MutableCopy = [MEMORY[0x277CBEA60] array];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_6:

  return v4;
}

void response(MFIMAPParseContext *a1)
{
  v7 = a1;
  v1 = [(MFIMAPParseContext *)v7 lookAhead];
  if (v1 == 42)
  {
    [(MFIMAPParseContext *)v7 increment];
    if (![(MFIMAPParseContext *)v7 parseSpace])
    {
      [(MFIMAPParseContext *)v7 emitWarning:@"Expected space"];
    }

    response_without_tag(v7);
  }

  else if (v1 == 43)
  {
    [(MFIMAPParseContext *)v7 increment];
    v2 = [(MFIMAPParseContext *)v7 response];
    [v2 setResponseType:1];

    resp_text(v7);
  }

  else
  {
    v3 = [(MFIMAPParseContext *)v7 copyAtom];
    if (v3)
    {
      v4 = [(MFIMAPParseContext *)v7 response];
      [v4 setTag:v3];

      if (![(MFIMAPParseContext *)v7 parseSpace])
      {
        [(MFIMAPParseContext *)v7 emitWarning:@"Expected space"];
      }

      response_without_tag(v7);
    }
  }

  v5 = [(MFIMAPParseContext *)v7 response];
  v6 = v5[8];

  if (v6)
  {
    if ([(MFIMAPParseContext *)v7 lookAhead])
    {
      [(MFIMAPParseContext *)v7 emitWarning:@"Junk at end of response"];
    }
  }

  else
  {
    [(MFIMAPParseContext *)v7 emitError:@"Incomplete response"];
  }
}

void sub_272133614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id MFCreateArrayForMessageFlags(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = &(&IMAPMessageFlagsTable)[v5];
    if (((&IMAPMessageFlagsTable)[v5 + 1] & a1) != 0 && (*(v6 + 16) != 1 || a2 != 0))
    {
      v8 = [MEMORY[0x277CCACA8] stringWithCString:*v6 encoding:1];
      if (v4)
      {
        [v4 addObject:v8];
      }

      else
      {
        v4 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithObjects:{v8, 0}];
      }
    }

    v9 = v5 >= 36;
    v5 += 3;
  }

  while (!v9);
  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CBEA60]) init];
  }

  v11 = v10;

  return v11;
}

uint64_t IMAPMessageFlagsFromArray(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 count];
  v11[1] = v11;
  *(&v10 + 5) = 0;
  *&v10 = 0;
  if (MEMORY[0x28223BE20]())
  {
    v12 = 0;
    do
    {
      v3 = [v1 objectAtIndex:{--v2, v10}];
      v4 = [v3 dataUsingEncoding:1 allowLossyConversion:1];
      v5 = [v4 bytes];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = 0;
        v7 = &qword_279E35420;
        while ((*(&v11[-2] + v6) & 1) != 0 || strncasecmp(v5, *(v7 - 1), [v4 length]))
        {
          ++v6;
          v7 += 3;
          if (v6 == 13)
          {
            goto LABEL_10;
          }
        }

        *(&v11[-2] + v6) = 1;
        v12 |= *v7;
      }

LABEL_10:
    }

    while (v2);
  }

  else
  {
    v12 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t ___ZN12_GLOBAL__N_114staticLogger_t14getOsLogHandleEv_block_invoke_2()
{
  v0 = os_log_create("com.apple.voicemail", "imap.rsp");

  return MEMORY[0x2821F96F8](v0, v1);
}

void resp_text(MFIMAPParseContext *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (![(MFIMAPParseContext *)v1 parseSpace])
  {
    [(MFIMAPParseContext *)v1 emitWarning:@"Expected space"];
  }

  if (![(MFIMAPParseContext *)v1 match:"["])
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_67;
  }

  v2 = memchr([(MFIMAPParseContext *)v1 start], 93, [(MFIMAPParseContext *)v1 end]- [(MFIMAPParseContext *)v1 start]);
  v3 = [(MFIMAPParseContext *)v1 start];
  v4 = v2;
  if (!v2)
  {
    v4 = [(MFIMAPParseContext *)v1 end];
  }

  v5 = memchr(v3, 32, v4 - [(MFIMAPParseContext *)v1 start]);
  if (![(MFIMAPParseContext *)v1 match:"ALERT" upToSpecial:v2])
  {
    if ([(MFIMAPParseContext *)v1 match:"UNAVAILABLE" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 17;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"AUTHENTICATIONFAILED" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 18;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"AUTHORIZATIONFAILED" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 19;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"EXPIRED" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 20;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"PRIVACYREQUIRED" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 21;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"CONTACTADMIN" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 22;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"NOPERM" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 23;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"INUSE" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 24;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"EXPUNGEISSUED" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 25;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"CORRUPTION" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 26;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"SERVERBUG" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 27;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"CANNOT" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 29;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"LIMIT" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 30;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"OVERQUOTA" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 31;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"ALREADYEXISTS" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 32;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"NONEXISTENT" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 33;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"BADCHARSET" upToSpecial:v5]|| [(MFIMAPParseContext *)v1 match:"BADCHARSET" upToSpecial:v2])
    {
      if (![(MFIMAPParseContext *)v1 parseSpace])
      {
        v6 = 0;
        v7 = 2;
        goto LABEL_64;
      }

      v8 = [(MFIMAPParseContext *)v1 copyArray];
      v7 = 2;
      goto LABEL_45;
    }

    if ([(MFIMAPParseContext *)v1 match:"NEWNAME" upToSpecial:v5])
    {
      [(MFIMAPParseContext *)v1 parseSpace];
      v9 = mailbox(v1);
      *values = v9;
      [(MFIMAPParseContext *)v1 parseSpace];
      v10 = mailbox(v1);
      v6 = 0;
      *&values[8] = v10;
      if (v9 && v10)
      {
        v11 = CFArrayCreate(0, values, 2, MEMORY[0x277CBF128]);
        v9 = *values;
        v6 = v11;
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (*&values[8])
      {
        CFRelease(*&values[8]);
      }

      v7 = 3;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"PARSE" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 4;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"READ-ONLY" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 6;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"READ-WRITE" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 7;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"TRYCREATE" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 8;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"UIDNEXT" upToSpecial:v5])
    {
      if (![(MFIMAPParseContext *)v1 parseSpace])
      {
        [(MFIMAPParseContext *)v1 emitWarning:@"Expected space"];
      }

      v8 = [(MFIMAPParseContext *)v1 copyNumber];
      v7 = 9;
LABEL_45:
      v6 = v8;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"HIGHESTMODSEQ" upToSpecial:v5])
    {
      if (![(MFIMAPParseContext *)v1 parseSpace])
      {
        [(MFIMAPParseContext *)v1 emitWarning:@"Expected space"];
      }

      v8 = [(MFIMAPParseContext *)v1 copyNumber];
      v7 = 12;
      goto LABEL_45;
    }

    if ([(MFIMAPParseContext *)v1 match:"UIDVALIDITY" upToSpecial:v5])
    {
      if (![(MFIMAPParseContext *)v1 parseSpace])
      {
        [(MFIMAPParseContext *)v1 emitWarning:@"Expected space"];
      }

      v8 = [(MFIMAPParseContext *)v1 copyNumber];
      v7 = 10;
      goto LABEL_45;
    }

    if ([(MFIMAPParseContext *)v1 match:"NOMODSEQ" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 13;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"UNSEEN" upToSpecial:v5])
    {
      if (![(MFIMAPParseContext *)v1 parseSpace])
      {
        [(MFIMAPParseContext *)v1 emitWarning:@"Expected space"];
      }

      v8 = [(MFIMAPParseContext *)v1 copyNumber];
      v7 = 11;
      goto LABEL_45;
    }

    if ([(MFIMAPParseContext *)v1 match:"PERMANENTFLAGS" upToSpecial:v5])
    {
      if (![(MFIMAPParseContext *)v1 parseSpace])
      {
        [(MFIMAPParseContext *)v1 emitWarning:@"Expected space"];
      }

      v8 = flags_array(v1);
      v7 = 5;
      goto LABEL_45;
    }

    if ([(MFIMAPParseContext *)v1 match:"CAPABILITY" upToSpecial:v5])
    {
      v15 = [(MFIMAPParseContext *)v1 end];
      if (v2)
      {
        [(MFIMAPParseContext *)v1 setEnd:v2];
      }

      v6 = capability_array(v1);
      [(MFIMAPParseContext *)v1 setEnd:v15];
      if (!v2)
      {
        v2 = [(MFIMAPParseContext *)v1 end];
      }

      [(MFIMAPParseContext *)v1 setStart:v2];
      v7 = 14;
      goto LABEL_64;
    }

    if ([(MFIMAPParseContext *)v1 match:"APPENDUID" upToSpecial:v5])
    {
      if (![(MFIMAPParseContext *)v1 parseSpace])
      {
        [(MFIMAPParseContext *)v1 emitWarning:@"Expected space"];
      }

      v16 = [(MFIMAPParseContext *)v1 copyNumber];
      if (v16)
      {
        if (![(MFIMAPParseContext *)v1 parseSpace])
        {
          [(MFIMAPParseContext *)v1 emitWarning:@"Expected space"];
        }

        v7 = [(MFIMAPParseContext *)v1 copyNumber];
        if (v7)
        {
          v6 = [objc_allocWithZone(MEMORY[0x277CBEA60]) initWithObjects:{v16, v7, 0}];

          v7 = 15;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      goto LABEL_128;
    }

    if (![(MFIMAPParseContext *)v1 match:"COPYUID" upToSpecial:v5])
    {
      v18 = [(MFIMAPParseContext *)v1 match:"CLIENTBUG" upToSpecial:v2];
      if (v18)
        v19 = {;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *values = 136315394;
          *&values[4] = "";
          *&values[12] = 2080;
          *&values[14] = "";
          _os_log_impl(&dword_2720B1000, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sWe did something bad: we just got back a CLIENTBUG from the server.", values, 0x16u);
        }

        v6 = 0;
        v7 = 0;
      }

      else
      {
        if (!v2)
        {
          v2 = [(MFIMAPParseContext *)v1 end];
        }

        if (v5)
        {
          v20 = [(MFIMAPParseContext *)v1 copyStringFrom:[(MFIMAPParseContext *)v1 start] to:v5 withCaseOption:1];
          v21 = [(MFIMAPParseContext *)v1 copyStringFrom:v5 + 1 to:v2 withCaseOption:0];
        }

        else
        {
          v20 = [(MFIMAPParseContext *)v1 copyStringFrom:[(MFIMAPParseContext *)v1 start] to:v2 withCaseOption:1];
          v21 = 0;
        }

        v22 = objc_allocWithZone(MEMORY[0x277CBEA60]);
        v23 = &stru_288159858;
        if (v21)
        {
          v23 = v21;
        }

        v6 = [v22 initWithObjects:{v20, v23, 0}];
        [(MFIMAPParseContext *)v1 setStart:v2];

        v7 = 34;
      }

      goto LABEL_64;
    }

    if (![(MFIMAPParseContext *)v1 parseSpace])
    {
      [(MFIMAPParseContext *)v1 emitWarning:@"Expected space"];
    }

    v16 = [(MFIMAPParseContext *)v1 copyNumber];
    if (v16)
    {
      if (![(MFIMAPParseContext *)v1 parseSpace])
      {
        [(MFIMAPParseContext *)v1 emitWarning:@"Expected space"];
      }

      v17 = [(MFIMAPParseContext *)v1 copyMessageSet];
      if (v17)
      {
        if (![(MFIMAPParseContext *)v1 parseSpace])
        {
          [(MFIMAPParseContext *)v1 emitWarning:@"Expected space"];
        }

        v7 = [(MFIMAPParseContext *)v1 copyMessageSet];
        if (v7)
        {
          v6 = [objc_allocWithZone(MEMORY[0x277CBEA60]) initWithObjects:{v16, v17, v7, 0}];

          v7 = 16;
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_127;
      }
    }

    else
    {
      v17 = 0;
    }

    v6 = 0;
    v7 = 0;
LABEL_127:

LABEL_128:
    goto LABEL_64;
  }

  v6 = 0;
  v7 = 1;
LABEL_64:
  if (![(MFIMAPParseContext *)v1 match:"]"])
  {
    [(MFIMAPParseContext *)v1 emitWarning:@"Expected ]"];
  }

  [(MFIMAPParseContext *)v1 parseSpace];
LABEL_67:
  v12 = [objc_allocWithZone(MEMORY[0x277D24F00]) initWithBytes:-[MFIMAPParseContext start](v1 length:{"start"), -[MFIMAPParseContext end](v1, "end") - -[MFIMAPParseContext start](v1, "start")}];
  [(MFIMAPParseContext *)v1 setEnd:[(MFIMAPParseContext *)v1 start]];
  v13 = [(MFIMAPParseContext *)v1 response];
  [v13 setUserData:v12 responseCode:v7 responseInfo:v6];

  v14 = *MEMORY[0x277D85DE8];
}

void capability_response(MFIMAPParseContext *a1)
{
  v3 = a1;
  v1 = capability_array(v3);
  v2 = [(MFIMAPParseContext *)v3 response];
  [v2 setCapabilities:v1];
}

void sub_272134C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void id_response(MFIMAPParseContext *a1)
{
  v5 = a1;
  if (![(MFIMAPParseContext *)v5 parseSpace])
  {
    [(MFIMAPParseContext *)v5 emitWarning:@"Expected space"];
  }

  v1 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([(MFIMAPParseContext *)v5 match:"(")]
  {
    while (![(MFIMAPParseContext *)v5 match:"]"))
    {
      v2 = [(MFIMAPParseContext *)v5 copyNilOrString];
      [(MFIMAPParseContext *)v5 parseSpace];
      v3 = [(MFIMAPParseContext *)v5 copyNilOrString];
      [(MFIMAPParseContext *)v5 parseSpace];
      if (v2)
      {
        if (v3)
        {
          [v1 mf_addObject:v3 forKey:v2];
        }
      }
    }
  }

  else if (![(MFIMAPParseContext *)v5 match:"NIL"])
  {
    [(MFIMAPParseContext *)v5 emitWarning:@"Expected list or NIL"];
  }

  v4 = [(MFIMAPParseContext *)v5 response];
  [v4 setServerInfo:v1];
}

void flags_response(MFIMAPParseContext *a1)
{
  v4 = a1;
  if (![(MFIMAPParseContext *)v4 parseSpace])
  {
    [(MFIMAPParseContext *)v4 emitWarning:@"Expected space"];
  }

  v1 = flags_array(v4);
  v2 = [(MFIMAPParseContext *)v4 response];
  [v2 setResponseType:12];

  v3 = [(MFIMAPParseContext *)v4 response];
  [v3 setFlags:v1];
}

void sub_272134E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void status_response(MFIMAPParseContext *a1)
{
  v18 = a1;
  v1 = [(MFIMAPParseContext *)v18 response];
  [v1 setResponseType:13];

  if (![(MFIMAPParseContext *)v18 parseSpace])
  {
    [(MFIMAPParseContext *)v18 emitWarning:@"Expected space"];
  }

  v2 = mailbox(v18);
  if (![(MFIMAPParseContext *)v18 parseSpace])
  {
    [(MFIMAPParseContext *)v18 emitWarning:@"Expected space"];
  }

  v3 = [(MFIMAPParseContext *)v18 copyArray];
  if (!v3)
  {
    v7 = ([(MFIMAPParseContext *)v18 end]- 1);
    do
    {
      v8 = v7;
      if (v7 <= [(MFIMAPParseContext *)v18 start])
      {
        break;
      }

      v7 = (v8 - 1);
    }

    while (*v8 != 41);
      ;
    }

    if (i <= [(MFIMAPParseContext *)v18 start])
    {
      v3 = 0;
    }

    else
    {
      [(MFIMAPParseContext *)v18 setStart:i];
      v3 = [(MFIMAPParseContext *)v18 copyArray];
      if (v3)
      {
        goto LABEL_6;
      }
    }

    Mutable = 0;
    goto LABEL_31;
  }

LABEL_6:
  v4 = [v3 count];
  v5 = v4;
  if (v4 > 1)
  {
    v17 = v2;
    Mutable = CFDictionaryCreateMutable(0, v4 >> 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v10 = 1;
    do
    {
      v11 = [v3 objectAtIndex:{v10 - 1, v17}];
      v12 = [v3 objectAtIndex:v10];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = -1;
        v14 = status_response(MFIMAPParseContext *)::KnownStatusCodes;
        while (1)
        {
          v15 = **v14;
          if (v15)
          {
            if (![v11 caseInsensitiveCompare:v15])
            {
              break;
            }
          }

          ++v13;
          ++v14;
          if (v13 >= 5)
          {
            goto LABEL_24;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          CFDictionarySetValue(Mutable, v15, v12);
        }
      }

      else
      {
LABEL_24:
        v15 = 0;
        CFDictionarySetValue(Mutable, v11, v12);
      }

      v10 += 2;
    }

    while (v10 < v5);
    v2 = v17;
  }

  else
  {
    Mutable = [MEMORY[0x277CBEAC0] dictionary];
  }

LABEL_31:
  v16 = [(MFIMAPParseContext *)v18 response];
  [v16 setMailboxName:v2 statusEntries:Mutable];
}

void search_response(MFIMAPParseContext *a1)
{
  v6 = a1;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v2 = [(MFIMAPParseContext *)v6 response];
  [v2 setResponseType:14];

  v3 = 0;
  while ([(MFIMAPParseContext *)v6 parseSpace])
  {
    v4 = [(MFIMAPParseContext *)v6 copyNumber];

    if (!v4)
    {
      v3 = 0;
      break;
    }

    v3 = v4;
    CFArrayAppendValue(Mutable, v4);
  }

  v5 = [(MFIMAPParseContext *)v6 response];
  [v5 setSearchResults:Mutable];

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void list_response(MFIMAPParseContext *a1)
{
  v16 = a1;
  if (![(MFIMAPParseContext *)v16 parseSpace])
  {
    [(MFIMAPParseContext *)v16 emitWarning:@"Expected space"];
  }

  v1 = flags_array(v16);
  if (![(MFIMAPParseContext *)v16 parseSpace])
  {
    [(MFIMAPParseContext *)v16 emitWarning:@"Expected space"];
  }

  v2 = [(MFIMAPParseContext *)v16 copyNilOrString];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {

    v3 = 0;
  }

  if (![(MFIMAPParseContext *)v16 parseSpace])
  {
    [(MFIMAPParseContext *)v16 emitWarning:@"Expected space"];
  }

  v4 = mailbox(v16);
  if (v1)
  {
    v5 = v1;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = [v5 count];
    if (v7)
    {
      v15 = v4;
      v8 = 0;
      do
      {
        v9 = [v5 objectAtIndex:{--v7, v15}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = 0;
          while ([(__CFString *)*(&IMAPMailboxAttributeEntries + v10) compare:v9 options:1])
          {
            v11 = v10 > 0x5F;
            v10 += 16;
            if (v11)
            {
              [v6 insertObject:v9 atIndex:0];
              goto LABEL_20;
            }
          }

          v8 |= *(&IMAPMailboxAttributeEntries + v10 + 8);
        }

LABEL_20:
      }

      while (v7);
      v7 = v8;
      v4 = v15;
    }

    v12 = v6;

    v13 = v6;
  }

  else
  {
    v7 = 0;
    v13 = 0;
  }

  v14 = [(MFIMAPParseContext *)v16 response];
  [v14 setMailboxAttributes:v7 separator:v3 mailboxName:v4 extraAttributes:v13];
}

void fetch_response(MFIMAPParseContext *a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [(MFIMAPParseContext *)v1 response];
  [v2 setResponseType:17];

  if (![(MFIMAPParseContext *)v1 parseSpace])
  {
    [(MFIMAPParseContext *)v1 emitWarning:@"Expected space"];
  }

  if (![(MFIMAPParseContext *)v1 match:"(")]
  {
    [(MFIMAPParseContext *)v1 emitError:@"Invalid FETCH response"];
  }

  v52 = 0;
  v4 = 1;
  *&v3 = 136315650;
  v49 = v3;
  while (1)
  {
    v5 = [(MFIMAPParseContext *)v1 start];
    if (v5 >= [(MFIMAPParseContext *)v1 end]|| [(MFIMAPParseContext *)v1 match:"]"))
    {
      break;
    }

    if (v52)
    {
      if (![(MFIMAPParseContext *)v1 parseSpace]&& v4)
      {
        v46 = 0;
        [(MFIMAPParseContext *)v1 emitWarning:@"Expected space"];
        goto LABEL_141;
      }
    }

    else
    {
      v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v6 = memchr([(MFIMAPParseContext *)v1 start], 32, [(MFIMAPParseContext *)v1 end]- [(MFIMAPParseContext *)v1 start]);
    if (!v6)
    {
      v46 = 0;
      [(MFIMAPParseContext *)v1 emitError:@"Couldn't parse FETCH: no space character in input"];
      goto LABEL_141;
    }

    v7 = v6;
    if ([(MFIMAPParseContext *)v1 match:"BODYSTRUCTURE" upToSpecial:v6]|| [(MFIMAPParseContext *)v1 match:"BODY" upToSpecial:v7])
    {
      v8 = 0;
      v46 = 0;
      v9 = 6;
      goto LABEL_16;
    }

    if ([(MFIMAPParseContext *)v1 match:"ENVELOPE" upToSpecial:v7])
    {
      v8 = 0;
      v46 = 0;
      v9 = 1;
      goto LABEL_16;
    }

    if ([(MFIMAPParseContext *)v1 match:"UID" upToSpecial:v7])
    {
      v8 = 0;
      v46 = 0;
      v9 = 8;
      goto LABEL_16;
    }

    if ([(MFIMAPParseContext *)v1 match:"X-GM-MSGID" upToSpecial:v7])
    {
      v8 = 0;
      v46 = 0;
      v9 = 9;
      goto LABEL_16;
    }

    if ([(MFIMAPParseContext *)v1 match:"RFC822.SIZE" upToSpecial:v7])
    {
      v8 = 0;
      v46 = 0;
      v9 = 3;
      goto LABEL_16;
    }

    if ([(MFIMAPParseContext *)v1 match:"RFC822" upToSpecial:v7])
    {
      v8 = 0;
      v46 = 0;
      v9 = 7;
      goto LABEL_16;
    }

    if ([(MFIMAPParseContext *)v1 match:"RFC822.HEADER" upToSpecial:v7]|| [(MFIMAPParseContext *)v1 match:"HEADER" upToSpecial:v7])
    {
      v8 = 0;
      v46 = 0;
      v9 = 4;
      goto LABEL_16;
    }

    if ([(MFIMAPParseContext *)v1 match:"RFC822.TEXT" upToSpecial:v7]|| [(MFIMAPParseContext *)v1 match:"TEXT" upToSpecial:v7])
    {
      v8 = 0;
      v46 = 0;
      v9 = 5;
      goto LABEL_16;
    }

    if ([(MFIMAPParseContext *)v1 match:"FLAGS" upToSpecial:v7])
    {
      v8 = 0;
      v46 = 0;
      v9 = 10;
      goto LABEL_16;
    }

    if ([(MFIMAPParseContext *)v1 match:"MODSEQ" upToSpecial:v7])
    {
      v8 = 0;
      v46 = 0;
      v9 = 11;
      goto LABEL_16;
    }

    if ([(MFIMAPParseContext *)v1 match:"INTERNALDATE" upToSpecial:v7])
    {
      v8 = 0;
      v46 = 0;
      v9 = 2;
      goto LABEL_16;
    }

    if (![(MFIMAPParseContext *)v1 match:"BODY["])
    {
      v8 = 0;
      v46 = 0;
      v9 = 0;
      goto LABEL_16;
    }

    v41 = [(MFIMAPParseContext *)v1 start];
    if ([(MFIMAPParseContext *)v1 match:"HEADER."])
    {
      [(MFIMAPParseContext *)v1 setStart:v7 + 1];
      v42 = [(MFIMAPParseContext *)v1 copyArray];
      if (!v42)
      {
        [(MFIMAPParseContext *)v1 emitWarning:@"Unable to parse header keys array"];
      }

      v43 = memchr([(MFIMAPParseContext *)v1 start], 32, [(MFIMAPParseContext *)v1 end]- [(MFIMAPParseContext *)v1 start]);
      if (!v43)
      {
        [(MFIMAPParseContext *)v1 emitError:@"Couldn't parse FETCH: no space character in input"];

        goto LABEL_145;
      }

      v7 = v43;

LABEL_130:
      v46 = 0;
      v9 = 4;
      goto LABEL_133;
    }

    if ([(MFIMAPParseContext *)v1 match:"HEADER" upToSpecial:v7])
    {
      goto LABEL_130;
    }

    v44 = memchr([(MFIMAPParseContext *)v1 start], 93, [(MFIMAPParseContext *)v1 end]- [(MFIMAPParseContext *)v1 start]);
    if (!v44)
    {
      [(MFIMAPParseContext *)v1 emitError:@"Couldn't parse FETCH: no square brace character in input"];
LABEL_145:
      v46 = 0;
LABEL_141:

      break;
    }

    v45 = v44;
    v46 = [(MFIMAPParseContext *)v1 copyStringFrom:v41 to:v44 withCaseOption:1];
    [(MFIMAPParseContext *)v1 setStart:v45 + 1];
    v9 = 7;
LABEL_133:
    if (![(MFIMAPParseContext *)v1 match:"<"])
    {
      goto LABEL_138;
    }

    *buf = 0;
    if (![(MFIMAPParseContext *)v1 getNumber:buf])
    {
      [(MFIMAPParseContext *)v1 emitWarning:@"Expected number"];
LABEL_138:
      v8 = 0;
      goto LABEL_16;
    }

    v8 = *buf;
    if (![(MFIMAPParseContext *)v1 match:">"])
    {
      [(MFIMAPParseContext *)v1 emitWarning:@"Expected >"];
    }

LABEL_16:
    v10 = ![(MFIMAPParseContext *)v1 isValid];
    if (v9)
    {
      LOBYTE(v10) = 1;
    }

    if ((v10 & 1) == 0)
    {
      [(MFIMAPParseContext *)v1 emitError:@"Unrecognized FETCH key"];
      goto LABEL_141;
    }

    [(MFIMAPParseContext *)v1 setStart:v7];
    if (![(MFIMAPParseContext *)v1 parseSpace])
    {
      [(MFIMAPParseContext *)v1 emitWarning:@"Expected space"];
    }

    [(MFIMAPParseContext *)v1 logReadChars];
    v11 = [[MFIMAPFetchResult alloc] initWithType:v9];
    v12 = 0;
    v4 = 1;
    if (v9 <= 5)
    {
      if (v9 <= 2)
      {
        if (v9 == 1)
        {
          v51 = v11;
          v13 = [(MFIMAPParseContext *)v1 copyArray];
          [(MFIMAPFetchResult *)v11 setEnvelope:v13];
        }

        else
        {
          if (v9 != 2)
          {
            goto LABEL_105;
          }

          v51 = v11;
          v15 = v13 = [(MFIMAPParseContext *)v1 copyDateTime];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [(__CFArray *)v13 description];
            *buf = v49;
            *&buf[4] = "";
            v54 = 2080;
            v55 = "";
            v56 = 2112;
            v57 = v16;
            _os_log_impl(&dword_2720B1000, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s#Power [Server Fetch Time] InternalDate=%@", buf, 0x20u);
          }
        }
      }

      else
      {
        if (v9 != 3)
        {
          if (v9 == 4)
          {
            v14 = body_data(v1, &cfstr_Header.isa);
            if (v8)
            {
LABEL_30:
              [(MFIMAPFetchResult *)v11 setStartOffset:v8];
            }
          }

          else
          {
            v14 = body_data(v1, &cfstr_Text_1.isa);
            if (v8)
            {
              goto LABEL_30;
            }
          }

LABEL_55:
          if (v14)
          {
            [(MFIMAPFetchResult *)v11 setFetchData:v14];
            v4 = 1;
            v12 = v14;
            goto LABEL_105;
          }

LABEL_57:
          v12 = 0;
          v4 = 1;
          goto LABEL_105;
        }

        v51 = v11;
        v13 = [(MFIMAPParseContext *)v1 copyNumber];
        [(MFIMAPFetchResult *)v11 setMessageSize:[(__CFArray *)v13 unsignedIntValue]];
      }
    }

    else if (v9 > 8)
    {
      if (v9 == 9)
      {
        v51 = v11;
        v13 = [(MFIMAPParseContext *)v1 copyNumber];
        [(MFIMAPFetchResult *)v11 setUniqueRemoteId:[(__CFArray *)v13 unsignedLongLongValue]];
      }

      else if (v9 == 10)
      {
        v18 = v1;
        v51 = v11;
        v19 = 0;
        if ([(MFIMAPParseContext *)v18 match:"(")]
        {
          v50 = 0;
          for (i = 1; ![(MFIMAPParseContext *)v18 match:"]"); i = 0)
          {
            if ((i & 1) == 0)
            {
              while (1)
              {
                v23 = [(MFIMAPParseContext *)v18 start];
                if (v23 >= [(MFIMAPParseContext *)v18 end]|| [(MFIMAPParseContext *)v18 parseSpace]|| [(MFIMAPParseContext *)v18 lookAhead]== 41)
                {
                  break;
                }

                [(MFIMAPParseContext *)v18 increment];
              }
            }

            if ([(MFIMAPParseContext *)v18 match:"]"))
            {
              break;
            }

            if ([(MFIMAPParseContext *)v18 lookAhead]== 92)
            {
              v21 = [(MFIMAPParseContext *)v18 start];
              if (v21 + 1 < [(MFIMAPParseContext *)v18 end]&& [(MFIMAPParseContext *)v18 start][1] == 42)
              {
                v22 = ([(MFIMAPParseContext *)v18 start]+ 2);
              }

              else
              {
                v25 = ([(MFIMAPParseContext *)v18 start]+ 1);
                do
                {
                  v22 = v25;
                  if (v25 >= [(MFIMAPParseContext *)v18 end])
                  {
                    break;
                  }

                  isIMAPAtom = mf_isIMAPAtom(*v22);
                  v25 = (v22 + 1);
                }

                while (isIMAPAtom);
              }

              if (&v22[[(MFIMAPParseContext *)v18]] < 2)
              {
                break;
              }

              v27 = [(MFIMAPParseContext *)v18 copyStringFrom:[(MFIMAPParseContext *)v18 start] to:v22 withCaseOption:0];
              [(MFIMAPParseContext *)v18 setStart:v22];
              if (!v27)
              {
                break;
              }
            }

            else
            {
              if ([(MFIMAPParseContext *)v18 lookAhead]== 34)
              {
                v24 = [(MFIMAPParseContext *)v18 copyQuotedString];
              }

              else
              {
                v24 = [(MFIMAPParseContext *)v18 copyAtom];
              }

              v27 = v24;
              if (!v24)
              {
                break;
              }
            }

            v28 = [v27 dataUsingEncoding:1 allowLossyConversion:1];
            v29 = v28;
            v30 = [v28 bytes];
            v31 = [v28 length];
            v32 = &IMAPMessageFlagsTable;
            v33 = 12;
            do
            {
              v34 = *v32;
              v32 += 3;
              v35 = strncasecmp(v30, v34, v31);
              if (v35)
              {
                v36 = v33 == 0;
              }

              else
              {
                v36 = 1;
              }

              --v33;
            }

            while (!v36);
            v37 = v35 == 0;

            if (v37)
            {
              v50 |= *(v32 - 2);
            }

            else
            {
              if (!v19)
              {
                v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              [v19 addObject:v27];
            }
          }
        }

        else
        {
          v50 = 0;
        }

        v40 = v19;

        v13 = v19;
        [(MFIMAPFetchResult *)v51 setMessageFlags:v50];
        [(MFIMAPFetchResult *)v51 setCustomFlagsArray:v13];
      }

      else
      {
        if (![(MFIMAPParseContext *)v1 match:"(")]
        {
          goto LABEL_57;
        }

        v51 = v11;
        v13 = [(MFIMAPParseContext *)v1 copyNumber];
        [(MFIMAPFetchResult *)v11 setModSequenceNumber:[(__CFArray *)v13 unsignedLongLongValue]];
        if (![(MFIMAPParseContext *)v1 match:"]"))
        {
          [(MFIMAPParseContext *)v1 emitError:@"Expected a right paren"];
        }
      }
    }

    else
    {
      if (v9 == 6)
      {
        v38 = v1;
        v51 = v11;
        v13 = [(MFIMAPParseContext *)v38 copyArrayAllowingNulls:1];
        if (v13)
        {
          TypeID = CFArrayGetTypeID();
          if (TypeID != CFGetTypeID(v13))
          {
            CFRelease(v13);
            v13 = 0;
          }
        }

        [(MFIMAPFetchResult *)v11 setBodyStructure:v13];
        v4 = v13 != 0;
        goto LABEL_104;
      }

      if (v9 == 7)
      {
        v17 = objc_alloc_init(MEMORY[0x277CCAB68]);
        [v17 appendString:@"BODY.PEEK["];
        if (v46)
        {
          [v17 appendString:v46];
        }

        [v17 appendString:@"]"];
        v14 = body_data(v1, v46);
        if (v46)
        {
          [(MFIMAPFetchResult *)v11 setSection:v46];
        }

        if (v8)
        {
          [(MFIMAPFetchResult *)v11 setStartOffset:v8];
        }

        goto LABEL_55;
      }

      v51 = v11;
      v13 = [(MFIMAPParseContext *)v1 copyNumber];
      [(MFIMAPFetchResult *)v11 setUid:[(__CFArray *)v13 unsignedIntValue]];
    }

    v4 = 1;
LABEL_104:

    v12 = 0;
    v11 = v51;
LABEL_105:
    [v52 addObject:v11];
  }

  v47 = [(MFIMAPParseContext *)v1 response];
  [v47 setFetchResults:v52];

  v48 = *MEMORY[0x277D85DE8];
}

void quotaroot_response(MFIMAPParseContext *a1)
{
  v9 = a1;
  v1 = [(MFIMAPParseContext *)v9 response];
  [v1 setResponseType:18];

  if ([(MFIMAPParseContext *)v9 parseSpace]&& (v2 = [(MFIMAPParseContext *)v9 copyAString]) != 0)
  {
    Mutable = 0;
    v4 = 0;
    v5 = MEMORY[0x277CBF128];
    while ([(MFIMAPParseContext *)v9 parseSpace])
    {
      v6 = [(MFIMAPParseContext *)v9 copyAString];

      if (!v6)
      {
        v4 = 0;
        break;
      }

      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, 0, v5);
      }

      v4 = v6;
      [(__CFArray *)Mutable addObject:v6];
    }

    v7 = v2;
  }

  else
  {
    Mutable = 0;
    v7 = 0;
  }

  v8 = [(MFIMAPParseContext *)v9 response];
  [v8 setMailboxName:v7 quotaRootNames:Mutable];
}

void quota_response(MFIMAPParseContext *a1)
{
  v13 = a1;
  v1 = [(MFIMAPParseContext *)v13 response];
  [v1 setResponseType:19];

  if (![(MFIMAPParseContext *)v13 parseSpace])
  {
    [(MFIMAPParseContext *)v13 emitWarning:@"Expected space"];
  }

  v2 = [(MFIMAPParseContext *)v13 copyAString];
  if (v2 && [(MFIMAPParseContext *)v13 parseSpace]&& [(MFIMAPParseContext *)v13 match:"(")]
  {
    v3 = 0;
    v4 = MEMORY[0x277CBED60];
    v5 = MEMORY[0x277CBF150];
    v6 = v13;
    do
    {
      v7 = [(MFIMAPParseContext *)v6 copyAtom];
      if (![(MFIMAPParseContext *)v13 parseSpace])
      {
        [(MFIMAPParseContext *)v13 emitWarning:@"Expected space"];
      }

      v8 = [(MFIMAPParseContext *)v13 copyNumber];
      if (![(MFIMAPParseContext *)v13 parseSpace])
      {
        [(MFIMAPParseContext *)v13 emitWarning:@"Expected space"];
      }

      v9 = [(MFIMAPParseContext *)v13 copyNumber];
      if (v7)
      {
        Mutable = CFDictionaryCreateMutable(0, 3, v4, v5);
        [(__CFDictionary *)Mutable setObject:v7 forKey:@"_IMAPNameQuotaKey"];
        if (v8)
        {
          [(__CFDictionary *)Mutable setObject:v8 forKey:@"_IMAPCurrentUsageQuotaKey"];
        }

        if (v9)
        {
          [(__CFDictionary *)Mutable setObject:v9 forKey:@"_IMAPMaxUsageQuotaKey"];
        }

        if (!v3)
        {
          v3 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        }

        [(__CFArray *)v3 addObject:Mutable];
      }

      v11 = [(MFIMAPParseContext *)v13 parseSpace];
      v6 = v13;
    }

    while (v11);
  }

  else
  {
    v3 = 0;
    v6 = v13;
  }

  v12 = [(MFIMAPParseContext *)v6 response];
  [v12 setQuotaRootName:v2 quotas:v3];
}

void esearch_response(MFIMAPParseContext *a1)
{
  v3 = a1;
  v1 = [(MFIMAPParseContext *)v3 response];
  [v1 setResponseType:20];

  v2 = [(MFIMAPParseContext *)v3 connection];
  [v2 parseESearchResponseWithContext:v3];
}

void sub_27213697C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void push_response(MFIMAPParseContext *a1)
{
  v8 = a1;
  if (![(MFIMAPParseContext *)v8 parseSpace])
  {
    [(MFIMAPParseContext *)v8 emitWarning:@"Expected space"];
  }

  v1 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = [(MFIMAPParseContext *)v8 copyNilOrString];
  [(MFIMAPParseContext *)v8 parseSpace];
  v3 = [(MFIMAPParseContext *)v8 copyNilOrString];
  v4 = v3;
  if (v2 && v3)
  {
    do
    {
      [v1 mf_addObject:v4 forKey:v2];
      [(MFIMAPParseContext *)v8 parseSpace];
      v5 = [(MFIMAPParseContext *)v8 copyNilOrString];

      [(MFIMAPParseContext *)v8 parseSpace];
      v6 = [(MFIMAPParseContext *)v8 copyNilOrString];

      if (!v5)
      {
        break;
      }

      v4 = v6;
      v2 = v5;
    }

    while (v6);
  }

  else
  {
    v5 = v2;
    v6 = v3;
  }

  v7 = [(MFIMAPParseContext *)v8 response];
  [v7 setServerInfo:v1];
}

void sub_272136AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void namespace_response(MFIMAPParseContext *a1)
{
  v1 = a1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___ZL18namespace_responseP18MFIMAPParseContext_block_invoke;
  v8[3] = &unk_279E355F8;
  v2 = v1;
  v9 = v2;
  v3 = MEMORY[0x2743C3100](v8);
  v4 = v3[2]();
  v5 = (v3[2])(v3);
  v6 = (v3[2])(v3);
  v7 = [(MFIMAPParseContext *)v2 response];
  [v7 setResponseType:22];
  [v7 setPrivateNamespaces:v4];
  [v7 setPublicNamespaces:v5];
  [v7 setSharedNamespaces:v6];
}

void other_response(MFIMAPParseContext *a1)
{
  v9 = a1;
  v1 = [(MFIMAPParseContext *)v9 response];
  [v1 setResponseType:23];

  [(MFIMAPParseContext *)v9 parseSpace];
  v2 = 0;
  v3 = [(MFIMAPParseContext *)v9 copyAtom];
  while ([(MFIMAPParseContext *)v9 parseSpace])
  {
    v4 = [(MFIMAPParseContext *)v9 start];
    if (v4 >= [(MFIMAPParseContext *)v9 end])
    {
      break;
    }

    v5 = [(MFIMAPParseContext *)v9 lookAhead];
    switch(v5)
    {
      case '""':
        v6 = [(MFIMAPParseContext *)v9 copyQuotedString];
        goto LABEL_12;
      case '(':
        v6 = [(MFIMAPParseContext *)v9 copyArray];
        goto LABEL_12;
      case '{':
        v6 = [(MFIMAPParseContext *)v9 copyLiteralString];
        goto LABEL_12;
    }

    v7 = [(MFIMAPParseContext *)v9 copyNumber];
    if (!v7)
    {
      v6 = [(MFIMAPParseContext *)v9 copyAtom];
LABEL_12:
      v7 = v6;
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    if (!v2)
    {
      v2 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
    }

    [v2 addObject:v7];
LABEL_16:
  }

  v8 = [(MFIMAPParseContext *)v9 response];
  [v8 setResponseName:v3 parameters:v2];
}

__CFString *mailbox(MFIMAPParseContext *a1)
{
  v1 = [(MFIMAPParseContext *)a1 copyAString];
  if (v1 && ![@"INBOX" caseInsensitiveCompare:v1])
  {

    v1 = @"INBOX";
  }

  return v1;
}

id flags_array(MFIMAPParseContext *a1)
{
  v1 = a1;
  if ([(MFIMAPParseContext *)v1 match:"(")]
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    v3 = 1;
    while (![(MFIMAPParseContext *)v1 match:"]"))
    {
      if ((v3 & 1) == 0)
      {
        while (1)
        {
          v6 = [(MFIMAPParseContext *)v1 start];
          if (v6 >= [(MFIMAPParseContext *)v1 end]|| [(MFIMAPParseContext *)v1 parseSpace]|| [(MFIMAPParseContext *)v1 lookAhead]== 41)
          {
            break;
          }

          [(MFIMAPParseContext *)v1 increment];
        }
      }

      if ([(MFIMAPParseContext *)v1 lookAhead]== 92)
      {
        v4 = [(MFIMAPParseContext *)v1 start];
        if (v4 + 1 < [(MFIMAPParseContext *)v1 end]&& [(MFIMAPParseContext *)v1 start][1] == 42)
        {
          v5 = ([(MFIMAPParseContext *)v1 start]+ 2);
        }

        else
        {
          v8 = ([(MFIMAPParseContext *)v1 start]+ 1);
          do
          {
            v5 = v8;
            if (v8 >= [(MFIMAPParseContext *)v1 end])
            {
              break;
            }

            isIMAPAtom = mf_isIMAPAtom(*v5);
            v8 = (v5 + 1);
          }

          while (isIMAPAtom);
        }

        if (&v5[[(MFIMAPParseContext *)v1]] < 2)
        {
          break;
        }

        v10 = [(MFIMAPParseContext *)v1 copyStringFrom:[(MFIMAPParseContext *)v1 start] to:v5 withCaseOption:0];
        [(MFIMAPParseContext *)v1 setStart:v5];
        if (!v10)
        {
          break;
        }
      }

      else
      {
        if ([(MFIMAPParseContext *)v1 lookAhead]== 34)
        {
          v7 = [(MFIMAPParseContext *)v1 copyQuotedString];
        }

        else
        {
          v7 = [(MFIMAPParseContext *)v1 copyAtom];
        }

        v10 = v7;
        if (!v7)
        {
          break;
        }
      }

      [v2 addObject:v10];

      v3 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id capability_array(MFIMAPParseContext *a1)
{
  v1 = a1;
  v2 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  while ([(MFIMAPParseContext *)v1 parseSpace])
  {
      ;
    }

    if (i > [(MFIMAPParseContext *)v1 start])
    {
      v4 = [(MFIMAPParseContext *)v1 copyStringFrom:[(MFIMAPParseContext *)v1 start] to:i withCaseOption:1];
      [(MFIMAPParseContext *)v1 setStart:i];
      [v2 addObject:v4];
    }
  }

  return v2;
}

id body_data(MFIMAPParseContext *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [(MFIMAPParseContext *)v3 response];
  v6 = [v5 responseConsumer];

  if (v6)
  {
    if (![(MFIMAPParseContext *)v3 literalWithResponseConsumer:v6 section:v4])
    {
      v7 = nilOrString(v3);
      [v6 appendData:v7 forSection:v4];
    }

    v8 = 0;
  }

  else
  {
    v8 = [(MFIMAPParseContext *)v3 copyLiteral];
    if (!v8)
    {
      v8 = nilOrString(v3);
    }
  }

  return v8;
}

void sub_272137334(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id nilOrString(MFIMAPParseContext *a1)
{
  v1 = [(MFIMAPParseContext *)a1 copyNilOrString];
  if (v1)
  {
    v2 = MFCreateDataWithString();
    v3 = [objc_alloc(MEMORY[0x277D24F00]) initWithImmutableData:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id ___ZL18namespace_responseP18MFIMAPParseContext_block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) parseSpace] & 1) == 0)
  {
    [*(a1 + 32) emitWarning:@"Expected space"];
  }

  v2 = [*(a1 + 32) copyArrayAllowingNulls:1];
  v3 = a1;
  if (v2)
  {
    v4 = v2;
    v42 = a1;
    Count = CFArrayGetCount(v2);
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        v9 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v10 = CFGetTypeID(ValueAtIndex);
          if (v10 == CFArrayGetTypeID())
          {
            v11 = CFGetTypeID(v9);
            if (v11 == CFArrayGetTypeID())
            {
              v12 = CFArrayGetCount(v9);
              if (v12 >= 2)
              {
                v13 = CFArrayGetValueAtIndex(v9, 0);
                v14 = v13;
                if (v13)
                {
                  v15 = CFGetTypeID(v13);
                  if (v15 == CFStringGetTypeID())
                  {
                    v16 = v14;
                  }

                  else
                  {
                    v16 = 0;
                  }
                }

                else
                {
                  v16 = 0;
                }

                v41 = v16;
                v17 = CFArrayGetValueAtIndex(v9, 1);
                v18 = v17;
                if (v17)
                {
                  v19 = CFGetTypeID(v17);
                  if (v19 == CFStringGetTypeID())
                  {
                    v20 = v18;
                  }

                  else
                  {
                    v20 = 0;
                  }
                }

                else
                {
                  v20 = 0;
                }

                v21 = v20;
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  [*(v42 + 32) emitError:@"couldn't parse namespace response: prefix and/or delimiter were not strings"];

                  v6 = 0;
                }

                v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
                [v40 setObject:v41 forKeyedSubscript:@"_IMAPNamespacePrefixKey"];
                if (v21)
                {
                  [v40 setObject:v21 forKeyedSubscript:@"_IMAPNamespaceDelimiterKey"];
                }

                if (v12 != 2)
                {
                  if (v12)
                  {
                    [*(v42 + 32) emitError:@"couldn't parse namespace response extensions: not enough values for keys"];
                    v35 = v6;
                    v6 = 0;
                  }

                  else
                  {
                    v38 = v21;
                    v39 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:(v12 >> 1) - 1];
                    v22 = 2;
                    do
                    {
                      v23 = CFArrayGetValueAtIndex(v9, v22);
                      v24 = v23;
                      if (v23)
                      {
                        v25 = CFGetTypeID(v23);
                        if (v25 == CFStringGetTypeID())
                        {
                          v26 = v24;
                        }

                        else
                        {
                          v26 = 0;
                        }
                      }

                      else
                      {
                        v26 = 0;
                      }

                      v27 = v26;
                      v28 = v22 + 1;
                      v29 = CFArrayGetValueAtIndex(v9, v22 + 1);
                      v30 = v29;
                      if (v29)
                      {
                        v31 = CFGetTypeID(v29);
                        if (v31 == CFArrayGetTypeID())
                        {
                          v32 = v30;
                        }

                        else
                        {
                          v32 = 0;
                        }
                      }

                      else
                      {
                        v32 = 0;
                      }

                      v33 = v32;
                      v34 = v33;
                      if (v27 && v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        [v39 setObject:v34 forKeyedSubscript:v27];
                      }

                      else
                      {
                        [*(v42 + 32) emitError:@"couldn't parse namespace response extensions: invalid key or value"];

                        v6 = 0;
                      }

                      v22 = v28 + 1;
                    }

                    while (v28 + 1 < v12);
                    v21 = v38;
                    if ([v39 count])
                    {
                      [v40 setObject:v39 forKeyedSubscript:@"_IMAPNamespaceExtensionsKey"];
                    }

                    v35 = v39;
                  }
                }

                [v6 addObject:v40];
              }
            }
          }
        }
      }
    }

    CFRelease(v4);
  }

  else
  {
    v36 = [*(a1 + 32) copyAtom];
    if ([v36 caseInsensitiveCompare:@"NIL"])
    {
      [*(v3 + 32) emitError:@"couldn't parse NAMESPACE: unexpected atom"];
    }

    else
    {

      v36 = 0;
    }

    v6 = 0;
  }

  return v6;
}

void response_without_tag(MFIMAPParseContext *a1)
{
  v1 = a1;
  v11 = 0;
  if ([(MFIMAPParseContext *)v1 getNumber:&v11])
  {
    if (![(MFIMAPParseContext *)v1 parseSpace])
    {
      [(MFIMAPParseContext *)v1 emitWarning:@"Expected space"];
    }

    v2 = v11;
    v3 = v1;
    matched = matchResponseTableEntry(v3, 4);
    v5 = [(MFIMAPParseContext *)v3 response];
    [v5 setNumber:v2];

    if (matched)
    {
      v6 = matched[2];
      if (v6)
      {
        v6(v3);
      }
    }
  }

  else
  {
    v7 = [(MFIMAPParseContext *)v1 response];
    if ([v7 isUntagged])
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v9 = matchResponseTableEntry(v1, v8);

    if (v9)
    {
      v10 = v9[2];
      if (v10)
      {
        v10(v1);
      }
    }
  }
}

void *matchResponseTableEntry(MFIMAPParseContext *a1, int a2)
{
  v3 = a1;
  v4 = [(MFIMAPParseContext *)v3 nextSeparator];
  v5 = 0;
  v6 = 0;
  v7 = v4 - [(MFIMAPParseContext *)v3 start];
  while (1)
  {
    if ((ResponseTypeTable[v6 + 3] & a2) == 0)
    {
      goto LABEL_6;
    }

    v8 = LODWORD(ResponseTypeTable[v6]);
    if (!v8)
    {
      break;
    }

    if (v7 == v8)
    {
      v9 = ResponseTypeTable[v6 + 1];
      if (!strncasecmp(v9, [(MFIMAPParseContext *)v3 start], v7))
      {
        goto LABEL_10;
      }
    }

LABEL_6:
    v5 = (v5 + 1);
    v10 = v6 >= 96;
    v6 += 4;
    if (v10)
    {
      v11 = 0;
      goto LABEL_11;
    }
  }

  v9 = ResponseTypeTable[v6 + 1];
LABEL_10:
  [(MFIMAPParseContext *)v3 match:v9];
  v12 = [(MFIMAPParseContext *)v3 response];
  [v12 setResponseType:v5];
  v11 = &ResponseTypeTable[v6];

LABEL_11:
  return v11;
}

void sub_27213A874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_27213B4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _compareMsgsByReadStatus(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 messageFlags];
  v8 = [v6 messageFlags];
  if (v7 == v8)
  {
    goto LABEL_2;
  }

  v10 = *a3;
  if ((v7 & 1) != 0 && (v8 & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((v8 & 1) != 0 && (v7 & 1) == 0 || (v13 = [v5 messageFlags], v14 = objc_msgSend(v6, "messageFlags"), (v13 & 4) != 0) && (v14 & 4) == 0)
  {
LABEL_10:
    v11 = v10 == 0;
    v12 = 1;
LABEL_11:
    if (v11)
    {
      v9 = -v12;
    }

    else
    {
      v9 = v12;
    }

    goto LABEL_14;
  }

  if ((v14 & 4) != 0 && (v13 & 4) == 0)
  {
    goto LABEL_5;
  }

  if ((v13 & 4) != 0)
  {
LABEL_2:
    v9 = _compareMsgsByDate(v5, v6, a3);
    goto LABEL_14;
  }

  v16 = [v5 messageFlags];
  v17 = [v6 messageFlags];
  if ((v16 & 0x100) != 0 && (v17 & 0x100) == 0)
  {
    goto LABEL_10;
  }

  if ((v17 & 0x100) != 0 && (v16 & 0x100) == 0)
  {
LABEL_5:
    v11 = v10 == 0;
    v12 = -1;
    goto LABEL_11;
  }

  if ((v16 & 0x100) != 0)
  {
    goto LABEL_2;
  }

  v18 = [v5 messageFlags];
  v19 = [v6 messageFlags];
  if ((v18 & 0x200) != 0 && (v19 & 0x200) == 0)
  {
    goto LABEL_10;
  }

  if ((v19 & 0x200) == 0)
  {
    goto LABEL_2;
  }

  v9 = v10 ? -1 : 1;
  if ((v18 & 0x200) != 0)
  {
    goto LABEL_2;
  }

LABEL_14:

  return v9;
}

uint64_t _compareMsgsBySender(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 senderAddressComment];
  v8 = [v6 senderAddressComment];
  if (v7 == v8)
  {
    goto LABEL_25;
  }

  v9 = *a3;
  v10 = v7;
  v11 = v8;
  v12 = v11;
  if (v10 && v11)
  {
    if (v9)
    {
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    v18 = [v11 localizedCaseInsensitiveCompare:v13];
  }

  else
  {
    v14 = -1;
    if (!v9)
    {
      v14 = 1;
    }

    v15 = 1;
    if (!v9)
    {
      v15 = -1;
    }

    if (v11)
    {
      v16 = 1;
    }

    else
    {
      v16 = v10 == 0;
    }

    if (v16)
    {
      v15 = 0;
    }

    v17 = v10 || v11 == 0;
    v18 = v17 ? v15 : v14;
  }

  if (!v18)
  {
LABEL_25:
    v18 = _compareMsgsByDate(v5, v6, a3);
  }

  return v18;
}

uint64_t _compareMsgsByFlags(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 messageFlags];
  v8 = [v6 messageFlags];
  v9 = *a3;
  if ((v7 & 0x10) != 0 || (v8 & 0x10) == 0)
  {
    if (*a3)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }

    if ((v8 & 0x10) != 0 || (v7 & 0x10) == 0)
    {
      v11 = [v5 priority];
      v12 = [v6 priority];
      v13 = -1;
      if (!v9)
      {
        v13 = 1;
      }

      if (v12 <= v11)
      {
        v14 = 0;
      }

      else
      {
        v14 = v10;
      }

      if (v12 >= v11)
      {
        v10 = v14;
      }

      else
      {
        v10 = v13;
      }

      if (!v10)
      {
        v10 = _compareMsgsByDate(v5, v6, a3);
      }
    }
  }

  else if (*a3)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t (*MFComparatorFunctionForSortOrder(void *a1))(void *a1, void *a2, unsigned __int8 *a3)
{
  v1 = a1;
  v2 = @"readstatus";
  v3 = _compareMsgsByReadStatus;
  v4 = &off_288158C98;
  v5 = 4;
  while (([(__CFString *)v2 isEqualToString:v1]& 1) == 0)
  {
    if (!v5)
    {
      v3 = 0;
      break;
    }

    v6 = *(v4 - 1);

    v7 = *v4;
    v4 += 2;
    v3 = v7;
    --v5;
    v2 = v6;
  }

  if (!v3)
  {
    v3 = _compareMsgsByDateReceived;
  }

  return v3;
}

uint64_t _compareMsgsByDate(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = *a3;
  if (a3[1] == 1)
  {
    [v5 dateReceivedAsTimeIntervalSince1970];
    v9 = v8;
    [v6 dateReceivedAsTimeIntervalSince1970];
  }

  else
  {
    [v5 dateSentAsTimeIntervalSince1970];
    v9 = v11;
    [v6 dateSentAsTimeIntervalSince1970];
  }

  if (v9 < v10)
  {
    v12 = v7 == 0;
    v13 = -1;
    goto LABEL_8;
  }

  if (v9 > v10)
  {
    v12 = v7 == 0;
    v13 = 1;
LABEL_8:
    if (v12)
    {
      v14 = -v13;
    }

    else
    {
      v14 = v13;
    }

    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v16 = [v5 libraryID];
    v17 = [v6 libraryID];
    v18 = 1;
    if (!v7)
    {
      v18 = -1;
    }

    if (v16 <= v17)
    {
      v18 = 0;
    }

    v19 = -1;
    if (!v7)
    {
      v19 = 1;
    }

    if (v16 < v17)
    {
      v14 = v19;
    }

    else
    {
      v14 = v18;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_11:

  return v14;
}

const char *asString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return "CONNECTED";
  }

  else
  {
    return off_279E35AC0[a1 - 1];
  }
}

void _logEvent(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = objc_autoreleasePoolPush();
  [_LogLock lock];
  v13 = [MEMORY[0x277CBEB28] data];
  v14 = v13;
  if (a3 && a4)
  {
    if (a5 == 0x7FFFFFFFFFFFFFFFLL || a5 >= a4 || !a6)
    {
      goto LABEL_4;
    }

    [v13 appendBytes:a3 length:a5];
    [v14 appendBytes:"[Omitted]" length:9];
    a4 -= a6 + a5;
    if (a4)
    {
      a3 += a6 + a5;
LABEL_4:
      [v14 appendBytes:a3 length:a4];
    }
  }

  else
  {
    [v13 appendBytes:a3 length:a4];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = _LogClasses;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v21 + 1) + 8 * i);
        [v19 logConnection:v11 type:a2 data:{v14, v21}];
        [v19 flushLog:a2 == 5 forConnection:v11];
      }

      v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  [_LogLock unlock];
  objc_autoreleasePoolPop(v12);

  v20 = *MEMORY[0x277D85DE8];
}

void sub_27213F35C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_27213F68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v12 = v10;

  a9.super_class = MFConnection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_27213F958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27213FBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_272140AF4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void _setupWriteErrorMessage(MFConnection *a1, _MFSocket *a2)
{
  v22 = a1;
  v3 = a2;
  v4 = +[MFActivityMonitor currentMonitor];
  v5 = [v4 error];
  v6 = [(MFConnection *)v22 hostname];
  v7 = [(MFConnection *)v22 port];
  if (!v5)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:0];
    if (v3)
    {
      v12 = 0;
    }

    else
    {
      v12 = @"(write) socket deleted";
    }

    v14 = v13;
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [(NSError *)v5 domain];
  v10 = [@"MFMessageErrorDomain" isEqualToString:v9];

  if (!v10)
  {
    v15 = [(NSError *)v5 domain];
    v16 = [*MEMORY[0x277CCA5B8] isEqualToString:v15];

    if (v16)
    {
      if ([(NSError *)v5 code]== 60)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"The connection to the server “%@” on port %d timed out.", v6, v8];
        goto LABEL_4;
      }

LABEL_18:
      v12 = 0;
      goto LABEL_19;
    }

    v17 = [(NSError *)v5 domain];
    v18 = [*MEMORY[0x277CCA670] isEqualToString:v17];

    if (!v18)
    {
      goto LABEL_18;
    }

    v19 = [(_MFSocket *)v3 serverCertificates];
    v14 = _setupSSLDomainError(v5, v6, v19);

    v12 = [v14 localizedDescription];
    if (!v12 || [&stru_288159858 isEqualToString:v12])
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"An SSL error occurred while trying to provide data to the server “%@”. Verify that this server supports SSL and that your account settings are correct.", v6];

      v12 = v20;
    }

LABEL_9:
    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v11 = [(NSError *)v5 localizedDescription];
LABEL_4:
  v12 = v11;
LABEL_19:
  v14 = v5;
LABEL_20:
  if (([v14 mf_isUserCancelledError] & 1) == 0)
  {
    if (!v12)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"The mail server “%@” is not responding. Verify that you have entered the correct account info in Mail settings.", v6];
    }

    v21 = [v14 setLocalizedDescription:v12];

    v14 = v21;
  }

LABEL_24:
  [v4 setError:v14];
}

uint64_t _fillBuffer(MFConnection *a1)
{
  v1 = a1;
  securityLayer = v1->_securityLayer;
  if (securityLayer)
  {
    [(MFSASLSecurityLayer *)securityLayer encryptionBufferSize];
    *v23 = 0;
    if (_readBytesFromSocket(v1, v23, 4, 1) != 4)
    {
      goto LABEL_39;
    }

    v3 = *v23;
    v4 = bswap32(*v23) >> 16;
    if (v1->_bufferLength != v4)
    {
      buffer = v1->_buffer;
      if (buffer)
      {
        v6 = malloc_type_realloc(buffer, v4, 0x79A8EA61uLL);
      }

      else
      {
        v6 = malloc_type_malloc(v4, 0xA30A2C6EuLL);
      }

      v1->_buffer = v6;
      v1->_bufferLength = v4;
    }

    if (v3 && _readBytesFromSocket(v1, v1->_buffer, v4, 1) >= 1)
    {
      v10 = [(MFSASLSecurityLayer *)v1->_securityLayer createDecryptedDataForBytes:v1->_buffer length:v4];
      if (!v10)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = [v10 length];
    bufferLength = v1->_bufferLength;
    v13 = v1->_buffer;
    if (v11 != bufferLength)
    {
      v13 = malloc_type_realloc(v1->_buffer, bufferLength, 0x100004077774924uLL);
      v1->_buffer = v13;
      v11 = v1->_bufferLength;
    }

    [v10 getBytes:v13 length:v11];
    v1->_bufferRemainingBytes = v1->_bufferLength;
    v1->_bufferStart = 0;
  }

  else
  {
    desiredBufferLength = v1->_desiredBufferLength;
    if (!desiredBufferLength)
    {
      desiredBufferLength = 0x8000;
      v1->_desiredBufferLength = 0x8000;
    }

    v8 = v1->_buffer;
    if (desiredBufferLength != v1->_bufferLength)
    {
      if (v8)
      {
        v8 = malloc_type_realloc(v1->_buffer, desiredBufferLength, 0x17823562uLL);
      }

      else
      {
        v8 = malloc_type_malloc(desiredBufferLength, 0x1AFF9D2AuLL);
      }

      v1->_buffer = v8;
      v1->_bufferLength = desiredBufferLength;
    }

    BytesFromSocket = _readBytesFromSocket(v1, v8, desiredBufferLength, 0);
    v1->_bufferRemainingBytes = BytesFromSocket & ~(BytesFromSocket >> 63);
    if (BytesFromSocket < 1)
    {
      goto LABEL_39;
    }
  }

  if ((*(v1 + 100) & 4) != 0)
  {
    v14 = objc_alloc_init(MEMORY[0x277D24F70]);
    inflater = v1->_inflater;
    v16 = v1->_buffer;
    inflater->avail_in = v1->_bufferRemainingBytes;
    inflater->next_in = v16;
    do
    {
      inflater->avail_out = NSPageSize();
      inflater->next_out = v1->_zbuffer;
      if (inflate(inflater, 0) == -2)
      {
        __assert_rtn("_fillBuffer", "Connection.mm", 985, "Z_STREAM_ERROR != err");
      }

      [v14 appendBytes:v1->_zbuffer length:NSPageSize() - inflater->avail_out];
    }

    while (!inflater->avail_out);
    v17 = [v14 length];
    if (v17)
    {
      v1->_bufferLength = v17;
      v1->_bufferRemainingBytes = v17;
      v18 = malloc_type_realloc(v1->_buffer, v17, 0x100004077774924uLL);
      v1->_buffer = v18;
      memcpy(v18, [v14 bytes], v1->_bufferLength);
      bufferRemainingBytes = v1->_bufferRemainingBytes;

      v1->_bufferStart = 0;
      if (bufferRemainingBytes < 1)
      {
        v20 = 0;
        goto LABEL_40;
      }

      goto LABEL_32;
    }

    v1->_bufferRemainingBytes = 0;

LABEL_39:
    v20 = 0;
    v1->_bufferStart = 0;
    goto LABEL_40;
  }

  v1->_bufferStart = 0;
LABEL_32:
  if (v1->_bufferRemainingBytes < 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = 1;
    if ([(MFSASLSecurityLayer *)v1->_securityLayer encryptionBufferSize])
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    _logEvent(v1, v21, v1->_buffer, v1->_bufferRemainingBytes, 0x7FFFFFFFFFFFFFFFuLL, 0);
  }

LABEL_40:

  return v20;
}

void sub_272141DCC(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exc_buf);
    v2[5] = 0;
    v5 = +[MFActivityMonitor currentMonitor];
    v6 = [MEMORY[0x277CCA9B8] errorWithException:v4];
    [v5 setError:v6];

    [v4 raise];
    objc_end_catch();
    JUMPOUT(0x272141D7CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_272142034(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_272142150(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_272142C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFConnectionSettings;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id _setupSSLDomainError(NSError *a1, NSString *a2, NSArray *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [(NSError *)v5 code];
  if (v8 > -9813)
  {
    if (v8 == -9812)
    {
      v9 = @"The root certificate for this server could not be verified.";
      goto LABEL_16;
    }

    if (v8 != -9808)
    {
      if (v8 == -9807)
      {
        v9 = @"The certificate for the server is invalid.";
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v9 = @"The format of the certificate for the server is bad.";
  }

  else
  {
    if (v8 == -9843)
    {
      v10 = @"The certificate hostname does not match “%@”.";
LABEL_13:
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:v10, v6];
      goto LABEL_16;
    }

    if (v8 != -9814)
    {
      if (v8 == -9813)
      {
        v9 = @"There is no root certificate for this server.";
        goto LABEL_16;
      }

LABEL_12:
      v10 = @"An SSL error occurred while trying to read data from the server “%@”. Verify that this server supports SSL and that your account settings are correct.";
      goto LABEL_13;
    }

    v9 = @"The certificate for this server has expired.";
  }

LABEL_16:
  if ([(NSArray *)v7 count])
  {
    v11 = [(NSError *)v5 userInfo];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 mutableCopy];
    }

    else
    {
      v13 = objc_opt_new();
    }

    v14 = v13;
    [v13 setObject:v7 forKey:@"MFSSLErrorCertificateKey"];
  }

  else
  {
    v14 = 0;
  }

  v15 = v9;
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to verify SSL server %@", v6];
  v17 = MEMORY[0x277CCA9B8];
  v18 = [(NSError *)v5 domain];
  v19 = [v17 errorWithDomain:v18 code:-[NSError code](v5 localizedDescription:"code") title:v15 userInfo:{v16, v14}];

  return v19;
}

uint64_t _readBytesFromSocket(MFConnection *a1, char *a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = [(MFConnection *)v7 getSocket];
  v9 = v8;
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if (v8 && a3)
  {
    while (1)
    {
      v11 = [v9 readBytes:a2 length:a3];
      if (v11 < 0)
      {
        break;
      }

      v7->_lastUsedTime = CFAbsoluteTimeGetCurrent();
      if (!v11)
      {
        break;
      }

      v12 = +[MFActivityMonitor currentMonitor];
      [v12 recordBytesRead:v11];
      v10 += v11;

      if (a4)
      {
        a2 += v11;
        a3 -= v11;
        if (a3)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    v10 = -1;
  }

  else
  {
LABEL_10:
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }
  }

  v13 = v7;
  v31 = v9;
  v33 = +[MFActivityMonitor currentMonitor];
  v14 = [v33 error];
  v32 = [(MFConnection *)v13 hostname];
  v15 = [(MFConnection *)v13 port];
  if (v14)
  {
    v16 = v15;
    v17 = [(NSError *)v14 domain];
    v18 = [@"MFMessageErrorDomain" isEqualToString:v17];

    if (v18)
    {
      v19 = [(NSError *)v14 localizedDescription];
LABEL_16:
      v20 = v19;
LABEL_31:
      v22 = v14;
LABEL_32:
      if (([v22 mf_isUserCancelledError] & 1) == 0)
      {
        if (!v20)
        {
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"The mail server “%@” is not responding. Verify that you have entered the correct account info in Mail settings.", v32];
        }

        v29 = [v22 setLocalizedDescription:v20];

        v22 = v29;
      }

      goto LABEL_36;
    }

    v23 = [(NSError *)v14 domain];
    v24 = [*MEMORY[0x277CCA5B8] isEqualToString:v23];

    if (v24)
    {
      if ([(NSError *)v14 code]== 60)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"The connection to the server “%@” on port %d timed out.", v32, v16];
        goto LABEL_16;
      }

LABEL_30:
      v20 = 0;
      goto LABEL_31;
    }

    v25 = [(NSError *)v14 domain];
    v26 = [*MEMORY[0x277CCA670] isEqualToString:v25];

    if (!v26)
    {
      goto LABEL_30;
    }

    v27 = [v31 serverCertificates];
    v22 = _setupSSLDomainError(v14, v32, v27);

    v20 = [v22 localizedDescription];
    if (!v20 || [&stru_288159858 isEqualToString:v20])
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"An SSL error occurred while trying to read data from the server “%@”. Verify that this server supports SSL and that your account settings are correct.", v32];

      v20 = v28;
    }
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1045 localizedDescription:0];
    if (v9)
    {
      v20 = 0;
    }

    else
    {
      v20 = @"(read) socket deleted";
    }

    v22 = v21;
  }

  if (v22)
  {
    goto LABEL_32;
  }

LABEL_36:
  [v33 setError:v22];

  if (v9)
  {
    [(MFConnection *)v13 abortSocket:v31];
  }

LABEL_38:

  return v10;
}

__CFString *NSStringFromMailboxUidType(int a1)
{
  if (a1 > 6)
  {
    v1 = @"SentMessagesSpecialMailboxUid";
    v11 = @"DraftsSpecialMailboxUid";
    v12 = @"OutboxSpecialMailboxUid";
    if (a1 != 106)
    {
      v12 = 0;
    }

    if (a1 != 105)
    {
      v11 = v12;
    }

    if (a1 != 104)
    {
      v1 = v11;
    }

    v13 = @"ArchiveSpecialMailboxUid";
    v14 = @"TrashSpecialMailboxUid";
    if (a1 != 103)
    {
      v14 = 0;
    }

    if (a1 != 102)
    {
      v13 = v14;
    }

    if (a1 <= 103)
    {
      v1 = v13;
    }

    v6 = @"INBOXSpecialMailboxUid";
    v15 = @"JunkSpecialMailboxUid";
    if (a1 != 101)
    {
      v15 = 0;
    }

    if (a1 != 100)
    {
      v6 = v15;
    }

    v16 = @"InboxUid";
    v17 = @"RootMailboxUid";
    if (a1 != 8)
    {
      v17 = 0;
    }

    if (a1 != 7)
    {
      v16 = v17;
    }

    if (a1 <= 99)
    {
      v6 = v16;
    }

    v10 = a1 <= 101;
  }

  else
  {
    v1 = @"SentMessagesUid";
    v2 = @"DraftsMailboxUid";
    v3 = @"OutboxUid";
    if (a1 != 6)
    {
      v3 = 0;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 != 4)
    {
      v1 = v2;
    }

    v4 = @"ArchiveMailboxUid";
    v5 = @"TrashMailboxUid";
    if (a1 != 3)
    {
      v5 = 0;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    if (a1 <= 3)
    {
      v1 = v4;
    }

    v6 = @"GenericMailboxUid";
    v7 = @"JunkMailboxUid";
    if (a1 != 1)
    {
      v7 = 0;
    }

    if (a1)
    {
      v6 = v7;
    }

    v8 = @"InvalidMailboxUidType";
    v9 = @"RootlessMailboxUid";
    if (a1 != -100)
    {
      v9 = 0;
    }

    if (a1 != -500)
    {
      v8 = v9;
    }

    if (a1 < 0)
    {
      v6 = v8;
    }

    v10 = a1 <= 1;
  }

  if (v10)
  {
    return v6;
  }

  else
  {
    return v1;
  }
}

id _MFChildWithPredicate(void *a1, unsigned int (*a2)(void *, uint64_t), uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a1;
  [v5 mf_lock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5[8];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (a2(v11, a3))
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  [v5 mf_unlock];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

BOOL mailboxHasName(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 mf_lock];
  v5 = [v4[5] compare:v3];

  [v4 mf_unlock];
  return v5 == 0;
}

uint64_t mailboxHasExtraAttribute(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 extraAttributes];
  v5 = [v4 containsObject:v3];

  return v5;
}

id _MFDescendantWithPredicate(void *a1, unsigned int (*a2)(void *, uint64_t), uint64_t a3)
{
  v5 = a1;
  [v5 mf_lock];
  v6 = [v5 depthFirstEnumerator];
  v7 = 0;
  do
  {
    v8 = v7;
    v7 = [v6 nextObject];
  }

  while (v7 && !a2(v7, a3));
  [v5 mf_unlock];

  return v7;
}

CFComparisonResult _MFCompareMailboxUidsWithResultCodes(void *a1, void *a2, void *a3, CFComparisonResult a4, CFComparisonResult a5, CFComparisonResult a6)
{
  v11 = a1;
  v12 = a2;
  v13 = v12;
  if (v11 == v12)
  {
    goto LABEL_26;
  }

  if (!v11)
  {
    goto LABEL_27;
  }

  if (!v12)
  {
    goto LABEL_8;
  }

  v14 = *(v11 + 30);
  v15 = *(v12 + 30);
  if (v14 && !v15)
  {
    goto LABEL_27;
  }

  if (!v14 && v15)
  {
    goto LABEL_8;
  }

  if (v14 < v15)
  {
    goto LABEL_27;
  }

  if (v14 > v15)
  {
LABEL_8:
    a6 = a4;
    goto LABEL_27;
  }

  if (!a3 || (v11[6] & 0x10) != 0 || (v12[6] & 0x10) != 0)
  {
    v20 = [v11 account];
    if (v20)
    {
      v18 = [v11 displayName];
    }

    else
    {
      v18 = v11[5];
    }

    v17 = [v13 account];
    if (v17)
    {
      v19 = [v13 displayName];
    }

    else
    {
      v19 = v13[5];
    }
  }

  else
  {
    v16 = v11[5];
    v17 = a3;
    v18 = [v17 _pathComponentForUidName:v16];
    v19 = [v17 _pathComponentForUidName:v13[5]];
  }

  if (v18 == v19)
  {
LABEL_26:
    a6 = a5;
    goto LABEL_27;
  }

  if (v18)
  {
    a6 = a4;
    if (v19)
    {
      a6 = CFStringCompare(v18, v19, 0x61uLL);
      if (a6 == a5)
      {
        a6 = CFStringCompare(v18, v19, 0x60uLL);
      }
    }
  }

LABEL_27:

  return a6;
}

void bindParentAndChild(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = [VFWeakReferenceHolder weakReferenceWithObject:v8];
  if (v4 != v3[7])
  {
    [v3 mf_lock];
    objc_storeStrong(v3 + 7, v4);
    [v3 mf_unlock];
  }

  if (v8)
  {
    [v8 mf_lock];
    v5 = v8[8];
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = v8[8];
      v8[8] = v6;

      v5 = v8[8];
    }

    [v5 addObject:v3];
    [v8 mf_unlock];
  }
}

id _stringByAppendingPathComponentsUsingSpecialDisplayNames(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (!v14)
  {
    v14 = [v12 topMailbox];
  }

  v18 = v12;
  v19 = v18;
  if (v14 == v18 || !v18)
  {
    v24 = v15;
    v25 = v19;
  }

  else
  {
    v36 = v17;
    v39 = v16;
    v20 = 0;
    v21 = v18;
    do
    {
      v22 = v21;
      ++v20;
      v21 = [v21 parent];
    }

    while (v14 != v21 && v21);
    v37 = v15;
    if (v15)
    {
      v23 = [v15 mutableCopyWithZone:0];
    }

    else
    {
      v23 = objc_alloc_init(MEMORY[0x277CCAB68]);
    }

    v24 = v23;
    Mutable = CFArrayCreateMutable(0, v20, MEMORY[0x277CBF128]);
    if (v13)
    {
      v27 = [v19 type];
      if (v39)
      {
        if (v27 != 7 && [v39 length] && (objc_msgSend(v19, "isShared") & 1) == 0)
        {
          if (v15 && [v15 length])
          {
            [v24 appendString:@"/"];
          }

          [v24 appendString:v39];
        }
      }
    }

    v28 = v19;

    v25 = v28;
    v38 = v28;
    if (v14 != v28)
    {
      v29 = v28;
      while (1)
      {
        v30 = [v13 persistentNameForMailbox:v29];
        if (!v30)
        {
          break;
        }

        if (v13)
        {
          goto LABEL_25;
        }

LABEL_26:
        if (v30)
        {
          v32 = [v30 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

          CFArrayAppendValue(Mutable, v32);
        }

        v25 = [v29 parent];

        v29 = v25;
        if (v25 == v14)
        {
          goto LABEL_35;
        }
      }

      if (a7)
      {
        [v29 displayNameUsingSpecialNames];
      }

      else
      {
        [v29 name];
      }
      v30 = ;
      if (!v13)
      {
        goto LABEL_26;
      }

LABEL_25:
      v31 = [v13 _pathComponentForUidName:v30];

      v30 = v31;
      goto LABEL_26;
    }

LABEL_35:
    Count = CFArrayGetCount(Mutable);
    v17 = v36;
    if (Count)
    {
      v34 = Count - 1;
      do
      {
        if ([v24 length])
        {
          [v24 appendString:@"/"];
        }

        [v24 appendString:{CFArrayGetValueAtIndex(Mutable, v34--)}];
      }

      while (v34 != -1);
    }

    CFRelease(Mutable);
    v16 = v39;
    if (v36)
    {
      v15 = v37;
      if ([v38 isStore])
      {
        [v24 appendString:@"."];
        [v24 appendString:v36];
      }
    }

    else
    {
      v15 = v37;
    }
  }

  return v24;
}

void sub_27214854C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_272148858(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_27214892C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_2721489B0(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

id getLogger_2()
{
  if (getLogger_onceToken_2 != -1)
  {
    getLogger_cold_1_2();
  }

  v1 = getLogger_sLog_2;

  return v1;
}

uint64_t __getLogger_block_invoke_2()
{
  v0 = os_log_create("com.apple.voicemail", "imap.mime");
  v1 = getLogger_sLog_2;
  getLogger_sLog_2 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_27214A444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_BKSApplicationStateGetDescription(int a1)
{
  v1 = @"Process Server";
  v2 = @"Foreground Running Obscured";
  if (a1 != 32)
  {
    v2 = 0;
  }

  if (a1 != 16)
  {
    v1 = v2;
  }

  v3 = @"Foreground Running";
  if (a1 != 8)
  {
    v3 = 0;
  }

  if (a1 == 4)
  {
    v3 = @"Background Running";
  }

  if (a1 <= 15)
  {
    v1 = v3;
  }

  v4 = @"Background Task Suspended";
  if (a1 != 2)
  {
    v4 = 0;
  }

  if (a1 == 1)
  {
    v4 = @"Terminated";
  }

  if (!a1)
  {
    v4 = @"Unknown";
  }

  if (a1 <= 3)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

void sub_27214B48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _powerChanged(uint64_t a1, uint64_t a2, uint64_t a3, intptr_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = vm_imap_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    HIDWORD(v8) = a3 + 536870288;
    LODWORD(v8) = a3 + 536870288;
    v7 = v8 >> 4;
    if (v7 < 0xC && ((0xA07u >> v7) & 1) != 0)
    {
      v9 = off_279E35C78[v7];
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a3];
    }

    *buf = 138412290;
    v12 = v9;
    _os_log_impl(&dword_2720B1000, v6, OS_LOG_TYPE_DEFAULT, "power changed: %@", buf, 0xCu);
  }

  if (a3 == -536870144)
  {
    [0 makeObjectsPerformSelector:sel_systemDidWake];
  }

  else
  {
    if (a3 == -536870272)
    {
      [0 makeObjectsPerformSelector:sel_systemWillSleep];
    }

    else if (a3 != -536870288)
    {
      goto LABEL_14;
    }

    IOAllowPowerChange(__RootDomainConnect, a4);
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t initPLShouldLogRegisteredEvent(uint64_t a1, uint64_t a2)
{
  if (LoadPowerLog_loadPredicate != -1)
  {
    initPLShouldLogRegisteredEvent_cold_1();
  }

  v4 = dlsym(LoadPowerLog_frameworkLibrary, "PLShouldLogRegisteredEvent");
  softLinkPLShouldLogRegisteredEvent[0] = v4;

  return (v4)(a1, a2);
}

void __LoadPowerLog_block_invoke()
{
  LoadPowerLog_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/PowerLog.framework/PowerLog", 2);
  if (!LoadPowerLog_frameworkLibrary)
  {
    NSLog(&cfstr_FailedToSoftLi.isa);
  }
}

uint64_t initPLLogRegisteredEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (LoadPowerLog_loadPredicate != -1)
  {
    initPLShouldLogRegisteredEvent_cold_1();
  }

  v8 = dlsym(LoadPowerLog_frameworkLibrary, "PLLogRegisteredEvent");
  softLinkPLLogRegisteredEvent = v8;

  return (v8)(a1, a2, a3, a4);
}

id __copy_helper_block_ea8_48c21_ZTSN8dispatch5queueE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

void __destroy_helper_block_ea8_48c21_ZTSN8dispatch5queueE(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;

  v3 = *(a1 + 48);
}

id __copy_helper_block_ea8_40c21_ZTSN8dispatch5queueE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_40c21_ZTSN8dispatch5queueE(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;

  v3 = *(a1 + 40);
}

void sub_27214F8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  _Block_object_dispose((v16 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_27214FE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27214FFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25)
{
  v29 = v27;

  _Unwind_Resume(a1);
}

void sub_2721501C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272150394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  v27 = v25;

  _Unwind_Resume(a1);
}

void _dispatch_sync(void *a1)
{
  v1 = _dispatch_sync_token;
  v2 = a1;
  if (v1 != -1)
  {
    _dispatch_sync_cold_1();
  }

  group = dispatch_group_create();
  dispatch_group_async(group, _dispatch_sync__queue, v2);

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t ___dispatch_sync_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.message.InvocationQueueState", 0);
  v1 = _dispatch_sync__queue;
  _dispatch_sync__queue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t mf_isIMAPAtom(unsigned int a1)
{
  if ((a1 & 0x80) != 0)
  {
    return 0;
  }

  else
  {
    return (mf_isIMAPAtom_atomicMask[a1 >> 5] >> a1) & 1;
  }
}

id getLogger_3()
{
  if (getLogger_onceToken_3 != -1)
  {
    getLogger_cold_1_3();
  }

  v1 = getLogger_sLog_3;

  return v1;
}

uint64_t __getLogger_block_invoke_3()
{
  v0 = os_log_create("com.apple.voicemail", "pars.ctx");
  v1 = getLogger_sLog_3;
  getLogger_sLog_3 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

CFTypeRef _nullOrCFTypeRetain(int a1, CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  else
  {
    return 0;
  }
}

void _nullOrCFTypeRelease(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

__CFString *_nullOrCFTypeCopyDescription(uint64_t a1)
{
  if (a1)
  {
    return (*(MEMORY[0x277CBF128] + 24))();
  }

  else
  {
    return @"NIL";
  }
}

uint64_t _nullOrCFTypeEqual(const void *a1, const void *a2)
{
  if (!a1)
  {
    return a2 != 0;
  }

  if (a2)
  {
    return CFEqual(a1, a2);
  }

  return 0;
}

void sub_272153C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  IMAPCommandParameters::~IMAPCommandParameters(&a9);

  _Unwind_Resume(a1);
}

id vm_default_log()
{
  if (vm_default_log::onceToken != -1)
  {
    vm_default_log_cold_1();
  }

  v1 = vm_default_log::sLog;

  return v1;
}

uint64_t __vm_default_log_block_invoke()
{
  v0 = os_log_create("com.apple.voicemail", "default");
  v1 = vm_default_log::sLog;
  vm_default_log::sLog = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id vm_imap_log()
{
  if (vm_imap_log::onceToken != -1)
  {
    vm_imap_log_cold_1();
  }

  v1 = vm_imap_log::sLog;

  return v1;
}

uint64_t __vm_imap_log_block_invoke()
{
  v0 = os_log_create("com.apple.voicemail", "IMAP");
  v1 = vm_imap_log::sLog;
  vm_imap_log::sLog = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id vm_net_log()
{
  if (vm_net_log::onceToken != -1)
  {
    vm_net_log_cold_1();
  }

  v1 = vm_net_log::sLog;

  return v1;
}

uint64_t __vm_net_log_block_invoke()
{
  v0 = os_log_create("com.apple.voicemail", "net");
  v1 = vm_net_log::sLog;
  vm_net_log::sLog = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __vm_vmd_log_block_invoke()
{
  v0 = os_log_create("com.apple.voicemail", "vmd");
  v1 = vm_vmd_log::sLog;
  vm_vmd_log::sLog = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id vm_vmtool_log()
{
  if (vm_vmtool_log::onceToken != -1)
  {
    vm_vmtool_log_cold_1();
  }

  v1 = vm_vmtool_log::sLog;

  return v1;
}

uint64_t __vm_vmtool_log_block_invoke()
{
  v0 = os_log_create("com.apple.voicemail", "vmtool");
  v1 = vm_vmtool_log::sLog;
  vm_vmtool_log::sLog = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

const char *asStringBool(int a1)
{
  if (a1)
  {
    return "true";
  }

  else
  {
    return "false";
  }
}

const char *asStringBool(_BYTE *a1)
{
  if (*a1)
  {
    v1 = "true";
  }

  else
  {
    v1 = "false";
  }

  if (a1[1])
  {
    return v1;
  }

  else
  {
    return "unknown";
  }
}

const char *calculateLogPrefix(int a1, int a2)
{
  if (a2 < 0)
  {
    return "x.X";
  }

  if (a1 == 1)
  {
    v2 = symbol1;
    return v2[a2 & 0xF];
  }

  if (a1 == 2)
  {
    v2 = symbol2;
    return v2[a2 & 0xF];
  }

  return "?";
}

const char *asStringBOOL(int a1)
{
  if (a1)
  {
    return "YES";
  }

  else
  {
    return "NO";
  }
}

__CFString *asNSStringBOOL(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

void bzero_server_message(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;

  v5 = *(a1 + 24);
  *(a1 + 24) = 0;

  *(a1 + 32) &= 0xFFC00000;
}

void bzero_client_response_info(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;

  v5 = *(a1 + 24);
  *(a1 + 24) = 0;

  v6 = *(a1 + 32);
  *(a1 + 32) = 0;

  v7 = *(a1 + 40);
  *(a1 + 40) = 0;

  v8 = *(a1 + 48);
  *(a1 + 48) = 0;

  v9 = *(a1 + 56);
  *(a1 + 56) = 0;

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
}

void sub_27215B1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(va1);
  __destructor_8_s0_s8_s16_s24(va);
  _Unwind_Resume(a1);
}

void _appendQuotedString(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if ([v5 length])
  {
    [v5 appendBytes:" length:{", 1}];
  }

  [v5 mf_appendCString:a2];
  v14 = 61;
  [v5 appendBytes:&v14 length:1];
  v15 = 34;
  [v5 appendBytes:&v15 length:1];
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 >= 1)
  {
    v9 = v7 + v8;
    v10 = v7;
    while (1)
    {
      v11 = *v10;
      if (v11 == 34 || v11 == 92)
      {
        break;
      }

      if (++v10 >= v9)
      {
        v12 = 0;
LABEL_10:
        if (v10 > v7)
        {
          [v5 appendBytes:v7 length:&v10[-v7]];
        }

        if (v12)
        {
          v16 = 92;
          [v5 appendBytes:&v16 length:1];
          v13 = *v10++;
          v17 = v13;
          [v5 appendBytes:&v17 length:1];
        }

        v7 = v10;
        if (v10 >= v9)
        {
          goto LABEL_15;
        }
      }
    }

    v12 = 1;
    goto LABEL_10;
  }

LABEL_15:
  v18 = 34;
  [v5 appendBytes:&v18 length:1];
}

void _appendValue(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if ([v5 length])
  {
    [v5 appendBytes:" length:{", 1}];
  }

  [v5 mf_appendCString:a2];
  v7 = 61;
  [v5 appendBytes:&v7 length:1];
  [v5 appendData:v6];
}

void __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(uint64_t a1)
{
  v2 = *(a1 + 56);
}

void __destructor_8_s0_s8_s16_s24(uint64_t a1)
{
  v2 = *(a1 + 24);
}

__CFString *copyToken(const UInt8 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 >= v2)
  {
    v3 = 0;
  }

  else
  {
LABEL_2:
    v3 = *v1;
  }

  v4 = v2 - v1;
  do
  {
    while (1)
    {
      do
      {
        v5 = v3;
        v3 = 0;
      }

      while (v5 > 0x20u);
      if (((1 << v5) & 0x100002600) == 0)
      {
        break;
      }

      v3 = 0;
      *a1 = ++v1;
      --v4;
      if (v1 < v2)
      {
        goto LABEL_2;
      }
    }
  }

  while (v5);
  v6 = v1;
  if (v1 < v2)
  {
    v6 = v1;
    while (1)
    {
      v7 = *v6;
      if ((v7 - 33) > 0x5D)
      {
        break;
      }

      v8 = (v7 - 34) > 0x3B || ((1 << (v7 - 34)) & 0xE0000007F0024C1) == 0;
      if (!v8 || v7 == 123 || v7 == 125)
      {
        break;
      }

      *a1 = ++v6;
      if (!--v4)
      {
        v6 = v2;
        break;
      }
    }
  }

  if (v1 >= v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = CFStringCreateWithBytesNoCopy(0, v1, v6 - v1, 0x600u, 0, *MEMORY[0x277CBED00]);
  }

  return v9;
}

CFDataRef quoted_string(const UInt8 **a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 < v3)
  {
LABEL_2:
    v4 = *v2;
    goto LABEL_4;
  }

  v4 = 0;
  do
  {
    while (1)
    {
      do
      {
LABEL_4:
        v5 = v4;
        v4 = 0;
      }

      while (v5 > 0x20u);
      if (((1 << v5) & 0x100002600) == 0)
      {
        break;
      }

      v4 = 0;
      *a1 = ++v2;
      if (v2 < v3)
      {
        goto LABEL_2;
      }
    }
  }

  while (v5);
  if (v2 >= v3 || *v2 != 34)
  {
    v8 = 0;
    goto LABEL_29;
  }

  v6 = v2 + 1;
  *a1 = v6;
  v7 = MEMORY[0x277CBED00];
  if (v6 >= v3)
  {
    v10 = v6;
    goto LABEL_33;
  }

  v8 = 0;
  v9 = *MEMORY[0x277CBED00];
  v10 = v6;
  while (1)
  {
    v11 = *v6;
    if (v11 == 92)
    {
      if (!v8)
      {
        v8 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
        v6 = *a1;
      }

      v12 = a1[1];
      if (v10 < v6)
      {
        [(__CFData *)v8 appendBytes:v10 length:v12 - v10];
        v6 = *a1;
        v12 = a1[1];
      }

      if ((v6 + 1) < v12)
      {
        *a1 = v6 + 1;
        [__CFData appendBytes:v8 length:"appendBytes:length:"];
        v6 = *a1;
      }

      v10 = v6;
      goto LABEL_24;
    }

    if (v11 == 34)
    {
      break;
    }

LABEL_24:
    *a1 = ++v6;
    if (v6 >= a1[1])
    {
      if (!v8)
      {
        goto LABEL_33;
      }

      if (v10 < v6)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    }
  }

  if (v8)
  {
    [(__CFData *)v8 appendBytes:v10 length:v6 - v10];
    v10 = *a1;
    v6 = *a1 + 1;
    *a1 = v6;
LABEL_36:
    [(__CFData *)v8 appendBytes:v10 length:v6 - v10];
    goto LABEL_29;
  }

  v8 = CFDataCreateWithBytesNoCopy(0, v10, v6 - v10, v9);
  v10 = *a1;
  v6 = *a1 + 1;
  *a1 = v6;
  if (!v8)
  {
LABEL_33:
    v8 = CFDataCreateWithBytesNoCopy(0, v10, v6 - v10, *v7);
  }

LABEL_29:

  return v8;
}

id copyQuotedTokenList(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*a1 < *(a1 + 8) && **a1 == 34)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
    v3 = *(a1 + 8);
    v4 = *a1 + 1;
    *a1 = v4;
    if (v4 < v3)
    {
      while (1)
      {
        v5 = copyToken(a1);
        if (!v5)
        {
          break;
        }

        [v2 addObject:v5];
        v6 = 0;
LABEL_15:

        if (*a1 >= *(a1 + 8) || v6 != 0)
        {
          goto LABEL_22;
        }
      }

      v7 = *a1;
      if (*a1 >= *(a1 + 8))
      {
        v8 = 0;
      }

      else
      {
        v8 = *v7;
        if (v8 == 44)
        {
          v6 = 0;
          goto LABEL_14;
        }

        if (v8 == 34)
        {
          v6 = 1;
LABEL_14:
          *a1 = v7 + 1;
          goto LABEL_15;
        }
      }

      v9 = vm_imap_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v14 = v8;
        _os_log_impl(&dword_2720B1000, v9, OS_LOG_TYPE_DEFAULT, "*** Parse failure(unexpected character '%c'). Ignoring", buf, 8u);
      }

      v6 = 0;
      v7 = *a1;
      goto LABEL_14;
    }
  }

  else
  {
    v2 = 0;
  }

LABEL_22:
  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

id _createResponseData(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v74 = *MEMORY[0x277D85DE8];
  v7 = a1;
  data = 58;
  memset(&c, 0, sizeof(c));
  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:32];
  v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:32];
  CC_MD5_Init(&c);
  if (a4)
  {
    CC_MD5_Update(&c, "AUTHENTICATE", 0xCu);
  }

  CC_MD5_Update(&c, &data, 1u);
  v10 = *(a3 + 40);
  if (v10)
  {
    v11 = v10;
    v12 = [v11 bytes];
    v13 = [v11 length];

    CC_MD5_Update(&c, v12, v13);
  }

  if ((v7[38] & 2) != 0)
  {
    CC_MD5_Update(&c, ":00000000000000000000000000000000", 0x21u);
  }

  v14 = v9;
  CC_MD5_Final(md, &c);
  v15 = v14;
  v16 = 0;
  do
  {
    v17 = v16 + 1;
    snprintf(__str, 3uLL, "%02x", md[v16]);
    [v15 appendBytes:__str length:2];
    v16 = v17;
  }

  while (v17 != 16);

  CC_MD5_Init(&c);
  v18 = *(a3 + 24);
  if (v18)
  {
    v19 = v18;
    v20 = [v19 bytes];
    v21 = [v19 length];

    CC_MD5_Update(&c, v20, v21);
  }

  CC_MD5_Update(&c, &data, 1u);
  v22 = *(a3 + 48);
  if (v22)
  {
    v23 = v22;
    v24 = [v23 bytes];
    v25 = [v23 length];

    CC_MD5_Update(&c, v24, v25);
  }

  CC_MD5_Update(&c, &data, 1u);
  v26 = *(a3 + 32);
  if (v26)
  {
    v27 = v26;
    v28 = [v27 bytes];
    v29 = [v27 length];

    CC_MD5_Update(&c, v28, v29);
  }

  CC_MD5_Final(__str, &c);
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, __str, 0x10u);
  CC_MD5_Update(&c, &data, 1u);
  v30 = *(a2 + 8);
  if (v30)
  {
    v31 = v30;
    v32 = [v31 bytes];
    v33 = [v31 length];

    CC_MD5_Update(&c, v32, v33);
  }

  CC_MD5_Update(&c, &data, 1u);
  if (*a3)
  {
    v34 = *a3;
    v35 = [v34 bytes];
    v36 = [v34 length];

    CC_MD5_Update(&c, v35, v36);
  }

  if ((v7[38] & 2) != 0)
  {
    CC_MD5_Final((a3 + 64), &c);
    v41 = v8;
    v42 = 0;
    do
    {
      v43 = v42 + 1;
      snprintf(md, 3uLL, "%02x", *(a3 + 64 + v42));
      [v41 appendBytes:md length:2];
      v42 = v43;
    }

    while (v43 != 16);
  }

  else
  {
    v37 = v8;
    CC_MD5_Final(md, &c);
    v38 = v37;
    v39 = 0;
    do
    {
      v40 = v39 + 1;
      snprintf(v71, 3uLL, "%02x", md[v39]);
      [v38 appendBytes:v71 length:2];
      v39 = v40;
    }

    while (v40 != 16);
  }

  CC_MD5_Init(&c);
  v44 = v8;
  v45 = v44;
  if (v44)
  {
    CC_MD5_Update(&c, [v44 bytes], objc_msgSend(v44, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  v46 = *(a2 + 8);
  if (v46)
  {
    v47 = v46;
    v48 = [v47 bytes];
    v49 = [v47 length];

    CC_MD5_Update(&c, v48, v49);
  }

  CC_MD5_Update(&c, &data, 1u);
  v50 = *(a3 + 8);
  if (v50)
  {
    v51 = v50;
    v52 = [v51 bytes];
    v53 = [v51 length];

    CC_MD5_Update(&c, v52, v53);
  }

  CC_MD5_Update(&c, &data, 1u);
  if (*a3)
  {
    v54 = *a3;
    v55 = [v54 bytes];
    v56 = [v54 length];

    CC_MD5_Update(&c, v55, v56);
  }

  CC_MD5_Update(&c, &data, 1u);
  v57 = *(a3 + 16);
  if (v57)
  {
    v58 = v57;
    v59 = [v58 bytes];
    v60 = [v58 length];

    CC_MD5_Update(&c, v59, v60);
  }

  CC_MD5_Update(&c, &data, 1u);
  v61 = v15;
  v62 = v61;
  if (v61)
  {
    CC_MD5_Update(&c, [v61 bytes], objc_msgSend(v61, "length"));
  }

  v63 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithCapacity:32];
  CC_MD5_Final(md, &c);
  v64 = v63;
  v65 = 0;
  do
  {
    v66 = v65 + 1;
    snprintf(v71, 3uLL, "%02x", md[v65]);
    [v64 appendBytes:v71 length:2];
    v65 = v66;
  }

  while (v66 != 16);

  v67 = *MEMORY[0x277D85DE8];

  return v64;
}

void sub_27215CEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MFIMAPCommandPipeline;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_27215D8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  a21 = &a26;
  std::vector<IMAPCommandParameters>::__destroy_vector::operator()[abi:ne200100](&a21);

  _Unwind_Resume(a1);
}

void sub_27215E0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v12 = v11;

  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void std::vector<IMAPCommandParameters>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<IMAPCommandParameters>>::destroy[abi:ne200100]<IMAPCommandParameters,0>(a1, i))
  {
    i -= 40;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<IMAPCommandParameters>>::destroy[abi:ne200100]<IMAPCommandParameters,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
}

uint64_t std::vector<IMAPCommandParameters>::__emplace_back_slow_path<IMAPCommandParameters const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<IMAPCommandParameters>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<IMAPCommandParameters>>(a1, v6);
  }

  v7 = 40 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v10;
  *&v19 = v7 + 40;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IMAPCommandParameters>,IMAPCommandParameters*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<IMAPCommandParameters>::~__split_buffer(&v17);
  return v16;
}

void sub_27215E3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<IMAPCommandParameters>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IMAPCommandParameters>,IMAPCommandParameters*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 8);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(a4 + 8) = v8;
      v9 = *(v7 + 24);
      v10 = *(v7 + 32);
      *(v7 + 32) = 0;
      *(a4 + 24) = v9;
      *(a4 + 32) = v10;
      v7 += 40;
      a4 += 40;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<IMAPCommandParameters>>::destroy[abi:ne200100]<IMAPCommandParameters,0>(a1, v5);
      v5 += 40;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<IMAPCommandParameters>,IMAPCommandParameters*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<IMAPCommandParameters>,IMAPCommandParameters*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<IMAPCommandParameters>,IMAPCommandParameters*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<IMAPCommandParameters>,IMAPCommandParameters*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 40;
      std::allocator_traits<std::allocator<IMAPCommandParameters>>::destroy[abi:ne200100]<IMAPCommandParameters,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<IMAPCommandParameters>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<IMAPCommandParameters>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<IMAPCommandParameters>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 40;
    std::allocator_traits<std::allocator<IMAPCommandParameters>>::destroy[abi:ne200100]<IMAPCommandParameters,0>(v5, v4 - 40);
  }
}

uint64_t isInternalDevice()
{
  v0 = [MEMORY[0x277D07148] currentDevice];
  v1 = [v0 isInternal];

  return v1;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void anonymous namespace::staticLogger_t::getOsLogHandle()
{
}

{
}

{
}

{
}

void fetchArgumentsForCriterion(_anonymous_namespace_::staticLogger_t *a1, NSObject **a2)
{
  v4 = v8 = *MEMORY[0x277D85DE8];
  *a2 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a1;
    _os_log_impl(&dword_2720B1000, v4, OS_LOG_TYPE_DEFAULT, "#E need to handle criterion for IMAP search: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void _selectMailboxIfNeeded_cold_1(uint64_t a1, id *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*a2 error];
  v3 = [v2 vf_publicDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_2720B1000, v4, v5, "*** Error while selecting %@: %{public}@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

void _stringByApplyingIDNATranslationWithRange_cold_2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_2720B1000, a2, OS_LOG_TYPE_ERROR, "failed to allocate buffer of size %d for IDNA conversion", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void ___stringByApplyingIDNATranslationWithRange_block_invoke_cold_1(UErrorCode *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = u_errorName(*a1);
  v5 = 136315138;
  v6 = v3;
  _os_log_error_impl(&dword_2720B1000, a2, OS_LOG_TYPE_ERROR, "failed to create UIDNA pointer, IDNA domain names will be broken: %s", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

void _MFFlagsBySettingValueForKey_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2720B1000, a2, OS_LOG_TYPE_DEBUG, "Unexpected flag key %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}