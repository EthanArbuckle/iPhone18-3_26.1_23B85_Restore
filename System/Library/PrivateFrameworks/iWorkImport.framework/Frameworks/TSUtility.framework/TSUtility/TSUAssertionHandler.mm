@interface TSUAssertionHandler
+ (id)p_performBlockIgnoringAssertions:(id)assertions onlyFatal:(BOOL)fatal;
+ (id)packedBacktraceString;
+ (id)packedBacktraceStringWithReturnAddresses:(id)addresses;
+ (id)performBlockIgnoringAssertions:(id)assertions;
+ (id)performBlockIgnoringFatalAssertions:(id)assertions;
+ (id)performBlockIgnoringQAFatalAssertions:(id)assertions;
+ (void)_logBacktraceWithCallStackSymbols:(id)symbols;
+ (void)logFullBacktrace;
+ (void)setDelegate:(id)delegate;
@end

@implementation TSUAssertionHandler

+ (id)performBlockIgnoringAssertions:(id)assertions
{
  v3 = [self p_performBlockIgnoringAssertions:assertions onlyFatal:0];

  return [v3 lastObject];
}

+ (id)performBlockIgnoringFatalAssertions:(id)assertions
{
  v3 = [self p_performBlockIgnoringAssertions:assertions onlyFatal:1];

  return [v3 lastObject];
}

+ (id)performBlockIgnoringQAFatalAssertions:(id)assertions
{
  v3 = [self p_performBlockIgnoringAssertions:assertions onlyFatal:{objc_msgSend(self, "isQAFatalAssertionsEnabled")}];

  return [v3 lastObject];
}

+ (id)p_performBlockIgnoringAssertions:(id)assertions onlyFatal:(BOOL)fatal
{
  array = [MEMORY[0x277CBEB18] array];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2810000000;
  v12[3] = &unk_27715A77D;
  v13 = 0;
  v7 = qword_280A638A0;
  v8 = byte_280A63898;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_27702A7E0;
  v10[3] = &unk_27A701960;
  fatalCopy = fatal;
  v10[4] = array;
  v10[5] = v12;
  qword_280A638A0 = v10;
  byte_280A63898 = 1;
  (*(assertions + 2))(assertions);
  byte_280A63898 = v8;
  qword_280A638A0 = v7;
  _Block_object_dispose(v12, 8);
  return array;
}

+ (void)logFullBacktrace
{
  v3 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  v4 = [v3 objectForKeyedSubscript:@"logBacktrace_lastStackAddress"];
  v5 = [objc_msgSend(MEMORY[0x277CCACC8] "callStackReturnAddresses")];
  if (v4 && [v4 isEqualToArray:v5])
  {
    [self _logBacktraceWithCallStackSymbols:&unk_28864B5A8];
  }

  else
  {
    [self _logBacktraceWithCallStackSymbols:{objc_msgSend(MEMORY[0x277CCACC8], "callStackSymbols")}];
    [v3 setObject:v5 forKeyedSubscript:@"logBacktrace_lastStackAddress"];
  }
}

+ (void)_logBacktraceWithCallStackSymbols:(id)symbols
{
  if (TSUAssertCat_init_token != -1)
  {
    sub_277112D44();
  }

  MEMORY[0x2821F9670](self, sel_simulateCrashWithMessage_);
}

+ (id)packedBacktraceString
{
  [MEMORY[0x277CCACC8] callStackReturnAddresses];

  return MEMORY[0x2821F9670](self, sel_packedBacktraceStringWithReturnAddresses_);
}

+ (id)packedBacktraceStringWithReturnAddresses:(id)addresses
{
  v74 = *MEMORY[0x277D85DE8];
  data = [MEMORY[0x277CBEB28] data];
  v5 = [MEMORY[0x277CBEB58] set];
  if (qword_280A638A8 != -1)
  {
    sub_277112D58();
  }

  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v7 = [addresses countByEnumeratingWithState:&v65 objects:v73 count:16];
  addressesCopy = addresses;
  if (v7)
  {
    v8 = v7;
    v9 = *v66;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v66 != v9)
        {
          objc_enumerationMutation(addresses);
        }

        pointerValue = [*(*(&v65 + 1) + 8 * i) pointerValue];
        memset(&v72, 0, sizeof(v72));
        if (dladdr(pointerValue, &v72))
        {
          v12 = [MEMORY[0x277CCAE60] valueWithPointer:v72.dli_fbase];
          if (([v5 containsObject:v12] & 1) == 0)
          {
            [v5 addObject:v12];
            os_unfair_lock_lock(&dword_280A638C0);
            v13 = [qword_280A638B8 objectForKeyedSubscript:v12];
            os_unfair_lock_unlock(&dword_280A638C0);
            if (v13)
            {
              v14 = v49;
              v15 = v13;
            }

            else
            {
              v14 = v6;
              v15 = v12;
            }

            [v14 addObject:v15];
            addresses = addressesCopy;
          }
        }
      }

      v8 = [addresses countByEnumeratingWithState:&v65 objects:v73 count:16];
    }

    while (v8);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v16 = [v6 countByEnumeratingWithState:&v61 objects:v71 count:{16, addressesCopy}];
  if (v16)
  {
    v17 = v16;
    v18 = *v62;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(v6);
        }

        v20 = *(*(&v61 + 1) + 8 * j);
        pointerValue2 = [v20 pointerValue];
        magic = pointerValue2->magic;
        v23 = 28;
        if (pointerValue2->magic > -17958195)
        {
          if (magic == -17958194)
          {
            goto LABEL_28;
          }

          v24 = -17958193;
        }

        else
        {
          if (magic == -822415874)
          {
            goto LABEL_28;
          }

          v24 = -805638658;
        }

        if (magic != v24)
        {
          continue;
        }

        v23 = 32;
LABEL_28:
        ncmds = pointerValue2->ncmds;
        if (ncmds)
        {
          v26 = (&pointerValue2->magic + v23);
          v27 = 1;
          while (1)
          {
            v28 = v26[1];
            if (*v26 == 27 && v28 == 24)
            {
              break;
            }

            v26 = (v26 + v28);
            if (v26)
            {
              v30 = v27 >= ncmds;
            }

            else
            {
              v30 = 1;
            }

            ++v27;
            if (v30)
            {
              goto LABEL_42;
            }
          }

          v72.dli_fname = 0;
          v31 = getsegmentdata(pointerValue2, "__TEXT", &v72);
          if (v31)
          {
            v32 = v31;
            v33 = [MEMORY[0x277CBEB38] dictionaryWithSharedKeySet:qword_280A638B0];
            [v33 setObject:objc_msgSend(objc_alloc(MEMORY[0x277CCAD78]) forKeyedSubscript:{"initWithUUIDBytes:", v26 + 2), @"uuid"}];
            [v33 setObject:objc_msgSend(MEMORY[0x277CCAE60] forKeyedSubscript:{"valueWithPointer:", v32), @"loadaddr"}];
            os_unfair_lock_lock(&dword_280A638C0);
            [qword_280A638B8 setObject:v33 forKeyedSubscript:v20];
            os_unfair_lock_unlock(&dword_280A638C0);
            [v49 addObject:v33];
          }
        }

LABEL_42:
        ;
      }

      v17 = [v6 countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v17);
  }

  v60 = [v49 count];
  [data appendBytes:&v60 length:8];
  v59 = [v48 count];
  [data appendBytes:&v59 length:8];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v34 = [v49 countByEnumeratingWithState:&v55 objects:v70 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v56;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v56 != v36)
        {
          objc_enumerationMutation(v49);
        }

        v38 = *(*(&v55 + 1) + 8 * k);
        v72.dli_fname = 0;
        v72.dli_fbase = 0;
        [objc_msgSend(v38 objectForKeyedSubscript:{@"uuid", "getUUIDBytes:", &v72}];
        v54 = [objc_msgSend(v38 objectForKeyedSubscript:{@"loadaddr", "pointerValue"}];
        [data appendBytes:&v72 length:16];
        [data appendBytes:&v54 length:8];
      }

      v35 = [v49 countByEnumeratingWithState:&v55 objects:v70 count:16];
    }

    while (v35);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v39 = [v48 countByEnumeratingWithState:&v50 objects:v69 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v51;
    do
    {
      for (m = 0; m != v40; ++m)
      {
        if (*v51 != v41)
        {
          objc_enumerationMutation(v48);
        }

        v72.dli_fname = [*(*(&v50 + 1) + 8 * m) pointerValue];
        [data appendBytes:&v72 length:8];
      }

      v40 = [v48 countByEnumeratingWithState:&v50 objects:v69 count:16];
    }

    while (v40);
  }

  v43 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v44 = [data tsu_compressWithAlgorithm:774 operation:0];
  LODWORD(v54) = 843347010;
  [v43 appendBytes:&v54 length:4];
  v72.dli_fname = [v44 length];
  [v43 appendBytes:&v72 length:8];
  [v43 appendData:v44];
  v45 = [v43 base64EncodedStringWithOptions:0];

  return v45;
}

+ (void)setDelegate:(id)delegate
{
  if (qword_280A638C8)
  {
    v4 = qword_280A638C8;
    qword_280A638C8 = 0;
  }

  if (delegate)
  {
    qword_280A638C8 = delegate;
  }
}

@end