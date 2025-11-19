id vm_vmd_log()
{
  if (vm_vmd_log::onceToken != -1)
  {
    vm_vmd_log_cold_1();
  }

  v1 = vm_vmd_log::sLog;

  return v1;
}

BOOL _IsWiFiEnabled(const __SCPreferences *a1)
{
  Value = SCPreferencesGetValue(a1, @"AllowEnable");
  if (Value && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(Value)))
  {
    v4 = CFBooleanGetValue(Value) != 0;
  }

  else
  {
    v4 = *MEMORY[0x277CBED28] == Value;
  }

  SCPreferencesSynchronize(a1);
  return v4;
}

void sub_2720B3F68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id anonymous namespace::staticLogger_t::getOsLogHandle(_anonymous_namespace_::staticLogger_t *this)
{
  {
  }

  return v2;
}

{
  {
  }

  return v2;
}

{
  {
  }

  return v2;
}

{
  {
  }

  return v2;
}

void _syncFlags(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, char a6, void *a7)
{
  v48 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = a5;
  v15 = a7;
  v38 = [v13 relativePath];
  v16 = [v13 account];
  v17 = [v16 flagChangesLock];
  [v17 lock];

  v18 = [v13 account];
  [v14 connectTime];
  v19 = [v18 flagChangesForMailboxPath:v38 UID:a2 connectTime:?];

  if (v19)
    v21 = {;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v13 mailboxUid];
      *buf = 136315906;
      v41 = [v22 mambaID];
      v42 = 2080;
      v43 = " ";
      v44 = 1024;
      v45 = a2;
      v46 = 2112;
      v47 = v19;
      _os_log_impl(&dword_2720B1000, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges applying pending changes for message %u: %@", buf, 0x26u);
    }

    a4 = IMAPMessageFlagsByApplyingDictionary(a4, v19);
  }

  v23 = 0;
  if ((a3 & 0x100080) != 0 && (a6 & 1) == 0)
  {
    v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{@"MessageIsServerSearchResult", @"NO", @"MessageIsThreadSearchResult", 0, 0}];
  }

  v24 = [v13 newDictionaryForLocalFlags:a3 serverFlags:a4 existingDictionary:v23];
  v25 = v24;
  if (v19)
    v26 = {;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v13 mailboxUid];
      v28 = [v27 mambaID];
      v29 = [v14 tag];
      *buf = 136315906;
      v41 = v28;
      v42 = 2080;
      v43 = " ";
      v44 = 1024;
      v45 = v29;
      v46 = 2112;
      v47 = v25;
      _os_log_impl(&dword_2720B1000, v26, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges remaining changes from server (connection %u): %@", buf, 0x26u);
    }
  }

  if (v25)
  {
    v30 = v15[2](v15);
    v31 = v30;
    if (v30)
    {
      v32 = [v30 messageStore];
      v39 = v31;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
      v34 = [v32 setFlagsLocallyFromDictionary:v25 forMessages:v33];
    }
  }

  v35 = [v13 account];
  v36 = [v35 flagChangesLock];
  [v36 unlock];

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t uidFromFetchResults(NSArray *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [(NSArray *)v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        if ([v5 type] == 8)
        {
          v6 = [v5 uid];
          goto LABEL_11;
        }
      }

      v2 = [(NSArray *)v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t flagsFromFetchResults(NSArray *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = a1;
  v2 = [(NSArray *)v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if ([v5 type] == 10)
        {
          v2 = [v5 messageFlags];
          goto LABEL_11;
        }
      }

      v2 = [(NSArray *)v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_2720B7220(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2720B7338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v9;

  a9.super_class = MFLibraryIMAPStore;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void compactMessagesToUID(MFLibraryIMAPStore *a1, uint64_t a2)
{
  v7 = a1;
  v3 = [(MFLibraryStore *)v7 URLString];
  v4 = [(MFLibraryStore *)v7 library];
  v5 = [v4 getDetailsForMessagesWithRemoteIDInRange:0 fromMailbox:{a2, v3}];

  if ([v5 count])
  {
    v6 = [(MFLibraryStore *)v7 library];
    [v6 compactMessages:v5];
  }
}

void tokenizeCriterionWithHandler(void *a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v35 = a1;
  v36 = a2;
  v3 = [v35 expression];
  v37 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v4 = [(__CFString *)v3 stringByTrimmingCharactersInSet:?];
  v5 = [v4 length];

  if (v5)
  {
    if ([v35 qualifier] == 8 || -[__CFString mf_isLegalEmailAddress](v3, "mf_isLegalEmailAddress"))
    {
      v36[2](v36, v3);
    }

    else
    {
      v3 = v3;
      v7 = v36;
      v40 = v3;
      v34 = [objc_alloc(MEMORY[0x277CCA948]) initWithTypes:32 error:0];
      if (v34)
      {
        v33 = [v34 matchesInString:v3 options:16 range:{0, -[__CFString length](v3, "length")}];
        v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        obj = v33;
        v8 = [obj countByEnumeratingWithState:&v45 objects:v50 count:{16, v33}];
        if (v8)
        {
          v9 = *v46;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v46 != v9)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v45 + 1) + 8 * i);
              v12 = [v11 range];
              v14 = [(__CFString *)v40 substringWithRange:v12, v13];
              v7[2](v7, v14);
              v15 = MEMORY[0x277CCAE60];
              v16 = [v11 range];
              v18 = [v15 valueWithRange:{v16, v17}];
              [v39 vf_insertObject:v18 usingComparator:&__block_literal_global_558 allowDuplicates:0];
            }

            v8 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
          }

          while (v8);
        }

        v3 = v40;
        if ([v39 count])
        {
          v3 = [(__CFString *)v40 mutableCopy];
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v19 = v39;
          v20 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v20)
          {
            v21 = *v42;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v42 != v21)
                {
                  objc_enumerationMutation(v19);
                }

                v23 = [*(*(&v41 + 1) + 8 * j) rangeValue];
                [(__CFString *)v3 deleteCharactersInRange:v23, v24];
              }

              v20 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v20);
          }
        }
      }

      v25 = [(__CFString *)v3 stringByTrimmingCharactersInSet:v37];
      v26 = [v25 length] == 0;

      if (!v26)
      {
        v27 = [MEMORY[0x277CBEAF8] currentLocale];
        v52.length = CFStringGetLength(v3);
        v52.location = 0;
        v28 = CFStringTokenizerCreate(*MEMORY[0x277CBECE8], v3, v52, 4uLL, v27);
        if (v28)
        {
          while (CFStringTokenizerAdvanceToNextToken(v28))
          {
            CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v28);
            if (CurrentTokenRange.length != 1)
            {
              v30 = [(__CFString *)v3 substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
              v31 = [v30 stringByTrimmingCharactersInSet:v37];
              v32 = [v31 length] == 0;

              if (!v32)
              {
                v7[2](v7, v30);
              }
            }
          }

          CFRelease(v28);
        }
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_2720BADBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSMutableArray *fetchArgumentsForCriterion(MFMessageCriterion *a1, int a2)
{
  v100 = *MEMORY[0x277D85DE8];
  v67 = a1;
  v3 = needUTF8ForCriterion(v67);
  v66 = [(MFMessageCriterion *)v67 expression];
  if ((v3 & a2) == 1)
  {
    [MEMORY[0x277CBEB18] arrayWithObjects:{@"CHARSET", @"UTF-8", 0}];
  }

  else
  {
    [MEMORY[0x277CBEB18] array];
  }
  v71 = ;
  v4 = [(MFMessageCriterion *)v67 criterionType];
  if (v4 <= 25)
  {
    if (v4 <= 10)
    {
      if (v4 != 1)
      {
        if (v4 == 9)
        {
          -[NSMutableArray addObject:](v71, "addObject:", @"(OR TO");
          addArgumentsForExpression(v66, v3, v71);
          [(NSMutableArray *)v71 addObject:@"CC"];
          addArgumentsForExpression(v66, v3, v71);
          [(NSMutableArray *)v71 addObject:@""]);
          goto LABEL_120;
        }

        goto LABEL_123;
      }

      v19 = [(MFMessageCriterion *)v67 criterionIdentifier];
      if ([v19 isEqual:*MEMORY[0x277D07030]])
      {
        v20 = @"SUBJECT";
      }

      else
      {
        v30 = [v19 isEqualToString:*MEMORY[0x277D06FE0]];
        if (!v30)
          v41 = {;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v19;
            _os_log_impl(&dword_2720B1000, v41, OS_LOG_TYPE_DEFAULT, "#E unsupported header criterion type %@", buf, 0xCu);
          }

          goto LABEL_79;
        }

        [(NSMutableArray *)v71 addObject:@"HEADER"];
        if ([(MFMessageCriterion *)v67 qualifier]!= 3)
        {
          __assert_rtn("fetchArgumentsForCriterion", "IMAP_LibraryIMAPStore.mm", 1583, "0 && Message ID header criterion must have a MessageRuleIsEqualTo qualifier");
        }

        v20 = @"Message-ID";
      }

      [(NSMutableArray *)v71 addObject:v20];
LABEL_79:
      addArgumentsForExpression(v66, v3, v71);

      goto LABEL_120;
    }

    if (v4 == 11)
    {
      if ([(MFMessageCriterion *)v67 qualifier]== 6)
      {
        v21 = @"SINCE";
      }

      else
      {
        v21 = @"BEFORE";
      }

      [(NSMutableArray *)v71 addObject:v21];
      v22 = MEMORY[0x277CBEAA8];
      v23 = [(MFMessageCriterion *)v67 expression];
      [v23 doubleValue];
      v24 = [v22 dateWithTimeIntervalSince1970:?];

      v25 = MEMORY[0x277CCACA8];
      v26 = MFIMAPDateSearchStringForDate(v24);
      v27 = [v25 stringWithFormat:@"%@", v26];
      [(NSMutableArray *)v71 addObject:v27];

LABEL_44:
      goto LABEL_120;
    }

    if (v4 != 24)
    {
      goto LABEL_123;
    }

    v6 = [MEMORY[0x277CBEB18] array];
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v7 = [(MFMessageCriterion *)v67 criteria];
    v8 = [v7 countByEnumeratingWithState:&v80 objects:v97 count:16];
    if (v8)
    {
      v9 = *v81;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v81 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = fetchArgumentsForCriterion(*(*(&v80 + 1) + 8 * i), 0);
          if (v11)
          {
            [v6 addObject:v11];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v80 objects:v97 count:16];
      }

      while (v8);
    }

    v12 = [v6 count];
    if (v12 == 1)
    {
      v7 = [v6 objectAtIndex:0];
      if ([v7 count] == 1)
      {

        goto LABEL_85;
      }

      if ((a2 & 1) == 0)
      {

        goto LABEL_94;
      }
    }

    else if (!a2)
    {
      goto LABEL_94;
    }

    v42 = [(MFMessageCriterion *)v67 allCriteriaMustBeSatisfied];
    v43 = v42;
    if (v12 == 1)
    {

      if (!v43)
      {
LABEL_94:
        if (![(MFMessageCriterion *)v67 allCriteriaMustBeSatisfied])
        {
          v59 = [v6 count];
          v60 = v59 - 1;
          if (v59 != 1)
          {
            v61 = 0;
            do
            {
              -[NSMutableArray addObject:](v71, "addObject:", @"(OR");
              v62 = [v6 objectAtIndex:v61];
              [(NSMutableArray *)v71 addObjectsFromArray:v62];

              ++v61;
            }

            while (v60 != v61);
          }

          v63 = [v6 lastObject];
          [(NSMutableArray *)v71 addObjectsFromArray:v63];

          for (; v60; --v60)
          {
            [(NSMutableArray *)v71 addObject:@""]);
          }

LABEL_119:

          goto LABEL_120;
        }

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v48 = v6;
        v49 = [v48 countByEnumeratingWithState:&v72 objects:v95 count:16];
        if (!v49)
        {
LABEL_113:

          goto LABEL_119;
        }

        LOBYTE(v50) = 0;
        v51 = *v73;
LABEL_97:
        v52 = 0;
        while (1)
        {
          if (*v73 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v72 + 1) + 8 * v52);
          if (v50)
          {
            [(NSMutableArray *)v71 addObjectsFromArray:*(*(&v72 + 1) + 8 * v52)];
          }

          else
          {
            v54 = [*(*(&v72 + 1) + 8 * v52) count];
            if (!v54)
            {
              v50 = 0;
              goto LABEL_107;
            }

            v55 = [v53 objectAtIndex:0];
            v56 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%@"), v55;
            [(NSMutableArray *)v71 addObject:v56];

            if (v54 != 1)
            {
              v57 = [v53 subarrayWithRange:{1, v54 - 1}];
              [(NSMutableArray *)v71 addObjectsFromArray:v57];
            }
          }

          v50 = 1;
LABEL_107:
          if (v49 == ++v52)
          {
            v58 = [v48 countByEnumeratingWithState:&v72 objects:v95 count:16];
            v49 = v58;
            if (!v58)
            {

              if (v50)
              {
                [(NSMutableArray *)v71 addObject:@""]);
              }

              goto LABEL_119;
            }

            goto LABEL_97;
          }
        }
      }
    }

    else if (!v42)
    {
      goto LABEL_94;
    }

LABEL_85:
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v44 = v6;
    v45 = [v44 countByEnumeratingWithState:&v76 objects:v96 count:16];
    if (v45)
    {
      v46 = *v77;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v77 != v46)
          {
            objc_enumerationMutation(v44);
          }

          [(NSMutableArray *)v71 addObjectsFromArray:*(*(&v76 + 1) + 8 * j)];
        }

        v45 = [v44 countByEnumeratingWithState:&v76 objects:v96 count:16];
      }

      while (v45);
    }

    goto LABEL_113;
  }

  if (v4 > 33)
  {
    switch(v4)
    {
      case '""':
        v5 = @"FROM";
        goto LABEL_47;
      case '&':
        v5 = @"TO";
        goto LABEL_47;
      case '\'':
        v5 = @"CC";
LABEL_47:
        [(NSMutableArray *)v71 addObject:v5];
        addArgumentsForExpression(v66, v3, v71);
        goto LABEL_120;
    }

LABEL_123:
    fetchArgumentsForCriterion(v67, buf);

    __assert_rtn("fetchArgumentsForCriterion", "IMAP_LibraryIMAPStore.mm", 1713, "0 && Need to handle criterion for IMAP headers");
  }

  if (v4 == 26)
  {
    v24 = [MEMORY[0x277CCAB68] string];
    if ([(MFMessageCriterion *)v67 qualifier]== 7)
    {
      [v24 appendString:@"NOT "];
    }

    if (fetchArgumentsForCriterion(MFMessageCriterion *,BOOL)::onceToken != -1)
    {
      fetchArgumentsForCriterion();
    }

    v28 = fetchArgumentsForCriterion(MFMessageCriterion *,BOOL)::flagMap;
    v29 = [(MFMessageCriterion *)v67 expression];
    v26 = [v28 objectForKey:v29];

    [v24 appendString:v26];
    [(NSMutableArray *)v71 addObject:v24];
    goto LABEL_44;
  }

  if (v4 != 32)
  {
    goto LABEL_123;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = ___ZL26fetchArgumentsForCriterionP18MFMessageCriterionb_block_invoke;
  v84[3] = &unk_279E33B90;
  v85 = v67;
  v14 = v13;
  v86 = v14;
  tokenizeCriterionWithHandler(v85, v84);
  v15 = v14;
  v16 = v71;
  v17 = [v15 count];
  if (v17)
  {
    if (v17 == 1)
    {
      v18 = [v15 lastObject];
      [(NSMutableArray *)v16 addObjectsFromArray:v18];
    }

    else
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      obj = v15;
      v31 = [obj countByEnumeratingWithState:&v91 objects:buf count:16];
      if (v31)
      {
        v69 = *v92;
        v32 = 1;
        do
        {
          v70 = v31;
          for (k = 0; k != v70; ++k)
          {
            if (*v92 != v69)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v91 + 1) + 8 * k);
            if (v32)
            {
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v35 = v34;
              v36 = [v35 countByEnumeratingWithState:&v87 objects:v98 count:16];
              v32 = v36 == 0;
              if (v36)
              {
                v37 = *v88;
                v38 = 1;
                do
                {
                  for (m = 0; m != v36; ++m)
                  {
                    if (*v88 != v37)
                    {
                      objc_enumerationMutation(v35);
                    }

                    if (v38)
                    {
                      v40 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%@"), *(*(&v87 + 1) + 8 * m);
                      [(NSMutableArray *)v16 addObject:v40];
                    }

                    else
                    {
                      [(NSMutableArray *)v16 addObject:*(*(&v87 + 1) + 8 * m)];
                    }

                    v38 = 0;
                  }

                  v36 = [v35 countByEnumeratingWithState:&v87 objects:v98 count:16];
                  v38 = 0;
                }

                while (v36);
              }
            }

            else
            {
              [(NSMutableArray *)v16 addObjectsFromArray:v34];
              v32 = 0;
            }
          }

          v31 = [obj countByEnumeratingWithState:&v91 objects:buf count:16];
        }

        while (v31);
      }

      [(NSMutableArray *)v16 addObject:@""]);
    }
  }

LABEL_120:
  v64 = *MEMORY[0x277D85DE8];

  return v71;
}

void sub_2720BBEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2720BC120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2720BC294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_2720BC550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2720BC754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2720BCCF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2720BD6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);

  _Block_object_dispose((v44 - 176), 8);
  _Block_object_dispose((v44 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_2720BDDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a33, 8);

  _Block_object_dispose((v40 - 192), 8);
  _Block_object_dispose((v40 - 160), 8);
  _Block_object_dispose((v40 - 128), 8);

  _Unwind_Resume(a1);
}

void _addIDForAppendedMessage(int a1, int a2, NSMutableArray *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a1 && v5)
  {
    v7 = "";
    if (a2)
    {
      v7 = "temp-";
    }

    v8 = snprintf(__str, 0x1FuLL, "%s%u", v7, a1);
    v9 = CFStringCreateWithBytes(0, __str, v8, 0x600u, 0);
    if (v9)
    {
      [(NSMutableArray *)v6 addObject:v9];
      CFRelease(v9);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

id _uidSearchForMessageIds(MFLibraryIMAPStore *a1, int a2, NSArray *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](v6, "count")}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___ZL23_uidSearchForMessageIdsP18MFLibraryIMAPStorejP7NSArray_block_invoke;
  v13[3] = &unk_279E33BB8;
  v16 = a2;
  v8 = v6;
  v14 = v8;
  v9 = v7;
  v15 = v9;
  [(MFLibraryIMAPStore *)v5 performOperationRequiringConnection:1 withOptions:5 operation:v13];
  v10 = v15;
  v11 = v9;

  return v9;
}

void sub_2720BF1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, ...)
{
  va_start(va, a7);
  IMAPAppendMessagesContext::~IMAPAppendMessagesContext(va);

  _Unwind_Resume(a1);
}

void sub_2720BFD60(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, void *a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _updateSingleFlagsChangeEntry(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v15 = a5;
  v11 = a6;
  v12 = a4 & a3;
  if (((a4 & a2) == 0) == (v12 != 0))
  {
    v13 = *a1;
    if (!*a1)
    {
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      *a1 = v13;
    }

    if (v12)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    [v13 setObject:v14 forKey:v15];
  }
}

BOOL _flagsToSetAndClearFromDictionary(void *a1, void *a2, unint64_t *a3, unint64_t *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v37 = a1;
  v39 = a2;
  v40 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = [v39 allKeys];
  obj = v6;
  v7 = 0;
  v8 = 0;
  v9 = [v6 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v9)
  {
    v10 = *v42;
    do
    {
      v11 = 0;
      do
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * v11);
        v13 = [v39 mf_BOOLForKey:v12];
        v14 = v40;
        if (!v13)
        {
          v14 = v5;
        }

        v15 = v14;
        if ([v12 isEqual:@"MessageIsRead"])
        {
          v16 = v13 == 0;
          if (v13)
          {
            v17 = v7;
          }

          else
          {
            v17 = v8;
          }

          v18 = v17 | 1;
LABEL_28:
          if (v16)
          {
            v8 = v18;
          }

          else
          {
            v7 = v18;
          }

          goto LABEL_31;
        }

        if ([v12 isEqual:@"MessageIsDeleted"])
        {
          v16 = v13 == 0;
          if (v13)
          {
            v19 = v7;
          }

          else
          {
            v19 = v8;
          }

          v18 = v19 | 2;
          goto LABEL_28;
        }

        if ([v12 isEqual:@"MessageWasRepliedTo"])
        {
          v16 = v13 == 0;
          if (v13)
          {
            v20 = v7;
          }

          else
          {
            v20 = v8;
          }

          v18 = v20 | 4;
          goto LABEL_28;
        }

        if ([v12 isEqual:@"MessageIsFlagged"])
        {
          v16 = v13 == 0;
          if (v13)
          {
            v21 = v7;
          }

          else
          {
            v21 = v8;
          }

          v18 = v21 | 0x10;
          goto LABEL_28;
        }

        if ([v12 isEqual:@"MessageWasForwarded"])
        {
          if ((v37[144] & 0x20) != 0)
          {
            [v15 addObject:@"Forwarded"];
          }

          if (v37[144] & 0x40) != 0 || (v37[144])
          {
            v22 = @"$Forwarded";
LABEL_51:
            [v15 addObject:v22];
          }
        }

        else if ([v12 isEqualToString:@"MessageIsJunk"])
        {
          if ((v37[144] & 2) != 0)
          {
            [v15 addObject:@"Junk"];
          }

          if (v37[144] & 4) != 0 || (v37[144])
          {
            v22 = @"$Junk";
            goto LABEL_51;
          }
        }

        else if ([v12 isEqualToString:@"MessageIsNotJunk"])
        {
          if ((v37[144] & 8) != 0)
          {
            [v15 addObject:@"NotJunk"];
          }

          if (v37[144] & 0x10) != 0 || (v37[144])
          {
            v22 = @"$NotJunk";
            goto LABEL_51;
          }
        }

        else if ((v37[144] & 1) != 0 && [v12 isEqual:@"MessageWasRedirected"])
        {
          v16 = v13 == 0;
          if (v13)
          {
            v23 = v7;
          }

          else
          {
            v23 = v8;
          }

          v18 = v23 | 0x200;
          goto LABEL_28;
        }

LABEL_31:

        ++v11;
      }

      while (v9 != v11);
      v6 = obj;
      v24 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      v9 = v24;
    }

    while (v24);
  }

  if ([v40 count])
  {
    v25 = MFCreateArrayForMessageFlags(v7, v37[144] & 1);
    [v40 addObjectsFromArray:v25];

    v26 = v40;
LABEL_63:
    v27 = v26;
    goto LABEL_64;
  }

  if (v7)
  {
    v26 = MFCreateArrayForMessageFlags(v7, v37[144] & 1);
    goto LABEL_63;
  }

  v27 = 0;
LABEL_64:
  if ([v5 count])
  {
    v28 = MFCreateArrayForMessageFlags(v8, v37[144] & 1);
    [v5 addObjectsFromArray:v28];

    v29 = v5;
  }

  else
  {
    if (!v8)
    {
      v30 = 0;
      goto LABEL_69;
    }

    v29 = MFCreateArrayForMessageFlags(v8, v37[144] & 1);
  }

  v30 = v29;
LABEL_69:
  if (a3 && v27)
  {
    v31 = v27;
    *a3 = v27;
  }

  if (a4 && v30)
  {
    v32 = v30;
    *a4 = v30;
  }

  v33 = *MEMORY[0x277D85DE8];
  return (v27 | v30) != 0;
}

void sub_2720C1780(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

id _flagNameForEncoding(int a1)
{
  if (a1 == -1 || (MFCharsetForEncoding(), (v1 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v2 = 0;
  }

  else
  {
    v2 = [@"CHARSET=" stringByAppendingString:v1];
  }

  return v2;
}

void sub_2720C1E84(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_2720C216C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, void *a19, void *a20)
{
  _Block_object_dispose((v25 - 120), 8);

  _Unwind_Resume(a1);
}

uint64_t _waitForDataFromDownload(MFLibraryIMAPStore *a1, MFIMAPDownload *a2, unsigned int a3, MFIMAPConnection *a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a4;
  v9 = +[MFActivityMonitor currentMonitor];
  v10 = [(MFMailMessageStore *)v6 mailboxUid];
  [v9 setMailbox:v10];

  v11 = [v9 expectedLength];
  [v9 percentDone];
  v12 = 0.0;
  if (v13 >= 0.0)
  {
    [v9 percentDone];
    v12 = v14;
  }

  [(MFConnection *)v8 enableThroughputMonitoring:1];
  v15 = 0;
  v22 = (v12 * v11);
  while (![(MFIMAPDownload *)v7 isComplete])
  {
    if ([v9 shouldCancel])
    {
      break;
    }

    if (![(MFIMAPConnection *)v8 isValid])
    {
      break;
    }

    v16 = [v9 error];

    if (v16)
    {
      break;
    }

    v17 = objc_autoreleasePoolPush();
    [(MFIMAPCommandPipeline *)v6->_fetchPipeline mf_lock];
    [(MFIMAPCommandPipeline *)v6->_fetchPipeline setChunkSize:[(MFIMAPConnection *)v8 readBufferSize]];
    v6->_currentFetchUid = a3;
    if (![(MFIMAPCommandPipeline *)v6->_fetchPipeline isFull])
    {
      [(MFIMAPDownloadCache *)v6->_downloadCache addCommandsForDownload:v7 toPipeline:v6->_fetchPipeline];
      downloadCache = v6->_downloadCache;
      v19 = [(MFIMAPCommandPipeline *)v6->_fetchPipeline failureResponsesFromSendingCommandsWithConnection:v8];
      [(MFIMAPDownloadCache *)downloadCache handleFetchResponses:v19];
    }

    v6->_currentFetchUid = -1;
    [(MFIMAPCommandPipeline *)v6->_fetchPipeline mf_unlock];
    [(MFIMAPDownloadCache *)v6->_downloadCache processResultsForUid:a3];
    if (v11)
    {
      if (v15)
      {
        goto LABEL_12;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [(MFIMAPDownload *)v7 allowsPartialDownloads])
      {
        if ([(MFIMAPDownload *)v7 partial])
        {
          v11 += [(MFIMAPDownload *)v7 expectedLength];
        }

        else
        {
          v11 = [(MFIMAPDownload *)v7 bytesFetched];
        }

        [v9 setExpectedLength:v11];
LABEL_12:
        v15 = 1;
      }

      else
      {
        v15 = 0;
      }

      [v9 setPercentDone:{((-[MFIMAPDownload bytesFetched](v7, "bytesFetched") + v22) / v11)}];
    }

    objc_autoreleasePoolPop(v17);
  }

  [(MFConnection *)v8 enableThroughputMonitoring:0];
  v20 = [(MFIMAPDownload *)v7 isComplete];
  if (v20)
  {
    [(MFIMAPDownloadCache *)v6->_downloadCache cleanUpDownloadsForUid:a3];
  }

  return v20;
}

void sub_2720C2918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void _compactMessageIfNoData(MFLibraryIMAPStore *a1, MFIMAPDownload *a2, MFMessage *a3)
{
  v11 = a1;
  v5 = a2;
  v6 = a3;
  if ([(MFIMAPDownload *)v5 isComplete])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = +[MFActivityMonitor currentMonitor];
      v8 = [v7 error];

      if (!v8)
      {
        v9 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v6, 0}];
        v10 = [(MFLibraryStore *)v11 library];
        [v10 compactMessages:v9];
      }
    }
  }
}

void sub_2720C2C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_2720C3120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_2720C3584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v25 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2720C3DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2720C4FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2720C556C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2720C6D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2720C6FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_2720C7170(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2720C7234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t ___ZN12_GLOBAL__N_114staticLogger_t14getOsLogHandleEv_block_invoke()
{

  return MEMORY[0x2821F96F8]();
}

uint64_t ___ZL39remainingExpressionAfterTokenizingLinksP8NSStringU13block_pointerFvS0_E_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 rangeValue];
  if (v6 <= [v5 rangeValue])
  {
    v8 = [v4 rangeValue];
    v7 = v8 < [v5 rangeValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t needUTF8ForCriterion(MFMessageCriterion *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([(MFMessageCriterion *)v1 criterionType]== 24)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [(MFMessageCriterion *)v1 criteria];
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = *v11;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v4)
          {
            objc_enumerationMutation(v2);
          }

          if (needUTF8ForCriterion(*(*(&v10 + 1) + 8 * i)))
          {
            v3 = 1;
            goto LABEL_13;
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v6 = [(MFMessageCriterion *)v1 expression];
    v7 = [v6 dataUsingEncoding:1];
    v3 = v7 == 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

void ___ZL26fetchArgumentsForCriterionP18MFMessageCriterionb_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) includeRemoteBodyContent];
  v7 = v3;
  v5 = [v7 dataUsingEncoding:1];

  v6 = [MEMORY[0x277CBEB18] array];
  -[NSMutableArray addObject:](v6, "addObject:", @"(OR FROM");
  addArgumentsForExpression(v7, v5 == 0, v6);
  -[NSMutableArray addObject:](v6, "addObject:", @"(OR SUBJECT");
  addArgumentsForExpression(v7, v5 == 0, v6);
  -[NSMutableArray addObject:](v6, "addObject:", @"(OR TO");
  addArgumentsForExpression(v7, v5 == 0, v6);
  if (v4)
  {
    -[NSMutableArray addObject:](v6, "addObject:", @"(OR CC");
    addArgumentsForExpression(v7, v5 == 0, v6);
    [(NSMutableArray *)v6 addObject:@"BODY"];
    addArgumentsForExpression(v7, v5 == 0, v6);
    [(NSMutableArray *)v6 addObject:@""]);
  }

  else
  {
    [(NSMutableArray *)v6 addObject:@"CC"];
    addArgumentsForExpression(v7, v5 == 0, v6);
  }

  [(NSMutableArray *)v6 addObject:@"])"));

  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void addArgumentsForExpression(NSString *a1, int a2, NSMutableArray *a3)
{
  v7 = a1;
  v5 = a3;
  if (a2)
  {
    [(NSString *)v7 dataUsingEncoding:4];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v7];
  }
  v6 = ;
  [(NSMutableArray *)v5 addObject:v6];
}

void ___ZL26fetchArgumentsForCriterionP18MFMessageCriterionb_block_invoke_602()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"MessageIsFlagged";
  v4[1] = @"MessageIsDeleted";
  v5[0] = @"FLAGGED";
  v5[1] = @"DELETED";
  v4[2] = @"MessageIsRead";
  v4[3] = @"MessageWasRepliedTo";
  v5[2] = @"SEEN";
  v5[3] = @"ANSWERED";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v1 = [v0 copy];
  v2 = fetchArgumentsForCriterion(MFMessageCriterion *,BOOL)::flagMap;
  fetchArgumentsForCriterion(MFMessageCriterion *,BOOL)::flagMap = v1;

  v3 = *MEMORY[0x277D85DE8];
}

void ___ZL23_uidSearchForMessageIdsP18MFLibraryIMAPStorejP7NSArray_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *&v4 | 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = 0xFFFFFFFF00000001;
  }

  v13 = v3;
  v6 = [v3 messageSetForRange:v5];
  [v13 noop];
  v7 = [*(a1 + 32) count];
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (v7 >= v8 + 50)
      {
        v10 = v8 + 50;
      }

      else
      {
        v10 = v7;
      }

      if (v7 > v8 + 50)
      {
        if (v9)
        {
          [v9 removeAllObjects];
        }

        else
        {
          v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:50];
        }
      }

      v11 = *(a1 + 32);
      v12 = [v13 searchUidSet:v6 forNewMessageIDs:v11];
      if (v12)
      {
        [*(a1 + 40) addObjectsFromArray:v12];
      }

      v8 += v10;
    }

    while (v8 < v7);
  }
}

uint64_t OUTLINED_FUNCTION_0(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  *(a2 + 12) = 2080;
  return result;
}

uint64_t _GetTextBreakLocale()
{
  v0 = _GetTextBreakLocale___TextBreakLocale;
  if (!_GetTextBreakLocale___TextBreakLocale)
  {
    v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2 = [v1 objectForKey:@"AppleTextBreakLocale"];
    v3 = [v2 objectAtIndex:0];

    if (v3)
    {
      v4 = v3;
      v5 = _GetTextBreakLocale___TextBreakLocale;
      _GetTextBreakLocale___TextBreakLocale = v4;
    }

    else
    {
      v5 = [MEMORY[0x277CBEAF8] currentLocale];
      v6 = [v5 localeIdentifier];
      v7 = _GetTextBreakLocale___TextBreakLocale;
      _GetTextBreakLocale___TextBreakLocale = v6;
    }

    v0 = _GetTextBreakLocale___TextBreakLocale;
  }

  return [v0 UTF8String];
}

void _appendParagraphToOutput(void *a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = v9;
  if (v10)
  {
    if (a3 > 0)
    {
      v13 = a5;
    }

    else
    {
      v13 = 0;
    }

    if (v13 == 1)
    {
      v14 = a3;
      do
      {
        [(__CFString *)v12 appendString:@"<BLOCKQUOTE type=cite>"];
        --v14;
      }

      while (v14);
    }

    if (a5)
    {
      [(__CFString *)v12 appendString:@"<SPAN>"];
      v15 = [v10 length];
      if (v15)
      {
        v16 = v15;
        v17 = malloc_type_malloc(2 * v15 + 2, 0x1000040BDFB0063uLL);
        if (v17)
        {
          v18 = v17;
          v27 = v13;
          [v10 getCharacters:v17];
          v19 = 0;
          v20 = 1;
          while (1)
          {
            v21 = v18[v19];
            chars = v21;
            if (v21 == 9)
            {
              v22 = @" &nbsp; &nbsp;";
            }

            else
            {
              v22 = 0;
            }

            if (v20 == 1 || v21 != 32)
            {
              v23 = v22;
            }

            else
            {
              v23 = @"&nbsp;";
              if (v18[v20 - 2] != 32)
              {
                if (!v22)
                {
                  goto LABEL_29;
                }

                goto LABEL_28;
              }
            }

            v24 = chars;
            if (v21 == 60)
            {
              v21 = chars;
              v23 = @"&lt;";
            }

            if (v21 == 62)
            {
              v25 = @"&gt;";
            }

            else
            {
              v24 = v21;
              v25 = v23;
            }

            if (v24 != 38 && !v25)
            {
LABEL_29:
              CFStringAppendCharacters(v12, &chars, 1);
              goto LABEL_30;
            }

LABEL_28:
            [(__CFString *)v12 appendString:?];
LABEL_30:
            v19 = v20;
            if (v16 <= v20++)
            {
              free(v18);
              v13 = v27;
              break;
            }
          }
        }
      }

      if (v11)
      {
        [(__CFString *)v12 appendString:@"</SPAN><BR>"];
      }

      if (v13)
      {
        do
        {
          [(__CFString *)v12 appendString:@"</BLOCKQUOTE>"];
          --a3;
        }

        while (a3);
      }
    }

    else
    {
      [(__CFString *)v12 appendString:v10];
      if (v11)
      {
        [(__CFString *)v12 appendString:v11];
      }
    }
  }
}

void ___weakDDURLifierClass_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  if (!dlopen([@"/System/Library/PrivateFrameworks/DataDetectorsCore.framework/DataDetectorsCore" fileSystemRepresentation], 1))
  {
    v0 = vm_imap_log();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = dlerror();
      v1 = "Failed to load DataDetectorsCore.framework (%s)";
      v2 = v0;
      v3 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  _weakDDURLifierClass_sDDURLifierClass = NSClassFromString(&cfstr_Ddurlifier.isa);
  if (!_weakDDURLifierClass_sDDURLifierClass)
  {
    v0 = vm_imap_log();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      v1 = "NSClassFromString(@DDURLifier) returned Nil";
      v2 = v0;
      v3 = 2;
LABEL_7:
      _os_log_impl(&dword_2720B1000, v2, OS_LOG_TYPE_DEFAULT, v1, &v5, v3);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v4 = *MEMORY[0x277D85DE8];
}

void sub_2720C9CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = vm_imap_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_impl(&dword_2720B1000, v10, OS_LOG_TYPE_DEFAULT, "Exception raised while processing requests: %@", &a9, 0xCu);
    }

    v11 = NSGetUncaughtExceptionHandler();
    (v11)(v9);

    objc_end_catch();
    JUMPOUT(0x2720C9CB0);
  }

  _Unwind_Resume(exception_object);
}

void sub_2720CA578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2720CACE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __destructor_8_s8_s16_s32(va);
  _Unwind_Resume(a1);
}

void __destructor_8_s8_s16_s32(uint64_t a1)
{
  v2 = *(a1 + 32);
}

BOOL VFIsNotNull_block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = MEMORY[0x277CBEB68];
  v3 = a2;
  v4 = [v2 null];
  v5 = v4 != v3;

  return v5;
}

id getLogger()
{
  if (getLogger_onceToken != -1)
  {
    getLogger_cold_1();
  }

  v1 = getLogger_sLog;

  return v1;
}

uint64_t __getLogger_block_invoke()
{
  getLogger_sLog = os_log_create("com.apple.voicemail", "imap.msg.store");

  return MEMORY[0x2821F96F8]();
}

BOOL _releaseTopStackEntry(void *a1)
{
  v1 = a1;
  v2 = _peekCommandStackEntry(v1);
  v3 = v2;
  if (v2)
  {
    if ([**v2 isEqualToString:@"nofill"])
    {
      *(v1 + 52) = v1[26] & 0xC0000000 | (*(v1 + 52) - 1) & 0x3FFFFFFF;
    }

    v4 = v1[28];
    Count = CFArrayGetCount(v4);
    CFArrayRemoveValueAtIndex(v4, Count - 1);
    free(v3);
  }

  return v3 != 0;
}

id _currentAttributeOfType(void *a1, int a2)
{
  v3 = a1;
  Count = CFArrayGetCount(v3[28]);
  if (Count)
  {
    v5 = Count - 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3[28], v5);
      if (((*(*ValueAtIndex + 8) >> 3) & 3) == a2)
      {
        v7 = ValueAtIndex[1];
      }

      else
      {
        v7 = 0;
      }

      v8 = v5-- != 0;
    }

    while (v8 && !v7);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

__CFString *_copyNextToken(void *a1, const __CFCharacterSet *a2)
{
  v3 = a1;
  v4 = v3;
  v5 = *(v3 + 24);
  if (v5 >= *(v3 + 25))
  {
    goto LABEL_13;
  }

  if (v5 < 0)
  {
    if (CFCharacterSetIsCharacterMember(a2, 0))
    {
      goto LABEL_40;
    }

    goto LABEL_13;
  }

  v6 = v3 + 8;
  v7 = *(v3 + 21);
  if (v7 <= v5)
  {
    v9 = 0;
  }

  else
  {
    v8 = *(v3 + 18);
    if (v8)
    {
      v9 = *(v8 + 2 * *(v3 + 20) + 2 * v5);
    }

    else
    {
      v30 = *(v3 + 19);
      if (v30)
      {
        v9 = *(v30 + *(v3 + 20) + v5);
      }

      else
      {
        if (*(v3 + 23) <= v5 || (v32 = *(v3 + 22), v32 > v5))
        {
          v33 = v5 - 4;
          if (v5 < 4)
          {
            v33 = 0;
          }

          if (v33 + 64 < v7)
          {
            v7 = v33 + 64;
          }

          *(v3 + 22) = v33;
          *(v3 + 23) = v7;
          v39.length = v7 - v33;
          v39.location = *(v3 + 20) + v33;
          CFStringGetCharacters(*(v3 + 17), v39, v3 + 4);
          v32 = *(v4 + 22);
        }

        v9 = *&v6[2 * (v5 - v32)];
      }
    }
  }

  if (!CFCharacterSetIsCharacterMember(a2, v9))
  {
LABEL_13:
    if (v5 >= *(v4 + 25))
    {
      v28 = 0;
      goto LABEL_44;
    }

    v13 = -v5;
    v14 = v5 + 64;
    v15 = v5;
    while (1)
    {
      if (v15 >= 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = v15;
      }

      if (v15 < 0 || (v17 = *(v4 + 21), v17 <= v15))
      {
        v20 = 0;
      }

      else
      {
        v18 = *(v4 + 18);
        if (v18)
        {
          v19 = v18 + 2 * *(v4 + 20);
LABEL_22:
          v20 = *(v19 + 2 * v15);
          goto LABEL_24;
        }

        v21 = *(v4 + 19);
        if (!v21)
        {
          if (*(v4 + 23) <= v15 || (v22 = *(v4 + 22), v22 > v15))
          {
            v23 = -v16;
            v24 = v16 + v13;
            v25 = v14 - v16;
            v26 = v15 + v23;
            v27 = v26 + 64;
            if (v26 + 64 >= v17)
            {
              v27 = *(v4 + 21);
            }

            *(v4 + 22) = v26;
            *(v4 + 23) = v27;
            if (v17 >= v25)
            {
              v17 = v25;
            }

            v38.location = v26 + *(v4 + 20);
            v38.length = v17 + v24;
            CFStringGetCharacters(*(v4 + 17), v38, v4 + 4);
            v22 = *(v4 + 22);
          }

          v19 = v4 - 2 * v22 + 8;
          goto LABEL_22;
        }

        v20 = *(v21 + *(v4 + 20) + v15);
      }

LABEL_24:
      if (!CFCharacterSetIsCharacterMember(a2, v20))
      {
        ++v15;
        --v13;
        ++v14;
        if (v15 < *(v4 + 25))
        {
          continue;
        }
      }

      if (v15 <= v5)
      {
        v28 = 0;
      }

      else
      {
        v41.location = v5;
        v41.length = v15 - v5;
        v28 = CFStringCreateWithSubstring(0, *(v4 + 17), v41);
      }

      v5 = v15;
      goto LABEL_44;
    }
  }

  v10 = *(v4 + 21);
  if (v10 > v5)
  {
    v11 = *(v4 + 18);
    if (v11)
    {
      v12 = *(v11 + 2 * *(v4 + 20) + 2 * v5);
    }

    else
    {
      v31 = *(v4 + 19);
      if (v31)
      {
        v12 = *(v31 + *(v4 + 20) + v5);
      }

      else
      {
        if (*(v4 + 23) <= v5 || (v34 = *(v4 + 22), v34 > v5))
        {
          v35 = v5 - 4;
          if (v5 < 4)
          {
            v35 = 0;
          }

          if (v35 + 64 < v10)
          {
            v10 = v35 + 64;
          }

          *(v4 + 22) = v35;
          *(v4 + 23) = v10;
          v40.length = v10 - v35;
          v40.location = *(v4 + 20) + v35;
          CFStringGetCharacters(*(v4 + 17), v40, v4 + 4);
          v34 = *(v4 + 22);
        }

        v12 = *&v6[2 * (v5 - v34)];
      }
    }

    goto LABEL_41;
  }

LABEL_40:
  v12 = 0;
LABEL_41:
  ++v5;
  chars = v12;
  v28 = CFStringCreateWithCharacters(0, &chars, 1);
LABEL_44:
  *(v4 + 24) = v5;

  return v28;
}

const void *_peekCommandStackEntry(void *a1)
{
  v1 = a1;
  Count = CFArrayGetCount(v1[28]);
  if (Count < 1)
  {
    ValueAtIndex = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1[28], Count - 1);
  }

  return ValueAtIndex;
}

void _setFlags(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v18 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    v16 = [objc_allocWithZone(MFIMAPOperation) initWithFlagsToSet:v12 flagsToClear:v13 forUids:v15 inMailbox:v11];
    [v16 setUsesRealUids:0];
    [v18 _queueDeferredOperation:v16];
  }

  if (v14)
  {
    v17 = [objc_allocWithZone(MFIMAPOperation) initWithFlagsToSet:v12 flagsToClear:v13 forUids:v14 inMailbox:v11];
    [v18 _queueDeferredOperation:v17];
  }
}

id _makeCopyOperation(void *a1, void *a2, void *a3, void *a4, int a5, __CFArray *a6, __CFArray *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = off_279E32A40;
  if (!(a6 | a7))
  {
    v17 = off_279E32A48;
  }

  v18 = objc_allocWithZone(*v17);
  [v13 mf_lock];
  ++v13[8];
  v19 = [v18 initWithUidsToCopy:v14 fromMailbox:v15 toMailbox:v16 firstNewUid:?];
  v20 = v19;
  if (v19)
  {
    [v19 setUsesRealUids:a5 ^ 1u];
    v13[8] = [v20 lastTemporaryUid];
    [v13 _queueDeferredOperation:v20];
  }

  [v13 mf_unlock];
  [v14 removeAllObjects];
  if (a6)
  {
    CFArrayRemoveAllValues(a6);
  }

  if (a7)
  {
    CFArrayRemoveAllValues(a7);
  }

  return v20;
}

uint64_t _writeDataToPath(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 8);
  v9 = a3;
  v10 = [v8 offlineCacheDirectoryPath];
  v11 = [v10 stringByAppendingPathComponent:v9];

  if ([v7 writeToFile:v11 options:a4 error:0])
  {
    v12 = 1;
  }

  else
  {
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [v13 mf_makeCompletePath:v10 mode:448];

    if (v14)
    {
      v12 = [v7 writeToFile:v11 options:a4 error:0];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

void _saveChanges(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  [v1 mf_lock];
  v2 = [v1[3] count];
  if (v2)
  {
    v3 = v2;
    if (v2 > *(v1 + 9))
    {
      v4 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = v1[3];
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          v9 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v15 + 1) + 8 * v9);
            [v4 appendBytes:&IMAPOperationCacheFileMagic length:{3, v15}];
            [v10 serializeIntoData:v4];
            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }

      if (_writeDataToPath(v1, v4, @"operations", 1))
      {
        *(v1 + 9) = v3;
      }
    }
  }

  else
  {
    v11 = [v1[1] offlineCacheDirectoryPath];
    v12 = [v11 stringByAppendingPathComponent:@"operations"];
    v13 = MFRemoveItemAtPath();
  }

  [v1 mf_unlock];

  v14 = *MEMORY[0x277D85DE8];
}

id _convertTemporaryUids(void *a1, const __CFDictionary *a2)
{
  v3 = a1;
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [v3 objectAtIndex:v7];
      v9 = [v8 intValue];

      if (v9)
      {
        Value = CFDictionaryGetValue(a2, v9);
        if (Value)
        {
          if (!v6)
          {
            v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v5];
          }

          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", Value];
          [v6 addObject:v11];
        }
      }

      ++v7;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t _selectMailboxIfNeeded(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [*(a2 + 8) selectedMailbox];
  v8 = [v7 isEqualToString:v6];

  if (v8)
  {
LABEL_7:
    v11 = 1;
    goto LABEL_11;
  }

  v5[10] = 0;
  if ([*(a2 + 8) selectMailbox:v6 withAccount:*(v5 + 1)])
  {
    v9 = v5[10];
    if (v9)
    {
      Mutable = *(a2 + 32);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], 0);
        *(a2 + 32) = Mutable;
        v9 = v5[10];
      }

      CFDictionarySetValue(Mutable, v6, v9);
      v5[10] = 0;
    }

    goto LABEL_7;
  }

  v12 = vm_imap_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    _selectMailboxIfNeeded_cold_1(v6, a2);
  }

  v11 = 0;
LABEL_11:

  return v11;
}

uint64_t _searchForNewUid(void *a1, uint64_t a2, void *a3, void *a4)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = 0;
  if (v7 && a4)
  {
    if (_selectMailboxIfNeeded(a1, a2, a4))
    {
      v9 = *(a2 + 8);
      v15[0] = @"RECENT";
      v15[1] = @"HEADER";
      v15[2] = @"MESSAGE-ID";
      v15[3] = v7;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
      v11 = [v9 searchUidSet:0 forTerms:v10 success:0];

      if (v11 && [v11 count])
      {
        v12 = [v11 lastObject];
        v8 = [v12 unsignedIntValue];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

id _getStoreForMailboxName(void *a1, CFDictionaryRef *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (!a2 || !*a2 || (v7 = CFDictionaryGetValue(*a2, v6)) == 0)
  {
    v8 = [v5[1] _mailboxUidForName:v6];
    if (v8)
    {
      v9 = [v5[1] storeForMailboxUid:v8];
      v7 = v9;
      if (a2 && v9)
      {
        Mutable = *a2;
        if (!*a2)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
          *a2 = Mutable;
        }

        CFDictionarySetValue(Mutable, v6, v7);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

void sub_2720D6E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __destructor_8_s0_s8_s56(va);
  _Unwind_Resume(a1);
}

void __destructor_8_s0_s8_s56(uint64_t a1)
{
  v2 = *(a1 + 56);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id VFPromiseAttachmentDataHandler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __VFPromiseAttachmentDataHandler_block_invoke;
  v9[3] = &unk_279E34320;
  v10 = v4;
  v11 = v3;
  v5 = v3;
  v6 = v4;
  v7 = [v9 copy];

  return v7;
}

__CFData *_stripPrivateFileMetadata(void *a1)
{
  keys[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = CGImageSourceCreateWithData(v1, 0);
  v3 = v1;
  if (v2)
  {
    v4 = v2;
    v5 = CGImageSourceCopyMetadataAtIndex(v2, 0, 0);
    v3 = v1;
    if (v5)
    {
      v6 = v5;
      MutableCopy = CGImageMetadataCreateMutableCopy(v5);
      v3 = v1;
      if (MutableCopy)
      {
        v8 = MutableCopy;
        v20 = 0;
        v21 = &v20;
        v22 = 0x2020000000;
        v23 = 0;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = ___stripPrivateFileMetadata_block_invoke;
        v16[3] = &unk_279E34348;
        v18 = &v20;
        v19 = MutableCopy;
        v17 = &unk_288175728;
        CGImageMetadataEnumerateTagsUsingBlock(v6, 0, 0, v16);
        v3 = v1;
        if (*(v21 + 24) == 1)
        {
          v9 = [MEMORY[0x277CBEB28] data];
          Type = CGImageSourceGetType(v4);
          Count = CGImageSourceGetCount(v4);
          v12 = CGImageDestinationCreateWithData(v9, Type, Count, 0);
          v3 = v1;
          if (v12)
          {
            keys[0] = *MEMORY[0x277CD2D58];
            values = v8;
            v13 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, &values, 1, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
            v3 = v1;
            if (v13)
            {
              v3 = v1;
              if (CGImageDestinationCopyImageSource(v12, v4, v13, 0))
              {
                v3 = v9;
              }

              CFRelease(v13);
            }

            CFRelease(v12);
          }
        }

        CFRelease(v8);

        _Block_object_dispose(&v20, 8);
      }

      CFRelease(v6);
    }

    CFRelease(v4);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_2720DCD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __VFPromiseAttachmentDataHandler_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) data];
    [*(a1 + 40) finishWithResult:v4];
  }

  else
  {
    v3 = *(a1 + 40);

    [v3 finishWithError:?];
  }
}

uint64_t ___stripPrivateFileMetadata_block_invoke(uint64_t a1, const __CFString *a2, CGImageMetadataTagRef tag)
{
  v6 = CGImageMetadataTagCopyPrefix(tag);
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
    if (v8)
    {
      v9 = CGImageMetadataTagCopyName(tag);
      if (v9)
      {
        v10 = v9;
        if ([v8 containsObject:v9])
        {
          CGImageMetadataRemoveTagWithPath(*(a1 + 48), 0, a2);
          *(*(*(a1 + 40) + 8) + 24) = 1;
        }

        CFRelease(v10);
      }
    }

    CFRelease(v7);
  }

  return 1;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

__CFString *MFCreateStringByCondensingWhitespace(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = MFGetMappedAllocator();
    Mutable = CFStringCreateMutable(v2, 0);
    v4 = [(__CFString *)v1 length];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    *buffer = 0u;
    v27 = 0u;
    v34 = v1;
    v37 = 0;
    v38 = v4;
    CharactersPtr = CFStringGetCharactersPtr(v1);
    CStringPtr = 0;
    v35 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
    }

    v36 = CStringPtr;
    v39 = 0;
    v40 = 0;
    if (v4)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 64;
      while (1)
      {
        if (v9 >= 4)
        {
          v11 = 4;
        }

        else
        {
          v11 = v9;
        }

        if (v9 < 0 || (v12 = v38, v38 <= v9))
        {
          chars = 0;
          goto LABEL_15;
        }

        if (v35)
        {
          break;
        }

        if (!v36)
        {
          if (v40 <= v9 || (v18 = v39, v39 > v9))
          {
            v19 = -v11;
            v20 = v11 + v7;
            v21 = v10 - v11;
            v22 = v9 + v19;
            v23 = v22 + 64;
            if (v22 + 64 >= v38)
            {
              v23 = v38;
            }

            v39 = v22;
            v40 = v23;
            if (v38 >= v21)
            {
              v12 = v21;
            }

            v42.location = v22 + v37;
            v42.length = v12 + v20;
            CFStringGetCharacters(v34, v42, buffer);
            v18 = v39;
          }

          v13 = &buffer[-v18];
          goto LABEL_13;
        }

        v14 = v36[v37 + v9];
LABEL_18:
        chars = v14;
        v15 = v14 > 0x20u;
        v16 = (1 << v14) & 0x100002600;
        if (!v15 && v16 != 0)
        {
          if (!((v9 == 0) | v8 & 1))
          {
            CFStringAppend(Mutable, @" ");
          }

          v8 = 1;
          goto LABEL_25;
        }

LABEL_15:
        CFStringAppendCharacters(Mutable, &chars, 1);
        v8 = 0;
LABEL_25:
        ++v9;
        --v7;
        ++v10;
        if (v4 == v9)
        {
          goto LABEL_36;
        }
      }

      v13 = &v35[v37];
LABEL_13:
      v14 = v13[v9];
      goto LABEL_18;
    }
  }

  else
  {
    Mutable = 0;
  }

LABEL_36:

  return Mutable;
}

BOOL NSBOOLFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:@"YES"])
  {
    v2 = 1;
  }

  else
  {
    v3 = [v1 length];
    v2 = 1;
    if ([v1 compare:@"YES" options:1 range:{0, v3}])
    {
      v2 = 1;
      if ([v1 compare:@"Y" options:1 range:{0, v3}])
      {
        v2 = [v1 integerValue] != 0;
      }
    }
  }

  return v2;
}

uint64_t MessageInfoComparator(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3[8];
  v6 = v4[8];
  if (v5 < v6)
  {
    goto LABEL_2;
  }

  if (v5 > v6)
  {
    goto LABEL_4;
  }

  v9 = v3[7];
  v10 = v4[7];
  if (v9 < v10)
  {
LABEL_2:
    v7 = 1;
    goto LABEL_5;
  }

  if (v9 > v10)
  {
LABEL_4:
    v7 = -1;
    goto LABEL_5;
  }

  v11 = v3[5];
  v12 = v4[5];
  v13 = v11 >= v12;
  if (v11 <= v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  if (v13)
  {
    v7 = v14;
  }

  else
  {
    v7 = 1;
  }

LABEL_5:

  return v7;
}

uint64_t MessageInfoSentDateComparator(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a2 + 12);
  v4 = *(a1 + 20);
  v5 = *(a2 + 20);
  v6 = v4 >= v5;
  if (v4 <= v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (!v6)
  {
    v7 = 1;
  }

  v8 = v2 >= v3;
  if (v2 <= v3)
  {
    v9 = v7;
  }

  else
  {
    v9 = -1;
  }

  if (v8)
  {
    return v9;
  }

  else
  {
    return 1;
  }
}

uint64_t MFMessageInfoSentDateComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 dateSentInterval];
  v7 = [v5 dateSentInterval];
  if (v6 < v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = v6 > v7;
  }

  if (!v8)
  {
    v9 = [v4 uid];
    v10 = [v5 uid];
    if (v9 < v10)
    {
      v8 = -1;
    }

    else
    {
      v8 = v9 > v10;
    }
  }

  return v8;
}

id MFMailDirectory()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = MFMailDirectory___MailDir;
  if (!MFMailDirectory___MailDir)
  {
    v1 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library"];
    v2 = [v1 stringByAppendingPathComponent:@"Mail"];
    v3 = MFMailDirectory___MailDir;
    MFMailDirectory___MailDir = v2;

    v4 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v4 fileExistsAtPath:MFMailDirectory___MailDir] & 1) == 0 && objc_msgSend(v4, "mf_makeCompletePath:mode:", MFMailDirectory___MailDir, 448))
    {
      v5 = open([MFMailDirectory___MailDir fileSystemRepresentation], 0);
      if (v5 < 0)
      {
        v8 = vm_imap_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v12 = MFMailDirectory___MailDir;
          _os_log_impl(&dword_2720B1000, v8, OS_LOG_TYPE_DEFAULT, "Could not open fd for %@", buf, 0xCu);
        }
      }

      else
      {
        v6 = v5;
        if (fcntl(v5, 64, 4))
        {
          v7 = vm_imap_log();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v12 = MFMailDirectory___MailDir;
            _os_log_impl(&dword_2720B1000, v7, OS_LOG_TYPE_DEFAULT, "Could not set protection class on %@", buf, 0xCu);
          }
        }

        close(v6);
      }
    }

    v0 = MFMailDirectory___MailDir;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v0;
}

id MFMailDirectoryURL()
{
  if (MFMailDirectoryURL_onceToken != -1)
  {
    MFMailDirectoryURL_cold_1();
  }

  v1 = MFMailDirectoryURL___MailDirURL;

  return v1;
}

void __MFMailDirectoryURL_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEBC0]);
  v3 = MFMailDirectory();
  v1 = [v0 initFileURLWithPath:v3];
  v2 = MFMailDirectoryURL___MailDirURL;
  MFMailDirectoryURL___MailDirURL = v1;
}

void MFSetUserAgent(void *a1)
{
  v2 = a1;
  if (_userAgent != v2)
  {
    v3 = v2;
    objc_storeStrong(&_userAgent, a1);
    v2 = v3;
  }
}

uint64_t MFReadLoggingDefaults()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v0 synchronize];

  return +[MFConnection readLoggingDefaults];
}

void _appendPartHeadersToConsumer(void *a1, void *a2, const __CFDictionary *a3, void *a4)
{
  v18 = a1;
  v7 = a2;
  v8 = a4;
  v9 = [objc_allocWithZone(MEMORY[0x277D24F80]) init];
  v10 = CFDictionaryGetValue(a3, v7);
  v11 = [v7 type];
  if (([@"multipart" isEqualToString:v11] & 1) != 0 || objc_msgSend(v10, "length"))
  {
    goto LABEL_3;
  }

  [v7 range];
  v14 = v13;

  if (v14)
  {
    [v7 range];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = MEMORY[0x277CCACA8];
      [v7 range];
      v11 = [v16 stringWithFormat:@"%lu", v17];
      [v9 setHeader:v11 forKey:@"x-apple-content-length"];
LABEL_3:

      goto LABEL_4;
    }

    [v9 setHeader:@"unknown" forKey:@"x-apple-content-length"];
  }

LABEL_4:
  _appendHeadersToMessageHeaders(v18, v7, v9);
  v12 = [v9 encodedHeaders];
  if ([v12 length])
  {
    MFDataConsumerConsumeCompleteData();
  }
}

void _appendPartDataToConsumer(void *a1, void *a2, void *a3, const __CFDictionary *a4, uint64_t a5)
{
  v37 = a1;
  v9 = a2;
  v38 = a3;
  v10 = CFDictionaryGetValue(a4, v9);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;

    v10 = CFDictionaryGetValue(a4, v11);

    v9 = v11;
  }

  if (v10 && [v10 length])
  {
    v12 = [v9 contentTransferEncoding];
    v13 = [v12 isEqualToString:@"base64"];

    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x277D24ED8]) initWithConsumer:v38];
      [v14 setStandardLineBreak];
      [v14 setAllowSlash:1];
      [v14 setPadChar:61];
      MFDataConsumerConsumeCompleteData();
      [v14 done];
    }

    else
    {
      MFDataConsumerConsumeCompleteData();
    }
  }

  v15 = [v9 type];
  v16 = [@"multipart" isEqualToString:v15];

  v17 = [v9 firstChildPart];
  v18 = v17;
  if ((v16 & 1) != 0 || v17)
  {
    if (!v16 || ([v9 bodyParameterForKey:@"boundary"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "vf_lossyDefaultCStringBytes"), v19, !v20))
    {
      if (!v18)
      {
        goto LABEL_41;
      }

      v32 = v10;
      v34 = v9;
      v35 = 0;
      v36 = 0;
      v21 = 1;
      goto LABEL_16;
    }

    v36 = strlen(v20);
    if (v18)
    {
      v34 = v9;
      v35 = v20;
      v32 = v10;
      v21 = 0;
LABEL_16:
      v33 = *MEMORY[0x277D24E78];
      while (1)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = CFDictionaryGetValue(a4, v18);
        if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v24 = v18;

          v23 = v24;
        }

        if ((a5 & 1) == 0)
        {
          v27 = a3;
          if (v16 && ([v34 subtype], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(@"signed", "isEqualToString:", v27)))
          {
            a3 = v27;
          }

          else
          {
            v28 = [v23 type];
            a3 = v27;
            if (([v28 isEqual:@"multipart"] & 1) != 0 || objc_msgSend(CFDictionaryGetValue(a4, v23), "length"))
            {
              v29 = 1;
            }

            else
            {
              v30 = [v23 bodyParameterForKey:v33];
              v29 = v30 != 0;
            }

            if (v16)
            {

              if (!v29)
              {
                goto LABEL_24;
              }
            }

            else if (!v29)
            {
              goto LABEL_24;
            }
          }
        }

        if ((v21 & 1) == 0)
        {
          v25 = objc_alloc_init(MEMORY[0x277D24F70]);
          [v25 mf_appendCString:"\n--"];
          [v25 appendBytes:v35 length:v36];
          [v25 appendBytes:"\n" length:1];
          MFDataConsumerConsumeCompleteData();
          _appendPartHeadersToConsumer(v37, v23, a4, v38);
        }

        _appendPartDataToConsumer(v37, v23, v38, a4, a5);
LABEL_24:
        if (v21)
        {

          objc_autoreleasePoolPop(v22);
          v9 = v34;
          v10 = v32;
          goto LABEL_41;
        }

        v26 = [v18 nextSiblingPart];

        objc_autoreleasePoolPop(v22);
        v18 = v26;
        if (!v26)
        {
          v9 = v34;
          v20 = v35;
          v10 = v32;
          break;
        }
      }
    }

    v31 = objc_alloc_init(MEMORY[0x277D24F70]);
    [v31 mf_appendCString:"\n--"];
    [v31 appendBytes:v20 length:v36];
    [v31 mf_appendCString:"--\n"];
    MFDataConsumerConsumeCompleteData();
  }

LABEL_41:
}

id _createPartAndDataForString(void *a1, void *a2, void *a3, void *a4, __CFDictionary *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (v10)
  {
    v14 = [v12 isEqualToString:@"html"];
    if (v14)
    {
      v15 = _stringByReplacingNonBreakingSpacesWithString(v10, @"&nbsp");;

      v10 = v15;
    }

    if (v11)
    {
      [v11 cfStringEncoding];
      v16 = MFCreateDataWithString();
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v19 = 1;
    }

    else
    {
      v19 = v14;
    }

    v20 = v11;
    if ((v19 & 1) == 0)
    {
      v20 = [MEMORY[0x277D24F60] charsetForEncoding:1536];

      [v20 cfStringEncoding];
      v16 = MFCreateDataWithString();
    }

    if (v16)
    {
      v17 = v20;
LABEL_20:
      v18 = objc_alloc_init(MEMORY[0x277D24F68]);
      [v18 setType:@"text"];
      [v18 setSubtype:v13];
      v22 = [v20 charsetName];
      [v18 setBodyParameter:v22 forKey:@"charset"];

      CFDictionarySetValue(a5, v18, v16);
      goto LABEL_21;
    }

    if ((v14 & 1) == 0)
    {
      v21 = _stringByReplacingNonBreakingSpacesWithString(v10, @" ");

      v10 = v21;
    }

    v17 = [v10 mf_bestMimeCharsetForMessageDeliveryUsingSubtype:v13];

    [v17 cfStringEncoding];
    v16 = MFCreateDataWithString();
    if (v16)
    {
      v20 = v17;
      goto LABEL_20;
    }
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v18 = 0;
LABEL_21:
  v23 = v18;

  return v18;
}

id _createOutgoingMessageFromTopLevelMimePart(void *a1, void *a2, void *a3, const __CFDictionary *a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277D24F80]);
  }

  v11 = v10;
  v12 = _makeOutgoingMessageBody(v6);
  v13 = [v12 message];
  v14 = +[MFActivityMonitor currentMonitor];
  [v13 setMessageFlags:1];
  [v13 setMutableHeaders:v11];
  v15 = [v9 copyAddressListForResentFrom];
  if (![v15 count])
  {
    v16 = [v9 copyAddressListForSender];

    v15 = v16;
  }

  if ([v15 count])
  {
    v17 = [v15 objectAtIndex:0];
    v68 = [v17 mf_uncommentedAddress];

    if (!v9)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v68 = &stru_288159858;
    if (!v9)
    {
      goto LABEL_21;
    }
  }

  v18 = [v6[4] objectForKey:@"ShouldSign"];
  v19 = [v18 intValue];

  if (v19)
  {
    v20 = _createMimePartData(v6, v7, a4);
    if (v20 && ([v14 shouldCancel] & 1) == 0)
    {
      v60 = v14;
      v62 = v11;
      v65 = v12;
      v21 = v6[4];
      v70 = 0;
      v22 = [v7 newSignedPartWithData:v20 sender:v68 compositionSpecification:v21 signatureData:&v70];
      v23 = v70;
      v24 = [v22 firstChildPart];
      v25 = [v24 nextSiblingPart];

      if (v23 && v25)
      {
        CFDictionarySetValue(a4, v25, v23);
      }

      if (!v22)
      {

        v13 = 0;
      }

      v11 = v62;

      v7 = v22;
      v12 = v65;
      v14 = v60;
    }

    else
    {

      v13 = 0;
    }
  }

LABEL_21:
  if (!v13)
  {
    goto LABEL_67;
  }

  v26 = [v6[4] objectForKey:@"ShouldEncrypt"];
  v27 = [v26 intValue];

  v66 = v12;
  if (v27)
  {
    v63 = v11;
    v28 = v14;
    v29 = _createMimePartData(v6, v7, a4);
    if (v29 && ([v28 shouldCancel] & 1) == 0)
    {
      v30 = [MEMORY[0x277CBEB18] array];
      [v63 appendHeaderData:0 andRecipients:v30];
      v32 = [v30 arrayByApplyingSelector:sel_mf_uncommentedAddress];
      v33 = v32;
      if (v15 && [v32 indexOfObject:v68] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v30 addObjectsFromArray:v15];
      }

      v34 = v6[4];
      v69 = 0;
      v35 = [v7 newEncryptedPartWithData:v29 compositionSpecification:v34 encryptedData:{&v69, v33}];
      v36 = v69;
      v31 = v35;

      if (v36 && v31)
      {
        CFDictionarySetValue(a4, v31, v36);
      }

      else
      {

        v13 = 0;
      }
    }

    else
    {
      v30 = v13;
      v31 = v7;
      v13 = 0;
    }

    v7 = v31;
    v14 = v28;
    v11 = v63;
    v12 = v66;
  }

  if (!v9 || !v13)
  {
    if (!v13)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

  contexta = objc_autoreleasePoolPush();
  v37 = [v9 copyAddressListForResentFrom];

  v38 = [v37 count];
  if (v38)
  {
    v15 = v37;
  }

  else
  {
    v15 = [v9 copyAddressListForSender];
  }

  v61 = v14;
  if ([v15 count])
  {
    v39 = [v15 objectAtIndex:0];
    v40 = [v39 mf_uncommentedAddress];

    v41 = v40;
    if (!v40)
    {
      v68 = 0;
LABEL_47:
      v44 = 0;
      goto LABEL_49;
    }
  }

  else
  {

    v41 = &stru_288159858;
  }

  v42 = [(__CFString *)v41 rangeOfString:@"@" options:4];
  v68 = v41;
  if (v42 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_47;
  }

  v44 = [(__CFString *)v41 substringFromIndex:v42 + v43];
LABEL_49:
  v45 = [MEMORY[0x277CCACA8] mf_messageIDStringWithDomainHint:v44];
  v46 = v45;
  if (v45 && [v45 length])
  {
    v47 = *MEMORY[0x277D06FE0];
    if (v38)
    {
      v48 = [v11 firstHeaderForKey:*MEMORY[0x277D06FE0]];
      v64 = v11;
      v49 = [v48 length];

      v50 = *MEMORY[0x277D07020];
      v51 = v49 == 0;
      v11 = v64;
      if (!v51)
      {
        v47 = *MEMORY[0x277D07020];
      }
    }

    [v11 setHeader:v46 forKey:v47];
  }

  v52 = *MEMORY[0x277D06FD8];
  v53 = [v9 firstHeaderForKey:*MEMORY[0x277D06FD8]];

  if (!v53)
  {
    v54 = [MEMORY[0x277D24F58] versionString];
    [v9 setHeader:v54 forKey:v52];
  }

  objc_autoreleasePoolPop(contexta);
  v12 = v66;
  v14 = v61;
LABEL_58:
  v55 = objc_autoreleasePoolPush();
  if (_makeMimeHeadersConsistent(v6, v7, a4) && ([v14 shouldCancel] & 1) == 0)
  {
    _appendHeadersToMessageHeaders(v6, v7, v11);
    _appendPartDataToConsumer(v6, v7, v12, a4, 0);
    if ((![v12 count] || (objc_msgSend(v12, "isLastCharacterNewLine") & 1) == 0) && (v6[2] & 2) == 0)
    {
      v56 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:"\n" length:1 freeWhenDone:0];
      MFDataConsumerConsumeCompleteData();
    }

    [v12 done];
  }

  else
  {

    v13 = 0;
  }

  objc_autoreleasePoolPop(v55);
LABEL_67:

  return v13;
}

void sub_2720E2EA8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 buf)
{
  if (a2 == 1)
  {
    v23 = objc_begin_catch(a1);
    v24 = vm_imap_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v23 reason];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v25;
      _os_log_impl(&dword_2720B1000, v24, OS_LOG_TYPE_DEFAULT, "Exception raised during message encoding: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x2720E2E4CLL);
  }

  _Unwind_Resume(a1);
}

id _createPlainTextPart(void *a1, void *a2, __CFDictionary *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v6 string];
  v8 = [v7 mf_bestMimeCharsetUsingHint:0xFFFFFFFFLL];

  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [v9 BOOLForKey:@"UseFormatFlowedForWrapping"];

  if (v10)
  {
    v22 = 0;
    v21 = 0;
    [v6 getFormatFlowedString:&v21 insertedTrailingSpaces:&v22 encoding:{objc_msgSend(v8, "cfStringEncoding")}];

    v11 = v21;
    if (v11)
    {
      v12 = _createPartAndDataForString(v5, v11, v8, @"plain", a3);
      [v12 setBodyParameter:@"flowed" forKey:@"format"];
      if (v22 == 1)
      {
        [v12 setBodyParameter:@"yes" forKey:@"delsp"];
      }
    }

    else
    {
      if (v8)
      {
        v14 = MEMORY[0x277CCA9B8];
        v15 = MEMORY[0x277CCACA8];
        v16 = [v8 displayName];
        v17 = [v15 stringWithFormat:@"Some characters in your message could not be converted to the “%@” text encoding. Please choose a different entry from the “Text Encoding” menu.", v16];
        v18 = [v14 errorWithDomain:@"MFMessageErrorDomain" code:1038 localizedDescription:v17 title:@"Invalid Text Encoding" userInfo:0];

        v19 = +[MFActivityMonitor currentMonitor];
        [v19 setError:v18];
      }

      v12 = 0;
    }
  }

  else
  {
    v13 = [v6 quotedString:{objc_msgSend(v8, "cfStringEncoding")}];

    v12 = _createPartAndDataForString(v5, v13, v8, @"plain", a3);
  }

  return v12;
}

id _createPartForMFAttachment(void *a1, void *a2, int a3, __CFDictionary *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = @"inline";
  if (([v8 isImageFile] & 1) == 0)
  {
    v10 = [v8 metadataValueForKey:@"MFAttachmentIsSinglePagePDFKey"];
    if (![v10 BOOLValue])
    {
      v9 = @"attachment";
    }
  }

  v11 = v9;
  v12 = [v8 fileName];
  if (v12 && (MFStringCanBeConvertedLosslessly() & 1) == 0)
  {
    v13 = MFCreateDataWithString();
    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:1];
      v15 = [v14 stringByReplacingOccurrencesOfString:@"?" withString:@"_"];

      v12 = v15;
    }
  }

  v16 = [objc_allocWithZone(MEMORY[0x277D24F68]) init];
  v17 = [v8 fileName];
  [v16 setDispositionParameter:v17 forKey:@"filename"];

  [v16 setDisposition:v11];
  if ([v7 shouldWriteAttachmentPlaceholders] && objc_msgSend(v8, "isPlaceholder"))
  {
    v18 = [v8 fetchPlaceholderData];
  }

  else
  {
    v18 = [v8 fetchDataSynchronously:0 stripPrivateMetadata:1];
  }

  v19 = v18;
  if (![v18 length])
  {
    v36 = vm_imap_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [v8 fileName];
      *buf = 138412290;
      v55 = v37;
      _os_log_impl(&dword_2720B1000, v36, OS_LOG_TYPE_DEFAULT, "Unable to encode %@ as a MIME attachment", buf, 0xCu);
    }

    CFDictionarySetValue(a4, v16, [MEMORY[0x277CBEA90] data]);
    if (v16)
    {
      goto LABEL_46;
    }

    goto LABEL_49;
  }

  v52 = v12;
  if ((v7[16] & 4) != 0)
  {
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lu", objc_msgSend(v19, "length")];
    [v16 setDispositionParameter:v20 forKey:@"size"];
  }

  v53 = a3;
  v21 = [v8 fileAttributes];
  v50 = [v21 objectForKey:*MEMORY[0x277CCA180]];

  v51 = v19;
  CFDictionarySetValue(a4, v16, v19);
  v22 = v8;
  v23 = v16;
  v24 = [v22 fileName];
  v25 = objc_alloc_init(MEMORY[0x277D24FB0]);
  v26 = [v22 mimeType];
  [v25 setMimeType:v26];

  v27 = [v24 pathExtension];
  [v25 setPathExtension:v27];

  [v25 setFilename:v24];
  if ([v25 osType] == 1061109567)
  {
    [v25 setOsType:0];
  }

  v28 = [v25 mimeType];

  v29 = [v25 pathExtension];
  v30 = [&stru_288159858 isEqualToString:v29];

  if (v30)
  {
    [v25 setPathExtension:0];
  }

  v31 = [v25 pathExtension];

  if (v31)
  {
    v32 = v28 == 0;
  }

  else
  {
    v32 = (v28 == 0) | 2;
  }

  if (v32)
  {
    MFGetTypeInfo();
    if (!v31 || v28)
    {
      v33 = [v25 pathExtension];

      if (v33)
      {
        v34 = [v25 pathExtension];
        v35 = [v24 stringByAppendingPathExtension:v34];

        [v22 setFileName:v35];
        v24 = v35;
      }
    }
  }

  v38 = [v25 mimeType];

  if (v38)
  {
    v39 = [v25 mimeType];
    v40 = [v39 componentsSeparatedByString:@"/"];

    if (v40 && [v40 count] == 2)
    {
      v41 = [v40 objectAtIndex:0];
      v42 = [v40 objectAtIndex:1];

      if (v41)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  v42 = 0;
LABEL_40:

  v41 = @"application";
  v42 = @"octet-stream";
LABEL_41:
  [v23 setType:v41];
  [v23 setSubtype:v42];

  v19 = v51;
  if (v50)
  {
    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%#o", objc_msgSend(v50, "intValue")];
    [v23 setBodyParameter:v43 forKey:@"x-unix-mode"];
  }

  v44 = [v22 contentID];
  a3 = v53;
  if (v44)
  {
    [v23 setBodyParameter:v44 forKey:*MEMORY[0x277D24E78]];
  }

  v12 = v52;
  [v23 setBodyParameter:v52 forKey:@"name"];

  if (v16)
  {
LABEL_46:
    if (a3)
    {
      v45 = [v16 type];
      v46 = [v45 isEqualToString:@"multipart"];

      if ((v46 & 1) == 0)
      {
        v47 = [v8 contentID];
        [v16 setContentID:v47];
      }
    }
  }

LABEL_49:

  v48 = *MEMORY[0x277D85DE8];

  return v16;
}

void sub_2720E42B4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf)
{
  if (a2 == 1)
  {
    v19 = objc_begin_catch(a1);
    v20 = vm_imap_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v19 reason];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v21;
      _os_log_impl(&dword_2720B1000, v20, OS_LOG_TYPE_DEFAULT, "Exception raised during message encoding: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x2720E4260);
  }

  _Unwind_Resume(a1);
}

id _createPartForFileWrapper(void *a1, void *a2, __CFDictionary *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [v6 preferredFilename];
  if (v7)
  {
    v8 = v7;
    if ([v6 isImageFile])
    {
      v9 = @"inline";
    }

    else
    {
      v9 = @"attachment";
    }

    v10 = v8;
    v11 = v9;
    v12 = v10;
    if ((MFStringCanBeConvertedLosslessly() & 1) == 0)
    {
      v13 = MFCreateDataWithString();
      v12 = v10;
      if (v13)
      {
        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:1];
        v12 = [v14 stringByReplacingOccurrencesOfString:@"?" withString:@"_"];
      }
    }

    v15 = [objc_allocWithZone(MEMORY[0x277D24F68]) init];
    [v15 setDispositionParameter:v10 forKey:@"filename"];
    [v15 setDisposition:v11];

    if ([v6 isSymbolicLink])
    {
      v16 = [objc_allocWithZone(MEMORY[0x277D24F68]) init];
      v17 = objc_opt_new();
      v31 = v10;
      _setMimeTypeFromWrapper(v16, &v31, v6);
      v18 = v31;

      _appendHeadersToMessageHeaders(v5, v16, v17);
      CFDictionarySetValue(a3, v15, [v17 encodedHeaders]);
      [v15 setType:@"message"];
      [v15 setSubtype:@"external-body"];
      [v15 setBodyParameter:@"local-file" forKey:@"access-type"];
      v19 = [v6 symbolicLinkDestination];
      [v15 setBodyParameter:v19 forKey:@"name"];

      v10 = v18;
    }

    else if ([v6 isRegularFile])
    {
      v20 = [v6 regularFileContents];
      if (!v20)
      {
        v20 = [MEMORY[0x277CBEA90] data];
      }

      if ((v5[16] & 4) != 0)
      {
        v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lu", objc_msgSend(v20, "length")];
        [v15 setDispositionParameter:v21 forKey:@"size"];
      }

      v22 = [v6 fileAttributes];
      v23 = [v22 objectForKey:*MEMORY[0x277CCA180]];

      CFDictionarySetValue(a3, v15, v20);
      v30 = v10;
      _setMimeTypeFromWrapper(v15, &v30, v6);
      v24 = v30;

      if (v23)
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%#o", objc_msgSend(v23, "intValue")];
        [v15 setBodyParameter:v25 forKey:@"x-unix-mode"];
      }

      v26 = [v6 URL];
      if (v26)
      {
        [v15 setBodyParameter:v26 forKey:*MEMORY[0x277D24E78]];
      }

      [v15 setBodyParameter:v12 forKey:@"name"];

      v10 = v24;
    }

    else
    {
      v27 = vm_imap_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v10;
        _os_log_impl(&dword_2720B1000, v27, OS_LOG_TYPE_DEFAULT, "Unable to encode %@ as a MIME attachment", buf, 0xCu);
      }

      CFDictionarySetValue(a3, v15, [MEMORY[0x277CBEA90] data]);
    }
  }

  else
  {
    v10 = 0;
    v15 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v15;
}

id _stringByReplacingNonBreakingSpacesWithString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    if ([v5 rangeOfString:@" "] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v6 stringByReplacingOccurrencesOfString:@" " withString:v4];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void _setMimeTypeFromWrapper(void *a1, id *a2, void *a3)
{
  v24 = a3;
  v5 = *a2;
  v6 = MEMORY[0x277D24FB0];
  v7 = a1;
  v8 = objc_alloc_init(v6);
  v9 = [v24 mimeType];
  [v8 setMimeType:v9];

  v10 = [v5 pathExtension];
  [v8 setPathExtension:v10];

  [v8 setFilename:v5];
  if ([v8 osType] == 1061109567)
  {
    [v8 setOsType:0];
  }

  v11 = [v8 mimeType];

  v12 = [v8 pathExtension];
  v13 = [&stru_288159858 isEqualToString:v12];

  if (v13)
  {
    [v8 setPathExtension:0];
  }

  v14 = [v8 pathExtension];

  if (v14)
  {
    v15 = v11 == 0;
  }

  else
  {
    v15 = (v11 == 0) | 2;
  }

  if (v15)
  {
    MFGetTypeInfo();
    if (!v14 || v11)
    {
      v16 = [v8 pathExtension];

      if (v16)
      {
        v17 = *a2;
        v18 = [v8 pathExtension];
        *a2 = [v17 stringByAppendingPathExtension:v18];

        [v24 setPreferredFilename:*a2];
        [v24 setFilename:*a2];
      }
    }
  }

  v19 = [v8 mimeType];

  if (v19)
  {
    v20 = [v8 mimeType];
    v21 = [v20 componentsSeparatedByString:@"/"];

    if (v21 && [v21 count] == 2)
    {
      v22 = [v21 objectAtIndex:0];
      v23 = [v21 objectAtIndex:1];

      if (v22)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v23 = 0;
LABEL_20:

  v22 = @"application";
  v23 = @"octet-stream";
LABEL_21:
  [v7 setType:v22];
  [v7 setSubtype:v23];
}

void _appendHeadersToMessageHeaders(void *a1, void *a2, void *a3)
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5[3];
  if (objc_opt_respondsToSelector())
  {
    [v5[3] messageWriter:v5 willGenerateHeadersForMimePart:v6];
  }

  v9 = [v6 type];
  v10 = [v9 isEqualToString:@"multipart"];

  if (v10)
  {
    v11 = [v6 bodyParameterForKey:@"boundary"];
    if (!v11)
    {
      v11 = [MEMORY[0x277D24F58] copyNewMimeBoundary];
      [v6 setBodyParameter:v11 forKey:@"boundary"];
    }
  }

  v12 = [v6 type];
  v13 = [v6 subtype];
  v14 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v15 = &stru_288159858;
  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = &stru_288159858;
  }

  if (v13)
  {
    v15 = v13;
  }

  v17 = [v14 initWithFormat:@"%@/%@", v16, v15];
  v18 = v6;
  v19 = [v18 dispositionParameterForKey:@"filename"];
  if (v19 && ([v18 bodyParameterForKey:@"name"], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
  {
    v62 = v17;
    v22 = v7;
    v23 = [v19 mutableCopyWithZone:0];
    [v23 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(v23, "length")}];
    [v23 replaceOccurrencesOfString:@"" withString:@"\\" options:0 range:{0, objc_msgSend(v23, "length"")}];
    [v23 insertString:@"" atIndex:0];
    [v23 appendString:@""];
    v24 = MFCreateDataWithString();
    if (v24 || (v24 = MFCreateDataWithString()) != 0 || (CFStringGetSystemEncoding(), (v24 = MFCreateDataWithString()) != 0) || (CFStringGetSystemEncoding(), (v24 = MFCreateDataWithString()) != 0))
    {
      v25 = v24;
      strcpy(v78, ";\n\tname=");
      v21 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v24, "length") + 8}];
      [v21 appendBytes:v78 length:8];
      [v21 appendData:v25];
    }

    else
    {
      v21 = 0;
    }

    v7 = v22;
    v17 = v62;
  }

  else
  {
    v21 = 0;
  }

  v26 = [v18 bodyParameterKeys];
  v27 = [v26 count];
  if (v21 || v27)
  {
    v60 = v13;
    v61 = v12;
    v64 = v7;
    v66 = v5;
    v63 = v17;
    v28 = [v17 dataUsingEncoding:1 allowLossyConversion:1];
    v29 = [v28 mutableCopyWithZone:0];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v30 = v26;
    v31 = [v30 countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v73;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v73 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v72 + 1) + 8 * i);
          v36 = [v18 bodyParameterForKey:v35];
          [v29 mf_appendRFC2231CompliantValue:v36 forKey:v35];
        }

        v32 = [v30 countByEnumeratingWithState:&v72 objects:v77 count:16];
      }

      while (v32);
    }

    if (v21)
    {
      [v29 appendData:v21];
    }

    v7 = v64;
    [v64 setHeader:v29 forKey:*MEMORY[0x277D06F88]];

    v5 = v66;
    v13 = v60;
    v12 = v61;
    v17 = v63;
  }

  else
  {
    [v7 setHeader:v17 forKey:*MEMORY[0x277D06F88]];
  }

  v37 = [v18 disposition];
  v38 = [v18 dispositionParameterKeys];
  v39 = [v38 count];
  if (v37 || v39)
  {
    if (v39)
    {
      v65 = v7;
      v67 = v5;
      v40 = [objc_allocWithZone(MEMORY[0x277D24F70]) init];
      if ([v37 length])
      {
        v41 = [v37 dataUsingEncoding:1 allowLossyConversion:1];
        [v40 appendData:v41];
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v42 = v38;
      v43 = [v42 countByEnumeratingWithState:&v68 objects:v76 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v69;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v69 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v68 + 1) + 8 * j);
            v48 = [v18 dispositionParameterForKey:v47];
            [v40 mf_appendRFC2231CompliantValue:v48 forKey:v47];
          }

          v44 = [v42 countByEnumeratingWithState:&v68 objects:v76 count:16];
        }

        while (v44);
      }

      v7 = v65;
      [v65 setHeader:v40 forKey:*MEMORY[0x277D06F60]];

      v5 = v67;
    }

    else
    {
      [v7 setHeader:v37 forKey:*MEMORY[0x277D06F60]];
    }
  }

  v49 = [v18 contentTransferEncoding];
  if (v49)
  {
    [v7 setHeader:v49 forKey:*MEMORY[0x277D06F80]];
  }

  v50 = [v18 contentDescription];
  if (v50)
  {
    [v7 setHeader:v50 forKey:*MEMORY[0x277D06F58]];
  }

  v51 = [v18 contentID];
  v52 = v51;
  if (v51)
  {
    v53 = [v51 mutableCopyWithZone:0];
    [v7 setHeader:v53 forKey:*MEMORY[0x277D06F68]];
  }

  v54 = [v18 languages];
  v55 = v54;
  if (v54 && [v54 count])
  {
    v56 = [v55 componentsJoinedByString:@" "];
    [v7 setHeader:v56 forKey:*MEMORY[0x277D06F70]];
  }

  v57 = [v18 contentLocation];
  if (v57)
  {
    [v7 setHeader:v57 forKey:*MEMORY[0x277D06F78]];
  }

  v58 = v5[3];
  if (objc_opt_respondsToSelector())
  {
    [v5[3] messageWriter:v5 willEncodeHeaders:v7 forMimePart:v18];
  }

  v59 = *MEMORY[0x277D85DE8];
}

_MFOutgoingMessageBody *_makeOutgoingMessageBody(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(_MFOutgoingMessageBody);
  v3 = v1[1];

  v4 = objc_alloc_init(v3);
  [(MFMessageBody *)v2 setMessage:v4];
  [v4 setMessageBody:v2];

  return v2;
}

id _createMimePartData(void *a1, void *a2, const __CFDictionary *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = _makeOutgoingMessageBody(v5);
  v8 = [v7 message];
  v9 = objc_alloc_init(MEMORY[0x277D24F80]);
  v10 = +[MFActivityMonitor currentMonitor];
  [v8 setMutableHeaders:v9];
  if (_makeMimeHeadersConsistent(v5, v6, a3) && ([v10 shouldCancel] & 1) == 0)
  {
    _appendHeadersToMessageHeaders(v5, v6, v9);
    _appendPartDataToConsumer(v5, v6, v7, a3, 0);
    [v7 done];
    v11 = [v8 messageData];
  }

  else
  {
    v11 = 0;
  }

  [v8 setMessageBody:0];

  return v11;
}

uint64_t _makeMimeHeadersConsistent(void *a1, void *a2, const __CFDictionary *a3)
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  theDict = a3;
  v7 = CFDictionaryGetValue(a3, v6);
  v8 = [v6 type];
  if ([@"multipart" isEqualToString:v8])
  {
    [v6 subparts];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v9 = v82 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v79 objects:v83 count:16];
    if (v10)
    {
      v11 = v10;
      v76 = v8;
      v70 = v7;
      v72 = v6;
      v12 = 0;
      v13 = *v80;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          v15 = v12;
          if (*v80 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v79 + 1) + 8 * i);
          if (!_makeMimeHeadersConsistent(v5, v16, theDict))
          {

            v24 = 0;
            v6 = v72;
            goto LABEL_26;
          }

          v17 = [v16 contentTransferEncoding];
          v12 = @"binary";
          if (([v17 isEqualToString:@"binary"] & 1) == 0)
          {
            if ([v17 isEqualToString:@"8bit"])
            {
              if ([(__CFString *)v15 isEqualToString:@"binary"])
              {
                v12 = v15;
              }

              else
              {
                v12 = @"8bit";
              }
            }

            else
            {
              v12 = v15;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v79 objects:v83 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v7 = v70;
      v6 = v72;
      v8 = v76;
      if (v12)
      {
        goto LABEL_29;
      }
    }

    else
    {
    }

    v12 = @"7bit";
LABEL_29:
    [v6 setContentTransferEncoding:v12];

    goto LABEL_129;
  }

  if (!v7)
  {
    [v6 setContentTransferEncoding:@"7bit"];
    goto LABEL_129;
  }

  v18 = [v6 contentTransferEncoding];

  if (v18)
  {
LABEL_129:
    v24 = 1;
    goto LABEL_130;
  }

  v19 = [v6 isReadableText];
  v20 = [v7 length];
  v75 = v19;
  if (v19)
  {
    v21 = 2;
  }

  else
  {
    v21 = 6;
  }

  v69 = v21;
  v22 = [v7 bytes];
  if ([v8 isEqualToString:@"message"])
  {
    LOBYTE(v23) = 1;
  }

  else
  {
    v23 = (v5[16] >> 1) & 1;
  }

  v25 = +[MFActivityMonitor currentMonitor];
  if ([v25 canBeCancelled])
  {
    v26 = v25;
  }

  else
  {

    v26 = 0;
  }

  v77 = v26;
  if (v20 < 1)
  {
    v44 = 0;
    goto LABEL_95;
  }

  v76 = v8;
  v70 = v7;
  v68 = 0;
  v27 = 0;
  v73 = 0;
  v67 = v20;
  v28 = &v22[v20];
  v29 = 1;
  v30 = v22;
  v31 = 1;
  do
  {
    v32 = *v22;
    if (v32 <= 0xD && ((1 << v32) & 0x2401) != 0)
    {
      v31 = 0;
    }

    if (v32 == 10)
    {
      v34 = 0;
      v35 = &v22[~v30];
      if (v27 > v35)
      {
        v35 = v27;
      }

      if (v22 > v30)
      {
        v27 = v35;
      }

      v30 = v22 + 1;
    }

    else
    {
      v36 = v75;
      if (v32 != 27)
      {
        v36 = 0;
      }

      if (v32 == 9 || v32 > 0x1F)
      {
        v38 = (v32 & 0x80u) == 0;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        v34 = 0;
        if (v22 == v30 && (v22 + 5) < v28)
        {
          if (!strncmp("From ", v22, 5uLL))
          {
            LOBYTE(v23) = 0;
            v34 = 0;
            v68 = 1;
            v30 = v22;
            v27 = 998;
          }

          else
          {
            v34 = 0;
            v30 = v22;
          }

          v26 = v77;
        }
      }

      else
      {
        v39 = v73 + v69;
        v40 = v5[16];
        v73 += v69;
        if ((v40 & 3) != 0)
        {
          v34 = 0;
        }

        else
        {
          if (v23)
          {
            v34 = 0;
            ++v22;
            LOBYTE(v23) = 1;
            goto LABEL_79;
          }

          LOBYTE(v23) = 0;
          if (((v67 > v39) & (v40 >> 3)) != 0)
          {
            v34 = 0;
          }

          else
          {
            v34 = @"base64";
          }
        }
      }
    }

    v41 = ++v22 - v30 < 999 && v27 < 999;
    if (!v41 && (v23 & 1) == 0)
    {
      if (v5[16] & 8) != 0 && (v42 = [v76 isEqualToString:@"text"], v26 = v77, (v42))
      {
        LOBYTE(v23) = 0;
      }

      else
      {
        LOBYTE(v23) = 0;
        v34 = @"base64";
      }
    }

LABEL_79:
    if (v26)
    {
      v43 = [v26 shouldCancel];
      v26 = v77;
      v29 &= v43 ^ 1;
    }
  }

  while (!v34 && v22 < v28 && (v29 & 1) != 0);
  if ((v29 & 1) == 0)
  {

    v24 = 0;
LABEL_26:
    v7 = v70;
    v8 = v76;
    goto LABEL_130;
  }

  v44 = ~v30 + v28;
  if (v27 > v44)
  {
    v44 = v27;
  }

  if (v28 <= v30)
  {
    v44 = v27;
  }

  v7 = v70;
  v8 = v76;
  if (v34)
  {
    goto LABEL_108;
  }

  if (v68 & 1 | (v44 > 997))
  {
    goto LABEL_101;
  }

  if (!v73)
  {
LABEL_95:
    if (v44 >= 77)
    {
      v45 = [v6 type];
      if ([v45 isEqualToString:@"text"])
      {
        v46 = [v6 subtype];
        if ([v46 isEqualToString:@"plain"])
        {
          [MEMORY[0x277CBEBD0] standardUserDefaults];
          v48 = v47 = v8;
          v49 = [v48 BOOLForKey:@"UseFormatFlowedForWrapping"];

          v8 = v47;
          if ((v49 & 1) == 0)
          {
            goto LABEL_104;
          }

          goto LABEL_107;
        }
      }
    }

LABEL_107:
    v34 = @"7bit";
    goto LABEL_108;
  }

  if ((((v5[16] & 3) != 0) & v31) != 0)
  {
    v34 = @"8bit";
    goto LABEL_108;
  }

LABEL_101:
  if (v68 & 1 | ((v23 & 1) == 0))
  {
    if ((v5[16] & 8) != 0 && [v70 length] > v73)
    {
LABEL_104:
      v34 = @"quoted-printable";
    }

    else
    {
      v34 = @"base64";
    }
  }

  else
  {
    v34 = @"binary";
  }

LABEL_108:
  [v6 setContentTransferEncoding:{v34, v67}];
  if (![@"base64" isEqualToString:v34])
  {
    if (![@"quoted-printable" isEqualToString:v34])
    {
LABEL_119:
      v61 = 0;
      goto LABEL_120;
    }

    v74 = v6;
    v51 = objc_alloc_init(MEMORY[0x277D24EE8]);
    v52 = [objc_alloc(MEMORY[0x277D24F98]) initWithConsumer:v51];
    [v52 setForTextPart:v75];
    v53 = [v7 length];
    v71 = v7;
    v54 = [v7 bytes];
    v55 = 0;
    for (j = 0; ; j = v60)
    {
      v57 = v77;
      if (v77)
      {
        if ([v77 shouldCancel])
        {
          break;
        }
      }

      v58 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v54 + v55 length:v53 - v55 freeWhenDone:0];
      v59 = [v52 appendData:v58];
      if (v59 < 0 || (v60 = v59 == 0, j && v60))
      {

        v57 = v77;
        break;
      }

      v55 += v59;
    }

    [v52 done];
    [v51 done];
    v61 = [v51 data];

    v7 = v71;
    v6 = v74;
    v62 = v57;
    if (v57)
    {
      goto LABEL_124;
    }

LABEL_126:
    if (v61)
    {
      CFDictionarySetValue(theDict, v6, v61);
    }

    goto LABEL_129;
  }

  if (!v75)
  {
    goto LABEL_119;
  }

  v50 = [v6 disposition];
  if ([v50 isEqual:@"attachment"])
  {

    goto LABEL_119;
  }

  v65 = v8;
  v66 = [v7 length];

  if (v66)
  {
    v61 = [v7 mf_dataByConvertingUnixNewlinesToNetwork];
  }

  else
  {
    v61 = 0;
  }

  v8 = v65;
LABEL_120:
  v62 = v77;
  if (!v77)
  {
    goto LABEL_126;
  }

LABEL_124:
  if (([v62 shouldCancel] & 1) == 0)
  {
    goto LABEL_126;
  }

  v24 = 0;
LABEL_130:

  v63 = *MEMORY[0x277D85DE8];
  return v24;
}

void sub_2720E7108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _MFFlushCurrentInvocation()
{
  v0 = *MEMORY[0x277CBF058];
  if (CFRunLoopRunInMode(*MEMORY[0x277CBF058], 0.0, 0) == kCFRunLoopRunTimedOut)
  {
    Current = CFRunLoopGetCurrent();
    if (CFRunLoopGetNextTimerFireDate(Current, v0) > 1.17549435e-38)
    {
      v2 = 0.001;
      do
      {
        if (CFRunLoopRunInMode(v0, v2, 0) != kCFRunLoopRunTimedOut)
        {
          break;
        }

        v2 = v2 + v2;
        v3 = CFRunLoopGetCurrent();
      }

      while (CFRunLoopGetNextTimerFireDate(v3, v0) > 1.17549435e-38 && v2 < 10.0);
    }
  }
}

void sub_2720E7980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    if (isInternalDevice())
    {
      [v14 reason];
    }

    else
    {
      [v14 name];
    }
    v15 = ;
    v16 = MEMORY[0x277CCACA8];
    v19 = NSStringFromSelector([v13 selector]);
    v17 = [v16 stringWithFormat:@"Exception raised during monitored invocation of %@, exception: %@"];

    v18 = vm_imap_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [(MFMonitoredInvocation *)v17 invoke];
    }

    objc_end_catch();
    JUMPOUT(0x2720E7914);
  }

  _Unwind_Resume(exception_object);
}

void execute_on_networkthread_sync(void *a1)
{
  v1 = a1;
  v7 = v1;
  v2 = __theOnlyNetworkThread;
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v1[2](v1);
  }

  else
  {
    v5 = [v2 methodSignatureForSelector:sel_execute_on_the_thread_];
    v6 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v5];
    [v6 setTarget:v2];
    [v6 setSelector:sel_execute_on_the_thread_];
    [v6 setArgument:&v7 atIndex:2];
    [v6 performSelector:sel_invoke onThread:v2 withObject:0 waitUntilDone:1];
  }
}

void execute_on_networkthread(void *a1)
{
  v1 = a1;
  v2 = __theOnlyNetworkThread;
  v3 = [v2 methodSignatureForSelector:sel_execute_on_the_thread_];
  v4 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v3];
  v5 = [v1 copy];
  [v4 retainArguments];
  [v4 setTarget:v2];
  [v4 setSelector:sel_execute_on_the_thread_];
  [v4 setArgument:&v5 atIndex:2];
  [v4 performSelector:sel_invoke onThread:v2 withObject:0 waitUntilDone:0];
}

void _MFSocketTheOnlyNetworkThread_runloop(NSConditionLock *a1)
{
  v6 = a1;
  [(NSConditionLock *)v6 lockWhenCondition:0];
  v1 = CFRunLoopTimerCreate(*MEMORY[0x277CBECE8], 1.79769313e308, 60.0, 0, 0, _DoNothingTimerCallBack, 0);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddTimer(Current, v1, *MEMORY[0x277CBF058]);
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v4 = __theOnlyNetworkThread;
  __theOnlyNetworkThread = v3;

  [__theOnlyNetworkThread setName:@"com.apple.voicemail.networkThread"];
  [(NSConditionLock *)v6 unlockWithCondition:1];
  v5 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v5 run];

  CFRelease(v1);
}

void sub_2720E8704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFStream;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2720E8924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2720E8CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2720E95FC(_Unwind_Exception *a1)
{
  v7 = v3;

  _Unwind_Resume(a1);
}

void sub_2720EBDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2720EC084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2720EC414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2720EC710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v14 = v13;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2720ECB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = _MFSocket;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_2720ED430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, id location)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2720EDC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2720EE880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2720EEA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2720EEB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2720EECD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2720EEE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<ctu::OsLogLogger>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x2743C2940]();

    JUMPOUT(0x2743C2A40);
  }

  return result;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x34u);
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 112);
  v4 = *(result + 120);
  return result;
}

void sub_2720EF71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sanitizeStringForMarkup(void *a1)
{
  v1 = a1;
  [v1 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:2 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@">" withString:@"&gt;" options:2 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"  " withString:@"&nbsp; " options:2 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"\n" withString:@"<BR>" options:2 range:{0, objc_msgSend(v1, "length")}];
}

unint64_t _lockedFindRangeOfDownloadsWithUid(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3[1];
  if (v4)
  {
    v5 = [(__CFArray *)v4 count];
    v19.location = 0;
    v19.length = v5;
    v6 = CFArrayBSearchValues(v3[1], v19, a2, _compareDownloadsByUid, a2);
    v7 = v6;
    v8 = 0;
    v9 = v5 - v6;
    if (v5 > v6)
    {
      v10 = v6 - v5;
      while (1)
      {
        v11 = [(__CFArray *)v3[1] objectAtIndex:v7 + v8];
        v12 = [v11 uid];

        if (v12 != a2)
        {
          break;
        }

        ++v8;
        if (!(v10 + v8))
        {
          v8 = v9;
          break;
        }
      }

      if (v8 && v7)
      {
        do
        {
          v13 = v7 - 1;
          v14 = [(__CFArray *)v3[1] objectAtIndex:v7 - 1];
          v15 = [v14 uid];

          if (v15 != a2)
          {
            break;
          }

          ++v8;
          --v7;
        }

        while (v13);
      }
    }
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = v3[1];
    v3[1] = v16;

    v7 = 0;
  }

  return v7;
}

MFIMAPSimpleDownload *_getDownload(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v15 = a1;
  v16 = a3;
  v17 = a8;
  [v15 mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(v15, a2);
  v20 = RangeOfDownloadsWithUid;
  v21 = v19;
  if (a7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v31 = [[MFIMAPSimpleDownload alloc] initWithUid:a2 section:v16 range:a6 consumer:a7, v17];
LABEL_17:
    v29 = v31;
    [v15[1] insertObject:v31 atIndex:v20 + v21];
    goto LABEL_18;
  }

  if (RangeOfDownloadsWithUid >= v19)
  {
    goto LABEL_13;
  }

  v33 = a4;
  v34 = a5;
  v35 = RangeOfDownloadsWithUid;
  v22 = RangeOfDownloadsWithUid;
  do
  {
    v23 = [v15[1] objectAtIndex:{v22, v33, v34}];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v24 = [v23 section];
    v25 = [v24 isEqualToString:v16];

    if (!v25)
    {
      goto LABEL_9;
    }

    if (!v17 || ([v23 mainConsumer], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "consumers"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "containsObject:", v17), v27, v26, v28))
    {
      v29 = v23;
    }

    else
    {
LABEL_9:
      v29 = 0;
    }

    if (v29)
    {
      break;
    }

    ++v22;
  }

  while (v22 < v21);
  v20 = v35;
  a2 = a2;
  a4 = v33;
  a5 = v34;
  if (!v29)
  {
LABEL_13:
    v30 = [MFIMAPSimpleDownload alloc];
    if (a4 == 0xFFFFFFFFLL)
    {
      v31 = [(MFIMAPSimpleDownload *)v30 initWithUid:a2 section:v16 estimatedLength:a5 consumer:v17];
    }

    else
    {
      v31 = [(MFIMAPSimpleDownload *)v30 initWithUid:a2 section:v16 length:a4 consumer:v17];
    }

    goto LABEL_17;
  }

LABEL_18:
  [v15 mf_unlock];

  return v29;
}

void _lockedUpdateDownloadsInRange(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v19 = a3;
  obj = a4;
  if (a3)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = a2 + a3;
      v11 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          if ([v13 type] != 8 && a2 < v10)
          {
            v15 = v19;
            v16 = a2;
            do
            {
              v17 = [v7[1] objectAtIndex:v16];
              [v17 handleFetchResult:v13];

              ++v16;
              --v15;
            }

            while (v15);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t _compareDownloadsByUid(void *a1, void *a2, void *a3)
{
  v3 = a3;
  v5 = a1;
  if (a1 != a3)
  {
    v5 = [a1 uid];
  }

  if (a2 != v3)
  {
    LODWORD(v3) = [a2 uid];
  }

  if (v5 < v3)
  {
    return -1;
  }

  else
  {
    return v5 != v3;
  }
}

void __destructor_8_s0_s8_s24_S_s32_s48_S_s80(uint64_t a1)
{
  v2 = *(a1 + 80);
}

uint64_t _formatFlowedOptions(void *a1)
{
  v1 = a1;
  v2 = [v1 bodyParameterForKey:@"format"];
  v3 = [v2 isEqualToString:@"flowed"];

  if (v3)
  {
    v4 = [v1 bodyParameterForKey:@"delsp"];
    v5 = v4;
    if (!v4 || [v4 caseInsensitiveCompare:@"yes"] && objc_msgSend(v5, "caseInsensitiveCompare:", @"y"))
    {
      v3 = 1;
    }

    else
    {
      v3 = 3;
    }
  }

  return v3;
}

__CFString *_stringByApplyingIDNATranslationWithRange(void *a1, uint64_t (*a2)(uint64_t, const UniChar *, unint64_t, uint64_t, void, __int128 *, int *))
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (_stringByApplyingIDNATranslationWithRange_onceToken != -1)
  {
    _stringByApplyingIDNATranslationWithRange_cold_1();
  }

  if (!_stringByApplyingIDNATranslationWithRange_sIDNA || (v4 = [(__CFString *)v3 length], v4 >> 31))
  {
    v5 = v3;
    goto LABEL_6;
  }

  v8 = v4;
  CharactersPtr = CFStringGetCharactersPtr(v3);
  v10 = MEMORY[0x277CBECE8];
  if (CharactersPtr)
  {
    v11 = CharactersPtr;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = v8 > 0xFF;
    if (v8 < 0x100)
    {
      v11 = &v27;
    }

    else
    {
      v11 = MEMORY[0x2743C1AC0](*MEMORY[0x277CBECE8], (2 * v8), 0x1000040BDFB0063, 0);
      if (!v11)
      {
        v14 = vf_IDNA_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          _stringByApplyingIDNATranslationWithRange_cold_2(2 * v8, v14);
        }

        v5 = 0;
        goto LABEL_6;
      }
    }

    [(__CFString *)v3 getCharacters:v11 range:0, v8];
    v13 = v11;
  }

  v26 = 0;
  v25 = xmmword_272170040;
  v15 = a2(_stringByApplyingIDNATranslationWithRange_sIDNA, v11, v8, 0, 0, &v25, &v26);
  v16 = v15;
  v18 = v26 < 1 && DWORD1(v25) == 0;
  if (v26 != 15 && !v18)
  {
    v5 = 0;
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

  v23 = v13;
  v19 = *v10;
  v20 = MEMORY[0x2743C1AC0](*v10, 2 * (v15 + 1), 0x1000040BDFB0063, 0);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 7;
  }

  v26 = v21;
  if (v20)
  {
    v22 = v20;
    v24 = xmmword_272170040;
    a2(_stringByApplyingIDNATranslationWithRange_sIDNA, v11, v8, v20, (v16 + 1), &v24, &v26);
    if (v26 > 0 || DWORD1(v24) || (v5 = CFStringCreateWithCharactersNoCopy(v19, v22, v16, v19)) == 0)
    {
      CFAllocatorDeallocate(v19, v22);
      v5 = 0;
    }

    v10 = MEMORY[0x277CBECE8];
  }

  else
  {
    v5 = 0;
  }

  v13 = v23;
  if (v12)
  {
LABEL_39:
    CFAllocatorDeallocate(*v10, v13);
  }

LABEL_6:

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void ___stringByApplyingIDNATranslationWithRange_block_invoke()
{
  v1 = 0;
  _stringByApplyingIDNATranslationWithRange_sIDNA = MEMORY[0x2743C34E0](60, &v1);
  if (v1 >= 1)
  {
    v0 = vf_IDNA_log();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      ___stringByApplyingIDNATranslationWithRange_block_invoke_cold_1(&v1, v0);
    }

    _stringByApplyingIDNATranslationWithRange_sIDNA = 0;
  }
}

id vf_IDNA_log()
{
  if (vf_IDNA_log_onceToken != -1)
  {
    vf_IDNA_log_cold_1();
  }

  v1 = vf_IDNA_log_sLog;

  return v1;
}

id MFMimeDataCreateStringFromHeaderBytes()
{
  v0 = _MFCreateStringFromHeaderBytes();

  return v0;
}

uint64_t MFCreateURLForContentID(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [(__CFString *)v1 rangeOfString:@"<"];
    v5 = v4;
    v6 = [(__CFString *)v2 rangeOfString:@">"];
    v8 = v2;
    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v2;
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7.location = v3 + v5;
        v8 = v2;
        v7.length = v6 - (v3 + v5);
        if (v6 > v3 + v5)
        {
          v8 = CFStringCreateWithSubstring(0, v2, v7);
        }
      }
    }

    v9 = [MEMORY[0x277CBEBC0] vf_defaultAllowedCharacterSet];
    v10 = [(__CFString *)v8 stringByAddingPercentEncodingWithAllowedCharacters:v9];

    if (v10)
    {
      v11 = [@"cid" stringByAppendingFormat:@":%@", v10];
      v12 = [objc_allocWithZone(MEMORY[0x277CBEBC0]) initWithString:v11];
    }

    else
    {
      v12 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t _SortWebAttachmentSources(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  v7 = -1;
  if ((isKindOfClass & 1) == 0)
  {
    v7 = 1;
  }

  if ((isKindOfClass ^ v6))
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t IMAPNextUidFromSet(UniChar *buffer)
{
  v2 = *(buffer + 51);
  if (v2)
  {
    v3 = *(buffer + 50);
    if (v3 > v2)
    {
      v4 = v3 - 1;
LABEL_6:
      *(buffer + 50) = v4;
      return v4;
    }

    if (v3 < v2)
    {
      v4 = v3 + 1;
      goto LABEL_6;
    }

    *(buffer + 51) = 0;
    v6 = *(buffer + 23);
    v5 = *(buffer + 24);
    if (v5 < 1)
    {
      goto LABEL_24;
    }

    if (v6 < 0)
    {
      goto LABEL_24;
    }

    v7 = *(buffer + 20);
    if (v7 <= v6)
    {
      goto LABEL_24;
    }

    v8 = *(buffer + 17);
    if (v8)
    {
      v9 = *(v8 + 2 * *(buffer + 19) + 2 * v6);
    }

    else
    {
      v10 = *(buffer + 18);
      if (v10)
      {
        v9 = *(v10 + *(buffer + 19) + v6);
      }

      else
      {
        if (*(buffer + 22) <= v6 || (v11 = *(buffer + 21), v12 = *(buffer + 23), v11 > v6))
        {
          v13 = v6 - 4;
          if (v6 < 4)
          {
            v13 = 0;
          }

          if (v13 + 64 < v7)
          {
            v7 = v13 + 64;
          }

          *(buffer + 21) = v13;
          *(buffer + 22) = v7;
          v24.length = v7 - v13;
          v24.location = *(buffer + 19) + v13;
          CFStringGetCharacters(*(buffer + 16), v24, buffer);
          v11 = *(buffer + 21);
          v12 = *(buffer + 23);
          v5 = *(buffer + 24);
        }

        v9 = buffer[v6 - v11];
        v6 = v12;
      }
    }

    if (v9 != 44)
    {
LABEL_24:
      v14 = 0;
      *(buffer + 23) = v6 + v5;
    }

    else
    {
      *(buffer + 23) = v6 + 1;
      v14 = v5 - 1;
    }

    *(buffer + 24) = v14;
  }

  v4 = IMAPScanUid(buffer);
  *(buffer + 50) = v4;
  if (v4)
  {
    v15 = *(buffer + 24);
    if (v15 >= 1)
    {
      v16 = *(buffer + 23);
      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = *(buffer + 20);
        if (v17 > v16)
        {
          v18 = *(buffer + 17);
          if (v18)
          {
            v19 = *(v18 + 2 * *(buffer + 19) + 2 * v16);
          }

          else
          {
            v20 = *(buffer + 18);
            if (v20)
            {
              v19 = *(v20 + *(buffer + 19) + v16);
            }

            else
            {
              if (*(buffer + 22) <= v16 || (v21 = *(buffer + 21), v21 > v16))
              {
                v22 = v16 - 4;
                if (v16 < 4)
                {
                  v22 = 0;
                }

                if (v22 + 64 < v17)
                {
                  v17 = v22 + 64;
                }

                *(buffer + 21) = v22;
                *(buffer + 22) = v17;
                v25.length = v17 - v22;
                v25.location = *(buffer + 19) + v22;
                CFStringGetCharacters(*(buffer + 16), v25, buffer);
                v21 = *(buffer + 21);
              }

              v19 = buffer[v16 - v21];
            }
          }

          if (v19 == 44)
          {
            *(buffer + 92) = vaddq_s64(*(buffer + 92), xmmword_272170050);
            return v4;
          }

          if (v19 == 58)
          {
            *(buffer + 92) = vaddq_s64(*(buffer + 92), xmmword_272170050);
            *(buffer + 51) = IMAPScanUid(buffer);
            return v4;
          }

          v16 = *(buffer + 23);
          v15 = *(buffer + 24);
        }
      }

      *(buffer + 23) = v16 + v15;
      *(buffer + 24) = 0;
    }
  }

  return v4;
}

uint64_t IMAPScanUid(UniChar *buffer)
{
  if (*(buffer + 24) >= 1)
  {
    v2 = 0;
    v3 = *(buffer + 23);
    v4 = MEMORY[0x277D85DE0];
    v5 = xmmword_272170050;
    while (1)
    {
      if (v3 < 0 || (v6 = *(buffer + 20), v6 <= v3))
      {
        v8 = 0;
      }

      else
      {
        v7 = *(buffer + 17);
        if (v7)
        {
          LOWORD(v8) = *(v7 + 2 * *(buffer + 19) + 2 * v3);
        }

        else
        {
          v9 = *(buffer + 18);
          if (v9)
          {
            LOWORD(v8) = *(v9 + *(buffer + 19) + v3);
          }

          else
          {
            if (*(buffer + 22) <= v3 || (v10 = *(buffer + 21), v10 > v3))
            {
              v11 = v3 - 4;
              if (v3 < 4)
              {
                v11 = 0;
              }

              if (v11 + 64 < v6)
              {
                v6 = v11 + 64;
              }

              *(buffer + 21) = v11;
              *(buffer + 22) = v6;
              v16.length = v6 - v11;
              v16.location = *(buffer + 19) + v11;
              v15 = v5;
              CFStringGetCharacters(*(buffer + 16), v16, buffer);
              v5 = v15;
              v10 = *(buffer + 21);
            }

            LOWORD(v8) = buffer[v3 - v10];
          }
        }

        v8 = v8;
        if (v8 > 0xFFu)
        {
          return v2;
        }
      }

      if ((*(v4 + 4 * v8 + 60) & 0x400) != 0)
      {
        v2 = v8 + 10 * v2 - 48;
        v12 = *(buffer + 92);
        v13 = vaddq_s64(v12, v5);
        *(buffer + 92) = v13;
        v3 = v13.i64[0];
        if (v12.i64[1] > 1)
        {
          continue;
        }
      }

      return v2;
    }
  }

  return 0;
}

id MFIMAPDateSearchStringForDate(void *a1)
{
  v1 = a1;
  if (MFIMAPDateSearchStringForDate::onceToken != -1)
  {
    MFIMAPDateSearchStringForDate_cold_1();
  }

  v2 = [MFIMAPDateSearchStringForDate::formatter stringFromDate:v1];

  return v2;
}

void __MFIMAPDateSearchStringForDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = MFIMAPDateSearchStringForDate::formatter;
  MFIMAPDateSearchStringForDate::formatter = v0;

  v2 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [MFIMAPDateSearchStringForDate::formatter setLocale:?];
  [MFIMAPDateSearchStringForDate::formatter setDateFormat:@"d-MMM-yyyy"];
}

id MFUIDPlusInfoFromResponse(void *a1)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 responseType] == 2 && objc_msgSend(v1, "responseCode") == 16)
  {
    v2 = [v1 responseInfo];
    v3 = v2;
    if (v2 && [v2 count] >= 3)
    {
      v10[0] = @"UIDVALIDITY";
      v4 = [v3 objectAtIndexedSubscript:0];
      v11[0] = v4;
      v10[1] = @"Source UIDS";
      v5 = [v3 objectAtIndexedSubscript:1];
      v11[1] = v5;
      v10[2] = @"Destination UIDS";
      v6 = [v3 objectAtIndexedSubscript:2];
      v11[2] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void sub_2720F503C(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x2743C2A40](v3, 0x80C40B8603338);

  _Unwind_Resume(a1);
}

void sub_2720F50CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFIMAPConnection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2720F5D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, ...)
{
  va_start(va, a13);
  IMAPCommandParameters::~IMAPCommandParameters(va);

  _Unwind_Resume(a1);
}

void sub_2720F6058(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

void sub_2720F64F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  IMAPCommandParameters::~IMAPCommandParameters(&a9);

  _Unwind_Resume(a1);
}

void sub_2720F67B0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void *_messageFromResponse(MFIMAPConnection *a1, MFIMAPResponse *a2)
{
  v2 = a1;
  if ([(MFIMAPConnection *)v2 responseType]- 1 >= 6)
  {
    v4 = 0;
    goto LABEL_7;
  }

  v3 = [(MFIMAPConnection *)v2 userString];
  v4 = v3;
  if (!v3)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if ([v3 isEqualToString:&stru_288159858])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

LABEL_8:
  v6 = v5;

  return v5;
}

void sub_2720F8A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

__CFString *_IMAPCreateQuotedString(NSString *a1)
{
  v1 = a1;
  v2 = [(__CFString *)v1 length];
  v3 = v2;
  if (!v2)
  {
    v5 = @"";
    goto LABEL_66;
  }

  chars = 0;
  v42 = v1;
  v45 = 0;
  v46 = v2;
  v38 = v1;
  CharactersPtr = CFStringGetCharactersPtr(v1);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v44 = CStringPtr;
  v9 = v3 + 2;
  v10 = 64;
  v47 = 0;
  v48 = 0;
  do
  {
    if (v8 >= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = v8;
    }

    if (v8 < 0 || (v12 = v46, v46 <= v8))
    {
      v14 = 0;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (CharactersPtr)
      {
        v13 = &CharactersPtr[v45];
        goto LABEL_14;
      }

      if (!v44)
      {
        if (v48 <= v8 || (v15 = v47, v47 > v8))
        {
          v16 = -v11;
          v17 = v11 + v6;
          v18 = v10 - v11;
          v19 = v8 + v16;
          v20 = v19 + 64;
          if (v19 + 64 >= v46)
          {
            v20 = v46;
          }

          v47 = v19;
          v48 = v20;
          if (v46 >= v18)
          {
            v12 = v18;
          }

          v50.location = v19 + v45;
          v50.length = v12 + v17;
          CFStringGetCharacters(v42, v50, buffer);
          v15 = v47;
        }

        v13 = &buffer[-v15];
LABEL_14:
        v14 = v13[v8];
        if (!v7)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v14 = v44[v45 + v8];
      if (!v7)
      {
LABEL_20:
        v7 = CFCharacterSetIsCharacterMember(_IMAPNeedsQuoteCharacterSet, v14) != 0;
        goto LABEL_21;
      }
    }

LABEL_17:
    v7 = 1;
LABEL_21:
    if (v14 == 92 || v14 == 34)
    {
      ++v9;
    }

    ++v8;
    --v6;
    ++v10;
  }

  while (v3 != v8);
  if (!v7)
  {
    v1 = v38;
    v5 = v38;
    goto LABEL_66;
  }

  Mutable = CFStringCreateMutable(0, v9);
  chars = 34;
  CFStringAppendCharacters(Mutable, &chars, 1);
  v22 = 0;
  v23 = 0;
  v24 = 64;
  while (2)
  {
    if (v23 >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v23;
    }

    if (v23 < 0 || (v26 = v46, v46 <= v23))
    {
      chars = 0;
    }

    else
    {
      if (CharactersPtr)
      {
        v27 = &CharactersPtr[v45];
        goto LABEL_43;
      }

      if (v44)
      {
        v28 = v44[v45 + v23];
      }

      else
      {
        if (v48 <= v23 || (v29 = v47, v47 > v23))
        {
          v30 = -v25;
          v31 = v25 + v22;
          v32 = v24 - v25;
          v33 = v23 + v30;
          v34 = v33 + 64;
          if (v33 + 64 >= v46)
          {
            v34 = v46;
          }

          v47 = v33;
          v48 = v34;
          if (v46 >= v32)
          {
            v26 = v32;
          }

          v51.location = v33 + v45;
          v51.length = v26 + v31;
          CFStringGetCharacters(v42, v51, buffer);
          v29 = v47;
        }

        v27 = &buffer[-v29];
LABEL_43:
        v28 = v27[v23];
      }

      chars = v28;
      if (v28 == 92 || v28 == 34)
      {
        v39 = 92;
        CFStringAppendCharacters(Mutable, &v39, 1);
      }
    }

    CFStringAppendCharacters(Mutable, &chars, 1);
    ++v23;
    --v22;
    ++v24;
    if (v3 != v23)
    {
      continue;
    }

    break;
  }

  chars = 34;
  v1 = v38;
  CFStringAppendCharacters(Mutable, &chars, 1);
  if (Mutable)
  {
    v35 = Mutable;
  }

  else
  {
    v35 = v38;
  }

  v36 = v35;
  v5 = v38;
  if (Mutable)
  {

    v5 = Mutable;
  }

LABEL_66:

  return v5;
}

void sub_2720F948C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

void sub_2720F9EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19)
{
  IMAPCommandParameters::~IMAPCommandParameters((v20 - 144));

  _Unwind_Resume(a1);
}

__CFString *MFIMAPStringFromMailboxName(void *a1)
{
  v1 = a1;
  if ([(NSString *)v1 length])
  {
    v2 = _IMAPCreateQuotedString(v1);
  }

  else
  {
    v2 = @"";
  }

  return v2;
}

void sub_2720FA458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 40; i != -40; i -= 40)
  {
    IMAPCommandParameters::~IMAPCommandParameters((&a9 + i));
  }

  _Unwind_Resume(a1);
}

void sub_2720FAB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

void sub_2720FB034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

void sub_2720FB160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2720FB66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2720FB8F4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2720FBA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v12 = v11;

  IMAPCommandParameters::~IMAPCommandParameters(&a9);
  _Unwind_Resume(a1);
}

void sub_2720FBC6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

void sub_2720FBF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a13 = &a17;
  std::vector<IMAPCommandParameters>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

uint64_t _processSelectCommand(void *a1, int a2, void *a3)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v26 = a2;
  v7 = MFIMAPStringFromMailboxName(v6);
  v32[0] = v7;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v28 = 0;
  v29 = 0;
  v30 = 0;

  [v5 mf_lock];
  v8 = [v5 _responseFromSendingCommands:&v26 count:1];
  v9 = [v8 responseType];
  if (v9 == 2)
  {
    v13 = [v6 copy];
    v14 = *(v5 + 25);
    *(v5 + 25) = v13;

    *(v5 + 176) = *(v5 + 176) & 0xF8 | 3;
    *(v5 + 280) &= ~1u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v28;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v16)
    {
      v17 = *v23;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v22 + 1) + 8 * i);
          if ([v19 responseType] == 2 && objc_msgSend(v19, "responseCode") == 13)
          {
            *(v5 + 280) |= 1u;
            goto LABEL_17;
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v22 objects:v31 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v12 = 1;
  }

  else
  {
    if (v9 == 4 && (*(v5 + 176) & 7u) >= 3)
    {
      v10 = *(v5 + 25);
      *(v5 + 25) = 0;

      *(v5 + 176) = *(v5 + 176) & 0xF8 | 2;
      *(v5 + 280) &= ~1u;
    }

    v11 = [v5 _errorForResponse:v8 commandParams:&v26];
    v12 = 0;
  }

  [v5 mf_unlock];
  [v5 didFinishCommands:&v26 count:1];

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_2720FC2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

void sub_2720FCAC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

void sub_2720FCF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  IMAPCommandParameters::~IMAPCommandParameters(&a33);

  _Unwind_Resume(a1);
}

void sub_2720FD0EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

uint64_t _doUidSearch(void *a1, void *a2, void *a3, void *a4, BOOL *a5, char a6)
{
  v43 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v32 = a2;
  v31 = a3;
  v37 = 24;
  v12 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v31, "count") + 2 * (v32 != 0)}];
  v13 = v12;
  v38 = v12;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  if (v32)
  {
    if ((a6 & 1) == 0)
    {
      [v12 addObject:@"UID"];
    }

    [v13 addObject:{v32, v31}];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = v31;
  v15 = [v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v15)
  {
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [v11 copyArgumentForSearchTerm:{*(*(&v33 + 1) + 8 * i), v31}];
        [v13 addObject:v18];
      }

      v15 = [v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v15);
  }

  v19 = [v11 _responseFromSendingCommands:&v37 count:1];
  v20 = [v19 responseType];
  if (a5)
  {
    *a5 = v20 == 2;
  }

  if (v20 == 2 && (v21 = [v39 count]) != 0)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = [v39 objectAtIndex:{v24, v31}];
      if ([v25 responseType] == 14)
      {
        v26 = [v25 searchResults];
        v27 = v26;
        if (a4)
        {
          if (v23)
          {
            [v23 addObjectsFromArray:v26];
          }

          else
          {
            v23 = [v26 mutableCopyWithZone:0];
          }
        }

        [v39 removeObjectAtIndex:v24];

        --v21;
        v22 = 1;
      }

      else
      {
        ++v24;
      }
    }

    while (v24 < v21);
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  [v11 didFinishCommands:&v37 count:{1, v31}];
  if (a4)
  {
    [v23 sortUsingSelector:sel_compare_];
    v28 = v23;
    *a4 = v23;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

void sub_2720FD864(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

void sub_2720FE240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

void sub_2720FE99C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

void sub_2720FF198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  IMAPCommandParameters::~IMAPCommandParameters(&a9);

  _Unwind_Resume(a1);
}

void sub_2720FF4A4(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, void *a5, ...)
{
  va_start(va, a5);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

void sub_27210006C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  IMAPCommandParameters::~IMAPCommandParameters(&a26);

  _Unwind_Resume(a1);
}

void sub_2721003B8(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

void sub_2721005E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

void sub_2721009E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

uint64_t _compareFetchResultsByUid(objc_object *a1, objc_object *a2, void *a3)
{
  v4 = a2;
  v5 = [(objc_object *)a1 fetchResultWithType:8];
  v6 = [v5 uid];

  v7 = [(objc_object *)v4 fetchResultWithType:8];
  v8 = [v7 uid];

  if (v6 < v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = v6 > v8;
  }

  return v9;
}

void sub_2721019D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

void sub_272101D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  IMAPCommandParameters::~IMAPCommandParameters(va);
  _Unwind_Resume(a1);
}

void *std::vector<IMAPCommandParameters>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<IMAPCommandParameters>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<IMAPCommandParameters>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<IMAPCommandParameters>>(a1, a2);
  }

  std::vector<IMAPCommandParameters>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<IMAPCommandParameters>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279E33540, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::vector<IMAPCommandParameters>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<IMAPCommandParameters>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<IMAPCommandParameters>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {

      v3 -= 40;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void ___ZL24_MFIMAPDateStringForDateP6NSDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _MFIMAPDateStringForDate(NSDate *)::formatter;
  _MFIMAPDateStringForDate(NSDate *)::formatter = v0;

  v2 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [_MFIMAPDateStringForDate(NSDate *)::formatter setLocale:?];
  [_MFIMAPDateStringForDate(NSDate *)::formatter setDateFormat:@"dd-MMM-yyyy HH:mm:ss ZZ"];
}

void OUTLINED_FUNCTION_0_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 14) = v4;
  *(a3 + 22) = 2114;
  *(a3 + 24) = a2;
  *(a3 + 32) = v3;
  *(a3 + 34) = v4;
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2080;
  return result;
}

void OUTLINED_FUNCTION_3_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x2Au);
}

uint64_t _comparePartialFetchResults(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 startOffset];
  v5 = [v3 startOffset];

  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v5 != v4;
  }
}

void logger::CFTypeRefLogger(void *a1, uint64_t a2)
{
  if (a1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v5 = 0;
    v6 = a2;
    v7 = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "<null>");
    v3 = *(a2 + 24);
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v3 + 48))(v3, __p);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_272105C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void anonymous namespace::CFTypeRefLoggerHelper(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = CFGetTypeID(a1);
  if (v4 == CFDictionaryGetTypeID())
  {
    if (v3)
    {
      v5 = CFGetTypeID(v3);
      if (v5 != CFDictionaryGetTypeID())
      {
        v3 = 0;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "{");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__str, "}");
LABEL_15:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_36;
  }

  v6 = CFGetTypeID(v3);
  if (v6 == CFArrayGetTypeID())
  {
    if (v3)
    {
      v7 = CFGetTypeID(v3);
      if (v7 != CFArrayGetTypeID())
      {
        v3 = 0;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "[");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v22.length = CFArrayGetCount(v3);
    v22.location = 0;
    std::string::basic_string[abi:ne200100]<0>(&__str, "]");
    goto LABEL_15;
  }

  v8 = CFGetTypeID(v3);
  if (v8 != CFDataGetTypeID())
  {
    memset(&__p, 0, sizeof(__p));
    goto LABEL_36;
  }

  if (v3)
  {
    v9 = CFGetTypeID(v3);
    if (v9 == CFDataGetTypeID())
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  Length = CFDataGetLength(v10);
  if (Length)
  {
    v12 = Length;
    BytePtr = CFDataGetBytePtr(v10);
    v14 = BytePtr;
    if (v12 > 0x200)
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
      }

      else
      {
        __p = *a2;
      }

      v15 = 0;
      v20 = *(a2 + 24);
      v21 = 0;
      do
      {
        ctu::hex((v14 + v15), 0x200);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v16 = v15 + 512;
        v17 = v15 + 1024;
        v15 += 512;
      }

      while (v17 < v12);
      if (v12 <= v16)
      {
        goto LABEL_36;
      }

      ctu::hex((v14 + v16), &v12[-v16]);
      goto LABEL_15;
    }

    ctu::hex(BytePtr, v12);
LABEL_36:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_272106018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void anonymous namespace::LogContext::invokeCallback(uint64_t a1, std::string *__str, char a3)
{
  if (*(a1 + 32) != 1 || (a3 & 1) != 0)
  {
  }

  else
  {
    if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, size + 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = __str;
      }

      else
      {
        v7 = __str->__r_.__value_.__r.__words[0];
      }

      memmove(p_p, v7, size);
    }

    *(&p_p->__r_.__value_.__l.__data_ + size) = 44;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_272106224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *anonymous namespace::LogContext::LogContext(std::string *this, __int128 *a2, int a3, std::string::value_type a4)
{
  if (a3)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 1);
    }

    std::string::basic_string[abi:ne200100](this, v7 + 1);
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = this;
    }

    else
    {
      v8 = this->__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (*(a2 + 23) >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      memmove(v8, v9, v7);
    }

    *(&v8->__r_.__value_.__l.__data_ + v7) = 9;
  }

  else if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v10;
  }

  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__s.__data_[8] = a4;
  return this;
}

void anonymous namespace::printCFDictionaryKVPair(_anonymous_namespace_ *this, void *a2, __int128 *a3, void *a4)
{
  v10 = v9;
  if (isComplexOpaqueType || v9)
  {
    if (isComplexOpaqueType)
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "");
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v29, ": ");
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        v19 = v29.__r_.__value_.__r.__words[0];
LABEL_26:
        operator delete(v19);
      }
    }

    else
    {
      memset(&__str, 0, sizeof(__str));
      std::operator+<char>();
      v20 = std::string::append(&__p, ": ");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v19 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_26;
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (v10)
      {
        goto LABEL_29;
      }
    }

    else if (v10)
    {
LABEL_29:
      goto LABEL_44;
    }

    memset(&__str, 0, sizeof(__str));
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v23 = &v29;
    std::string::basic_string[abi:ne200100](&v29, size + 1);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v23 = v29.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      memmove(v23, p_str, size);
    }

    *(&v23->__r_.__value_.__l.__data_ + size) = 44;
    goto LABEL_42;
  }

  memset(&__str, 0, sizeof(__str));
  memset(&v29, 0, sizeof(v29));
  std::operator+<char>();
  v11 = std::string::append(&v25, ": ");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v29;
  }

  else
  {
    v13 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v29.__r_.__value_.__l.__size_;
  }

  v15 = std::string::append(&v26, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v27, ",");
  v18 = *&v17->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

LABEL_42:
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

LABEL_44:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_27210667C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::printCFArrayElement(_anonymous_namespace_ *this, std::string *a2, void *a3)
{
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v9 = *a2;
    }

    data = a2[1].__r_.__value_.__l.__data_;
    v11 = 1;
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v9.__r_.__value_.__l.__size_;
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, size + 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v9;
      }

      else
      {
        v7 = v9.__r_.__value_.__r.__words[0];
      }

      memmove(p_p, v7, size);
    }

    *(&p_p->__r_.__value_.__l.__data_ + size) = 44;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_272106890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::CFTypeRefToString(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    if (v3)
    {
      v5 = CFGetTypeID(v3);
      if (v5 == CFStringGetTypeID())
      {
        v6 = v3;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    return;
  }

  if (v4 == CFNumberGetTypeID())
  {
    if (v3)
    {
      v7 = CFGetTypeID(v3);
      if (v7 != CFNumberGetTypeID())
      {
        v3 = 0;
      }
    }

    valuePtr = 0;
    Type = CFNumberGetType(v3);
    if (CFNumberGetValue(v3, Type, &valuePtr))
    {
      std::to_string(&v17, valuePtr);
LABEL_30:
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v17;
      return;
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    if (v4 == CFBooleanGetTypeID())
    {
      if (v3)
      {
        v10 = CFGetTypeID(v3);
        if (v10 == CFBooleanGetTypeID())
        {
          v11 = v3;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v17.__r_.__value_.__s.__data_[0] = 0;
      ctu::cf::assign(&v17, v11, v9);
      v15 = asStringBool(v17.__r_.__value_.__s.__data_[0]);
      MEMORY[0x2743C29D0](a2, v15);
      return;
    }

    if (v4 != CFUUIDGetTypeID())
    {
      ctu::cf::show(&v17, v3, v12);
      goto LABEL_30;
    }

    if (v3)
    {
      v13 = CFGetTypeID(v3);
      if (v13 == CFUUIDGetTypeID())
      {
        v14 = v3;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = CFUUIDCreateString(0, v14);

    CFRelease(v16);
  }
}

void anonymous namespace::LogContext::printLine(uint64_t a1, std::string *__str)
{
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    for (i = 0; i < size; i += 512)
    {
      v6 = *(a1 + 24);
      std::string::basic_string(&v13, __str, i, 0x200uLL, &v16);
      v7 = *(a1 + 23);
      if (v7 >= 0)
      {
        v8 = a1;
      }

      else
      {
        v8 = *a1;
      }

      if (v7 >= 0)
      {
        v9 = *(a1 + 23);
      }

      else
      {
        v9 = *(a1 + 8);
      }

      v10 = std::string::insert(&v13, 0, v8, v9);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v15 = v10->__r_.__value_.__r.__words[2];
      *__p = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = *(v6 + 24);
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v12 + 48))(v12, __p);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_272106BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void anonymous namespace::CFStringRefToString(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  ctu::cf::assign();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 15) = 0;
  *(a2 + 23) = 0;
  v3 = *MEMORY[0x277D85DE8];
}

void sub_272106D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

id IMAP_DescriptionForMessageFlags(uint64_t a1)
{
  v2 = "read";
  if ((a1 & 1) == 0)
  {
    v2 = "unread";
  }

  v3 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithFormat:", @"0x%llx (%s"), a1, v2;
  v4 = v3;
  if ((a1 & 0x200000) != 0)
  {
    [v3 appendFormat:@", junk"];
    if ((a1 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a1 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }
  }

  else if ((a1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  [v4 appendFormat:@", not-junk"];
  if ((a1 & 2) == 0)
  {
LABEL_6:
    if ((a1 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v4 appendFormat:@", deleted"];
  if ((a1 & 4) == 0)
  {
LABEL_7:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v4 appendFormat:@", answered"];
  if ((a1 & 0x100) == 0)
  {
LABEL_8:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v4 appendFormat:@", forwarded"];
  if ((a1 & 0x200) == 0)
  {
LABEL_9:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v4 appendFormat:@", redirected"];
  if ((a1 & 0x10) == 0)
  {
LABEL_10:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v4 appendFormat:@", flagged"];
  if ((a1 & 0x1000000) == 0)
  {
LABEL_11:
    if ((a1 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v4 appendFormat:@", VIP"];
  if ((a1 & 8) == 0)
  {
LABEL_12:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v4 appendFormat:@", encrypted"];
  if ((a1 & 0x800000) == 0)
  {
LABEL_13:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v4 appendFormat:@", signed"];
  if ((a1 & 0x20) == 0)
  {
LABEL_14:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v4 appendFormat:@", recent"];
  if ((a1 & 0x40) == 0)
  {
LABEL_15:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v4 appendFormat:@", draft"];
  if ((a1 & 0x80) == 0)
  {
LABEL_16:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v4 appendFormat:@", server search result"];
  if ((a1 & 0x100000) == 0)
  {
LABEL_17:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_41:
  [v4 appendFormat:@", thread search result"];
  if ((a1 & 0x400000) != 0)
  {
LABEL_18:
    [v4 appendFormat:@", needs sync"];
  }

LABEL_19:
  if ((WORD1(a1) & 7) == 3)
  {
    if ((a1 & 0x400000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    [v4 appendFormat:@", priority=%x", WORD1(a1) & 7];
    if ((a1 & 0x400000000) == 0)
    {
LABEL_21:
      if ((a1 & 0x2000000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_45;
    }
  }

  [v4 appendFormat:@", partial"];
  if ((a1 & 0x2000000000) == 0)
  {
LABEL_22:
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v4 appendFormat:@", delivery"];
  if ((a1 & 0x100000000) == 0)
  {
LABEL_23:
    if ((a1 & 0x200000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_46:
  [v4 appendFormat:@", temp UID"];
  if ((a1 & 0x200000000) != 0)
  {
LABEL_24:
    [v4 appendString:{@", indexed message body"}];
  }

LABEL_25:
  [v4 appendFormat:@""]);

  return v4;
}

uint64_t _IMAPCompareMessage(uint64_t a1, int a2, int a3)
{
  v3 = (*(a1 + 188) & 1) - a3;
  if (!v3)
  {
    v3 = *(a1 + 240) - a2;
  }

  v4 = v3 < 0;
  v5 = v3 != 0;
  if (v4)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

void sub_272107AD8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);

    objc_end_catch();
    JUMPOUT(0x272107A98);
  }

  _Unwind_Resume(a1);
}

id _createStringFromData(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 bytes] + *a2;
  v5 = [v3 bytes];
  v6 = v5 + [v3 length];
  if (v4 >= v6)
  {
LABEL_5:
    v9 = [v3 length];
    v10 = 0;
  }

  else
  {
    v7 = 1;
    v8 = v4;
    while (*v8)
    {
      ++v8;
      ++v7;
      if (v8 >= v6)
      {
        goto LABEL_5;
      }
    }

    if (v8 <= v4)
    {
      v10 = 0;
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v4];
    }

    v9 = *a2 + v7;
  }

  *a2 = v9;

  return v10;
}

__CFArray *_createStringArrayFromData(void *a1, void *a2)
{
  v3 = a1;
  [v3 getBytes:&capacity range:{*a2, 4}];
  *a2 += 4;
  v4 = capacity;
  if (capacity)
  {
    if (capacity > 0x63)
    {
      Mutable = 0;
      *a2 = [v3 length];
    }

    else
    {
      Mutable = CFArrayCreateMutable(0, capacity, MEMORY[0x277CBF128]);
      do
      {
        v6 = _createStringFromData(v3, a2);
        if (v6)
        {
          CFArrayAppendValue(Mutable, v6);
        }

        --v4;
      }

      while (v4);
    }
  }

  else
  {
    Mutable = [MEMORY[0x277CBEA60] array];
  }

  return Mutable;
}

__CFArray *_createUidArrayFromData(void *a1, void *a2)
{
  v3 = a1;
  [v3 getBytes:&capacity range:{*a2, 4}];
  *a2 += 4;
  v4 = capacity;
  if (capacity < 1)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, capacity, 0);
    do
    {
      [v3 getBytes:&capacity_4 range:{*a2, 4}];
      *a2 += 4;
      if (capacity_4)
      {
        CFArrayAppendValue(Mutable, capacity_4);
      }

      --v4;
    }

    while (v4);
  }

  return Mutable;
}

void _serializeStringToData(void *a1, void *a2)
{
  v3 = a2;
  v5 = 0;
  v4 = [a1 UTF8String];
  if (v4)
  {
    [v3 appendBytes:v4 length:strlen(v4)];
  }

  [v3 appendBytes:&v5 length:1];
}

void _serializeStringArrayToData(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v15 = [v3 count];
  [v4 appendBytes:&v15 length:4];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        _serializeStringToData(*(*(&v11 + 1) + 8 * v9++), v4);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void _serializeUidArrayToData(const __CFArray *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
  }

  else
  {
    Count = 0;
  }

  v6 = Count;
  [v3 appendBytes:&v6 length:4];
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      [v3 appendBytes:&ValueAtIndex length:4];
    }
  }
}

__CFArray *_createUidArrayFromStringArray(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2 < 1)
  {
    Mutable = 0;
  }

  else
  {
    v3 = v2;
    Mutable = 0;
    v5 = 0;
    do
    {
      v6 = [v1 objectAtIndex:v5];
      v7 = [v6 intValue];

      if (v7)
      {
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(0, v3, 0);
        }

        CFArrayAppendValue(Mutable, v7);
      }

      ++v5;
      --v3;
    }

    while (v3);
  }

  return Mutable;
}

id _stringArrayFromUidArray(const __CFArray *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
        if (ValueAtIndex)
        {
          break;
        }

LABEL_9:
        ++v5;
        if (!--v3)
        {
          goto LABEL_14;
        }
      }

      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:__str length:snprintf(__str encoding:{0x20uLL, "%u", ValueAtIndex), 4}];
      v8 = v7;
      if (v4)
      {
        if (!v7)
        {
LABEL_8:

          goto LABEL_9;
        }
      }

      else
      {
        v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      [v4 addObject:v8];
      goto LABEL_8;
    }
  }

  v4 = 0;
LABEL_14:
  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

void __destructor_8_S_s0_s8_S_s32_S_s64(uint64_t a1)
{
  v2 = *(a1 + 64);
}

uint64_t initializeSharedInstance()
{
  _sharedInstance = objc_alloc_init(MFLibraryStore);

  return MEMORY[0x2821F96F8]();
}

id getLogger_0()
{
  if (getLogger_onceToken_0 != -1)
  {
    getLogger_cold_1_0();
  }

  v1 = getLogger_sLog_0;

  return v1;
}

id partDataFromFullBodyData(void *a1, uint64_t a2, void *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v11 = a3;
  v18 = 0;
  v12 = [a1 fullBodyDataForMessage:a2 andHeaderDataIfReadilyAvailable:0 isComplete:&v18 downloadIfNecessary:a5 usePartDatas:0 didDownload:a6];
  if (v12 && v18 == 1 && (v13 = [v11 range], v15 = v14, v13 + v14 <= objc_msgSend(v12, "length")))
  {
    v16 = [v12 mf_subdataWithRange:{v13, v15}];
    if (a4)
    {
      *a4 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __getLogger_block_invoke_0()
{
  getLogger_sLog_0 = os_log_create("com.apple.voicemail", "imap.lib.store");

  return MEMORY[0x2821F96F8]();
}

void sub_2721110A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2721116F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = IMAP_Account;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t _storeOnServerForTuple(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = v3;
    v8 = v5;
    v9 = [v7 _objectForAccountInfoKey:v8];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = NSBOOLFromString(v9);
LABEL_9:
        v6 = v10;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 BOOLValue];
        goto LABEL_9;
      }
    }

    else
    {
      _MFLockGlobalLock();
      v11 = [MEMORY[0x277CCABB0] numberWithBool:v6];
      [v7 setAccountProperty:v11 forKey:v8];

      _MFUnlockGlobalLock();
    }

LABEL_10:

    goto LABEL_11;
  }

  v6 = 1;
LABEL_11:

  return v6;
}

void sub_2721121FC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_272113AC8(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void _setSeparatorCharAndNamespace(IMAP_Account *a1, NSString *a2, NSString *a3)
{
  v17 = a1;
  v5 = a2;
  v6 = a3;
  _MFLockGlobalLock();
  if (!v5 || v17->_separatorChar && [(NSString *)v5 isEqualToString:?])
  {
    v7 = 0;
    if (!v6)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v8 = [(NSString *)v5 copyWithZone:0];
  separatorChar = v17->_separatorChar;
  v17->_separatorChar = v8;

  flags = v17->super._flags;
  if ((*&flags & 0x40000) == 0)
  {
    v17->super._flags = (*&flags & 0xFFFB0000 | (*&flags + 1));
  }

  v7 = 1;
  if (v6)
  {
LABEL_9:
    if (v17->_separatorChar && [(NSString *)v6 hasSuffix:?])
    {
      v11 = [(NSString *)v6 substringWithRange:0, [(NSString *)v6 length]- [(NSString *)v17->_separatorChar length]];

      v6 = v11;
    }

    if (![(NSString *)v6 isEqualToString:v17->_serverNamespace])
    {
      v12 = [(NSString *)v6 copyWithZone:0];
      serverNamespace = v17->_serverNamespace;
      v17->_serverNamespace = v12;

      v14 = v17->super._flags;
      if ((*&v14 & 0x40000) == 0)
      {
        v17->super._flags = (*&v14 & 0xFFFB0000 | (*&v14 + 1));
      }

      v7 = 1;
    }
  }

LABEL_16:
  _MFUnlockGlobalLock();
  if (v7)
  {
    v15 = [(MailAccount *)v17 allMailboxUids];
    [v15 makeObjectsPerformSelector:sel_flushCriteria];
  }

  v16 = [(IMAP_Account *)v17 serverPathPrefixAccountValue];
  if (v16)
  {
    [(IMAP_Account *)v17 setServerPathPrefix:v16 shouldSync:0];
  }
}

void sub_272115298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id _mailboxDictionaryWithName(NSArray *a1, NSString *a2, unint64_t *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [(NSArray *)v5 count];
  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      v9 = [(NSArray *)v5 objectAtIndex:i];
      v10 = [v9 objectForKey:@"MailboxName"];
      v11 = [v10 isEqual:v6];

      if (v11)
      {
        v12 = v9;
        if (a3)
        {
          *a3 = i;
        }
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        break;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t ___ZN12_GLOBAL__N_114staticLogger_t14getOsLogHandleEv_block_invoke_0()
{
  v0 = os_log_create("com.apple.voicemail", "acnt");

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_27211ADE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getLogger_1()
{
  if (getLogger_onceToken_1 != -1)
  {
    getLogger_cold_1_1();
  }

  v1 = getLogger_sLog_1;

  return v1;
}

void sub_27211C9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __getLogger_block_invoke_1()
{
  v0 = os_log_create("com.apple.voicemail", "imap.att");
  v1 = getLogger_sLog_1;
  getLogger_sLog_1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void MFRegisterContentProtectionObserver(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    MFRegisterContentProtectionObserver_cold_3();
  }

  if (!v4)
  {
    MFRegisterContentProtectionObserver_cold_2();
  }

  if (_observationQueue == v4)
  {
    MFRegisterContentProtectionObserver_cold_1();
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __MFRegisterContentProtectionObserver_block_invoke;
  v7[3] = &unk_279E346E0;
  v8 = v3;
  v9 = v4;
  v5 = v4;
  v6 = v3;
  _InitAndPerformSync(v7);
}

void _InitAndPerformSync(void *a1)
{
  v1 = _InitObservation_sOnceToken;
  v2 = a1;
  v4 = v2;
  if (v1 == -1)
  {
    v3 = v2;
  }

  else
  {
    _InitAndPerformSync_cold_1();
    v3 = v4;
  }

  dispatch_sync(_observationQueue, v3);
}

void __MFRegisterContentProtectionObserver_block_invoke(uint64_t a1)
{
  v2 = [[_MFContentProtectionObserverWrapper alloc] initWithObserver:*(a1 + 32) queue:*(a1 + 40)];
  Mutable = _observers;
  value = v2;
  if (!_observers)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    v2 = value;
    _observers = Mutable;
  }

  CFDictionaryAddValue(Mutable, *(a1 + 32), v2);
}

void MFUnregisterContentProtectionObserver(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    MFUnregisterContentProtectionObserver_cold_1();
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __MFUnregisterContentProtectionObserver_block_invoke;
  v3[3] = &unk_279E33588;
  v4 = v1;
  v2 = v1;
  _InitAndPerformSync(v3);
}

void __MFUnregisterContentProtectionObserver_block_invoke(uint64_t a1)
{
  if (_observers)
  {
    CFDictionaryRemoveValue(_observers, *(a1 + 32));
  }
}

uint64_t MFContentProtectionGetObservedState()
{
  if (_InitObservation_sOnceToken != -1)
  {
    _InitAndPerformSync_cold_1();
  }

  return _contentProtectionState;
}

BOOL MFProtectedDataAvailable()
{
  if (_InitObservation_sOnceToken != -1)
  {
    _InitAndPerformSync_cold_1();
  }

  return _contentProtectionState == 3 || _contentProtectionState == 0;
}

void MFContentProtectionSimulateState(int a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __MFContentProtectionSimulateState_block_invoke;
  v1[3] = &__block_descriptor_36_e5_v8__0l;
  v2 = a1;
  _InitAndPerformSync(v1);
}

void _NotifyObserversWithContentProtectionState(signed int a1)
{
  v29 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(_observationQueue);
  if (a1 == -1)
  {
    _NotifyObserversWithContentProtectionState_cold_2();
  }

  v2 = _contentProtectionState;
  if (_contentProtectionState == -1)
  {
    _NotifyObserversWithContentProtectionState_cold_1();
  }

  log = vm_imap_log();
  v3 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v2 == a1)
  {
    if (!v3)
    {
LABEL_38:

      goto LABEL_39;
    }

    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v4 = @"locking";
        goto LABEL_37;
      }

      if (a1 == 3)
      {
        v4 = @"disabled";
        goto LABEL_37;
      }
    }

    else
    {
      if (!a1)
      {
        v4 = @"unlocked";
        goto LABEL_37;
      }

      if (a1 == 1)
      {
        v4 = @"locked";
LABEL_37:
        *buf = 138412546;
        v26 = v4;
        v27 = 2112;
        v28 = v4;
        _os_log_impl(&dword_2720B1000, log, OS_LOG_TYPE_DEFAULT, "Ignoring lock state change from %@ to %@", buf, 0x16u);
        goto LABEL_38;
      }
    }

    v4 = @"unknown";
    goto LABEL_37;
  }

  if (v3)
  {
    if (v2 > 3)
    {
      v5 = @"unknown";
    }

    else
    {
      v5 = off_279E34F90[v2];
    }

    if (a1 > 3)
    {
      v6 = @"unknown";
    }

    else
    {
      v6 = off_279E34F90[a1];
    }

    *buf = 138412546;
    v26 = v5;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_2720B1000, log, OS_LOG_TYPE_DEFAULT, "Keybag transitioning from %@ to %@", buf, 0x16u);
  }

  if (a1 == 1 && !v2)
  {
    v7 = vm_imap_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2720B1000, v7, OS_LOG_TYPE_DEFAULT, "Brace for impact, keybag was locked without grace period!", buf, 2u);
    }
  }

  v8 = v2;
  atomic_compare_exchange_strong(&_contentProtectionState, &v8, a1);
  if (v8 == v2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    log = [_observers allValues];
    v9 = [log countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(log);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = ___NotifyObserversWithContentProtectionState_block_invoke;
          block[3] = &unk_279E34F70;
          block[4] = v13;
          v18 = a1;
          v19 = v2;
          dispatch_async(v14, block);
        }

        v10 = [log countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    goto LABEL_38;
  }

LABEL_39:
  v15 = *MEMORY[0x277D85DE8];
}

id MFContentProtectionDumpDiagnosticState()
{
  v0 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"\n==== MFContentProtectionObserver ====\n"];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __MFContentProtectionDumpDiagnosticState_block_invoke;
  v3[3] = &unk_279E33588;
  v1 = v0;
  v4 = v1;
  _InitAndPerformSync(v3);

  return v1;
}

void __MFContentProtectionDumpDiagnosticState_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((_contentProtectionState + 1) > 4)
  {
    v3 = @"unknown";
  }

  else
  {
    v3 = off_279E34FB0[_contentProtectionState + 1];
  }

  [v2 appendFormat:@"Recorded state: %@\n", v3];
  [*(a1 + 32) appendFormat:@"System state: %@\n", off_279E34FB0[_KeyBagLockState() + 1]];
  v4 = *(a1 + 32);
  v5 = MKBDeviceUnlockedSinceBoot();
  v6 = "YES";
  if (!v5)
  {
    v6 = "NO";
  }

  [v4 appendFormat:@"Unlocked since boot: %s\n", v6];
  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setTimeStyle:1];
  [v7 setDateStyle:2];
  if (*&_lastNotificationTime == 0.0)
  {
    v9 = @"never";
  }

  else
  {
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*&_lastNotificationTime];
    v9 = [v7 stringFromDate:v8];
  }

  if (*&_beganObservingTime == 0.0)
  {
    v11 = @"never";
  }

  else
  {
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*&_beganObservingTime];
    v11 = [v7 stringFromDate:v10];
  }

  [*(a1 + 32) appendFormat:@"Last lock_status notification: %@ (began observing %@)\n", v9, v11];
  if ([_observers count])
  {
    v24 = v11;
    v25 = v7;
    [*(a1 + 32) appendFormat:@"Observers:\n"];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = [_observers allValues];
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          v18 = [v17 observer];
          v19 = [v17 queue];
          v20 = *(a1 + 32);
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          [v20 appendFormat:@"\t<%@:%p> (%s)\n", v22, v18, dispatch_queue_get_label(v19)];
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    v7 = v25;
    v11 = v24;
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t _KeyBagLockState()
{
  LODWORD(result) = MKBGetDeviceLockState();
  if (result >= 4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}

id checkCertificateExpiration(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  SecCertificateNotValidBefore();
  v6 = v5;
  SecCertificateNotValidAfter();
  if (Current >= v6)
  {
    if (Current <= v7)
    {
      v15 = 0;
      goto LABEL_10;
    }

    v8 = @"The certificate for the address “%@” expired on %@.";
    v6 = v7;
  }

  else
  {
    v8 = @"The certificate for the address “%@” is not valid until %@.";
  }

  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
  if (!v9)
  {
    checkCertificateExpiration_cold_1();
  }

  v10 = v9;
  v11 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v11 setDateStyle:3];
  [v11 setTimeStyle:3];
  v12 = MEMORY[0x277CCACA8];
  v13 = [v11 stringFromDate:v10];
  v14 = [v12 stringWithFormat:v8, v3, v13];

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:v14];
  v16 = vm_imap_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v15 description];
    *buf = 138412802;
    v21 = a1;
    v22 = 2112;
    v23 = v3;
    v24 = 2114;
    v25 = v17;
    _os_log_impl(&dword_2720B1000, v16, OS_LOG_TYPE_DEFAULT, "#SMIMEErrors Certificate %@ for address %@ is not currently valid: %{public}@", buf, 0x20u);
  }

LABEL_10:
  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

void _IncrementThreadLocalCounterForKey(void *a1)
{
  v6 = a1;
  v1 = [MEMORY[0x277CCACC8] currentThread];
  v2 = [v1 threadDictionary];

  v3 = [v2 objectForKey:v6];
  v4 = v3;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _IncrementThreadLocalCounterForKey_cold_1();
    }

    v3 = [v4 unsignedIntegerValue];
    if (v3 == -1)
    {
      _IncrementThreadLocalCounterForKey_cold_2();
    }
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3 + 1];
  [v2 setObject:v5 forKey:v6];
}

void _DecrementThreadLocalCounterForKey(void *a1)
{
  v7 = a1;
  v1 = [MEMORY[0x277CCACC8] currentThread];
  v2 = [v1 threadDictionary];

  v3 = [v2 objectForKey:v7];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _DecrementThreadLocalCounterForKey_cold_1();
  }

  v5 = [v4 unsignedIntegerValue];
  if (v5 == 1)
  {
    [v2 removeObjectForKey:v7];
    goto LABEL_7;
  }

  if (!v5)
  {
LABEL_11:
    _DecrementThreadLocalCounterForKey_cold_2();
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5 - 1];
  [v2 setObject:v6 forKey:v7];

LABEL_7:
}