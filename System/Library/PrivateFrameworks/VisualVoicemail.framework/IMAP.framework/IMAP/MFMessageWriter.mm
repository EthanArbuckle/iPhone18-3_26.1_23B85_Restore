@interface MFMessageWriter
- (MFMessageWriter)initWithCompositionSpecification:(id)a3;
- (id)createMessageWithHtmlString:(id)a3 attachments:(id)a4 headers:(id)a5;
- (id)createMessageWithHtmlString:(id)a3 plainTextAlternative:(id)a4 otherHtmlStringsAndAttachments:(id)a5 charsets:(id)a6 headers:(id)a7;
- (id)createMessageWithPlainTextDocumentsAndAttachments:(id)a3 headers:(id)a4;
- (id)createMessageWithString:(id)a3 headers:(id)a4;
- (void)appendDataForMimePart:(id)a3 toData:(id)a4 withPartData:(id)a5;
- (void)dealloc;
- (void)setAllowsBinaryMimeParts:(BOOL)a3;
- (void)setAllowsQuotedPrintable:(BOOL)a3;
- (void)setMessageClassToInstantiate:(Class)a3;
- (void)setWriteSizeDispositionParameter:(BOOL)a3;
@end

@implementation MFMessageWriter

- (MFMessageWriter)initWithCompositionSpecification:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MFMessageWriter;
  v5 = [(MFMessageWriter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(MFMessageWriter *)v5 setAllowsQuotedPrintable:1];
    v6->_messageClassToInstantiate = objc_opt_class();
    v7 = [v4 copy];
    compositionSpecification = v6->_compositionSpecification;
    v6->_compositionSpecification = v7;
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFMessageWriter;
  [(MFMessageWriter *)&v2 dealloc];
}

- (void)appendDataForMimePart:(id)a3 toData:(id)a4 withPartData:(id)a5
{
  key = a3;
  v8 = a4;
  v9 = a5;
  v10 = [key type];
  v11 = [@"multipart" isEqualToString:v10];

  v12 = objc_alloc_init(MEMORY[0x277D24EE8]);
  if ((v11 & 1) != 0 || CFDictionaryGetValue(v9, key) || ([key range], !v14))
  {
    _appendPartDataToConsumer(self, key, v12, v9, 1);
  }

  else
  {
    [v8 setLength:{objc_msgSend(v8, "length") - 1}];
    _appendPartHeadersToConsumer(self, key, v9, v12);
  }

  [v12 done];
  v13 = [v12 data];
  [v8 appendData:v13];
}

- (id)createMessageWithString:(id)a3 headers:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  v9 = _createPartAndDataForString(self, v6, 0, @"plain", Mutable);
  v10 = _createOutgoingMessageFromTopLevelMimePart(self, v9, v7, Mutable);

  CFRelease(Mutable);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)createMessageWithPlainTextDocumentsAndAttachments:(id)a3 headers:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v26 = a4;
  cf = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  v25 = v6;
  v27 = [v6 count];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v7)
  {

    v8 = 0;
    goto LABEL_31;
  }

  v8 = 0;
  v9 = *v31;
  do
  {
    v10 = 0;
    v11 = v8;
    do
    {
      if (*v31 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v30 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = _createPlainTextPart(self, v12, cf);
LABEL_8:
        v14 = v13;
        goto LABEL_18;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_21;
        }

        v13 = _createPartForMFAttachment(self, v12, 0, cf);
        goto LABEL_8;
      }

      v15 = self;
      v16 = v12;
      if ([v16 isPlaceholder])
      {
        v17 = [v16 mimePart];
        v18 = [v17 fileWrapperForcingDownload:1];

        v19 = [v16 fileWrapperForcingDownload:0];
        v20 = [v19 contentID];
        [v18 setContentID:v20];

        if (v18)
        {
          goto LABEL_13;
        }
      }

      v18 = [v16 fileWrapperForcingDownload:1];
      if (v18)
      {
LABEL_13:
        v14 = _createPartForFileWrapper(v15, v18, cf);
      }

      else
      {
        v14 = 0;
      }

LABEL_18:
      if (!v14)
      {
LABEL_21:

        v14 = 0;
        v8 = 0;
        goto LABEL_22;
      }

      if (v11)
      {
        [v11 addSubpart:v14];
        v8 = v11;
      }

      else if (v27 < 2)
      {
        v14 = v14;
        v8 = v14;
      }

      else
      {
        v8 = objc_alloc_init(MEMORY[0x277D24F68]);
        [v8 setType:@"multipart"];
        [v8 setSubtype:@"mixed"];
        [v8 addSubpart:v14];
      }

LABEL_22:

      ++v10;
      v11 = v8;
    }

    while (v7 != v10);
    v21 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    v7 = v21;
  }

  while (v21);

  if (!v8)
  {
LABEL_31:
    v22 = 0;
    goto LABEL_32;
  }

  v22 = _createOutgoingMessageFromTopLevelMimePart(self, v8, v26, cf);
LABEL_32:
  CFRelease(cf);

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)createMessageWithHtmlString:(id)a3 plainTextAlternative:(id)a4 otherHtmlStringsAndAttachments:(id)a5 charsets:(id)a6 headers:(id)a7
{
  v91 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v72 = a7;
  cf = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  v74 = v11;
  if (v11)
  {
    v15 = v14;
    if ([v14 count])
    {
      v16 = [v14 objectAtIndex:0];
    }

    else
    {
      v16 = 0;
    }

    v18 = [MEMORY[0x277CBEB68] null];

    if (v16 == v18)
    {

      v16 = 0;
    }

    v17 = _createPartAndDataForString(self, v74, v16, @"html", cf);
  }

  else
  {
    v17 = 0;
    v15 = v14;
  }

  v73 = [v13 count];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v19 = v13;
  v20 = [v19 countByEnumeratingWithState:&v80 objects:v90 count:16];
  obj = v19;
  v77 = v15;
  if (!v20)
  {

    v23 = 0;
    v75 = 0;
    v44 = 1;
    goto LABEL_73;
  }

  v21 = v20;
  v71 = v12;
  v22 = 0;
  v23 = 0;
  v75 = 0;
  v24 = *v81;
  while (2)
  {
    v25 = 0;
    do
    {
      if (*v81 != v24)
      {
        objc_enumerationMutation(obj);
      }

      if (v23)
      {

        v44 = v75 == 0;
        v23 = 1;
        v45 = v75;
        v12 = v71;
        if (v75)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      v26 = *(*(&v80 + 1) + 8 * v25);
      ++v22;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
        if (v22 >= [v15 count])
        {
          v28 = 0;
        }

        else
        {
          v28 = [v15 objectAtIndex:v22];
        }

        v32 = [MEMORY[0x277CBEB68] null];

        if (v28 == v32)
        {

          v28 = 0;
        }

        v33 = _createPartAndDataForString(self, v27, v28, @"html", cf);
        v29 = v33;
        if (v27)
        {
          v34 = v33 == 0;
        }

        else
        {
          v34 = 0;
        }

        v23 = v34;

        v15 = v77;
        if (!v29)
        {
          goto LABEL_63;
        }

        goto LABEL_31;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = vm_imap_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [MEMORY[0x277CCACC8] callStackSymbols];
          v31 = [MEMORY[0x277CCACC8] callStackReturnAddresses];
          *buf = 138412802;
          v85 = v26;
          v86 = 2112;
          v87 = v30;
          v88 = 2112;
          v89 = v31;
          _os_log_impl(&dword_2720B1000, v29, OS_LOG_TYPE_DEFAULT, "*** BAD!!! Used old attachments for %@\n\n%@\n\n%@", buf, 0x20u);

LABEL_60:
          v15 = v77;
          goto LABEL_61;
        }

        goto LABEL_61;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = vm_imap_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v42 = objc_opt_class();
          *buf = 138412546;
          v85 = v42;
          v86 = 2048;
          v87 = v26;
          v30 = v42;
          _os_log_impl(&dword_2720B1000, v29, OS_LOG_TYPE_DEFAULT, "*** Unexpected object <%@:%p>", buf, 0x16u);
          goto LABEL_60;
        }

LABEL_61:
        v23 = 0;
        goto LABEL_62;
      }

      if (v74)
      {
        v37 = v17 == 0;
      }

      else
      {
        v37 = 1;
      }

      v38 = !v37;
      if (v75)
      {
        v39 = 1;
      }

      else
      {
        v39 = v38;
      }

      v40 = _createPartForMFAttachment(self, v26, v39, cf);
      v29 = v40;
      if (v26)
      {
        v41 = v40 == 0;
      }

      else
      {
        v41 = 0;
      }

      v23 = v41;
      if (!v40)
      {
        goto LABEL_63;
      }

LABEL_31:
      if (v17)
      {
        if (v74)
        {
          v35 = v75;
          if (!v75)
          {
            v36 = objc_alloc_init(MEMORY[0x277D24F68]);
            [v36 setType:@"multipart"];
            [v36 setSubtype:@"related"];
            [v36 addSubpart:v17];
            v35 = v36;
          }

          v75 = v35;
          goto LABEL_57;
        }

LABEL_56:
        v35 = v17;
LABEL_57:
        [v35 addSubpart:v29];
LABEL_62:

        goto LABEL_63;
      }

      if (v73 >= 2)
      {
        v17 = objc_alloc_init(MEMORY[0x277D24F68]);
        [v17 setType:@"multipart"];
        [v17 setSubtype:@"mixed"];
        goto LABEL_56;
      }

      v17 = v29;
LABEL_63:
      ++v25;
    }

    while (v21 != v25);
    v43 = [obj countByEnumeratingWithState:&v80 objects:v90 count:16];
    v21 = v43;
    if (v43)
    {
      continue;
    }

    break;
  }

  v44 = v75 == 0;
  if (!(v44 | v23 & 1))
  {
    v65 = [v75 firstChildPart];
    v66 = v65;
    v12 = v71;
    if (v65)
    {
      v67 = MEMORY[0x277CCACA8];
      v68 = [v65 type];
      v69 = [v66 subtype];
      v70 = [v67 stringWithFormat:@"%@/%@", v68, v69];
      [v75 setBodyParameter:v70 forKey:@"type"];

      v15 = v77;
    }

    v23 = 0;
    v44 = 0;
    v45 = v75;
    goto LABEL_74;
  }

  v45 = v75;
  v12 = v71;
  if (v75)
  {
    goto LABEL_74;
  }

LABEL_73:
  v45 = v17;
LABEL_74:
  v46 = v45;
  if (v12)
  {
    v47 = _createPlainTextPart(self, v12, cf);
    v48 = v47;
    if (!((v47 == 0) | v23 & 1))
    {
      if (v46)
      {
        v49 = objc_alloc_init(MEMORY[0x277D24F68]);
        [v49 setType:@"multipart"];
        [v49 setSubtype:@"alternative"];
        [v49 addSubpart:v48];
        [v49 addSubpart:v46];

        v46 = v49;
      }

      else
      {
        v48 = v47;
        v46 = v48;
      }
    }
  }

  else
  {
    v48 = 0;
  }

  if (!((v46 == 0) | v23 & 1))
  {
    if (v44)
    {
      v53 = v48;
      v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v54 addObject:v46];
      while ([v54 count])
      {
        v55 = [v54 lastObject];
        [v54 removeLastObject];
        v56 = [v55 type];
        v57 = [v56 isEqualToString:@"multipart"];

        if (v57)
        {
          v58 = [v55 subparts];
          [v54 addObjectsFromArray:v58];
        }

        else
        {
          v59 = [v55 disposition];
          if ([v59 isEqualToString:@"attachment"])
          {

LABEL_90:
            [v55 setContentID:0];
            goto LABEL_91;
          }

          v60 = [v55 disposition];
          v61 = [v60 isEqualToString:@"inline"];

          if (v61)
          {
            goto LABEL_90;
          }
        }

LABEL_91:
      }

      v15 = v77;
      v48 = v53;
    }

    v52 = cf;
    v51 = v72;
    v50 = _createOutgoingMessageFromTopLevelMimePart(self, v46, v72, cf);
    if (cf)
    {
      goto LABEL_94;
    }

    goto LABEL_95;
  }

  v50 = 0;
  v51 = v72;
  v52 = cf;
  if (!cf)
  {
    goto LABEL_95;
  }

LABEL_94:
  CFRelease(v52);
LABEL_95:
  v62 = v50;

  v63 = *MEMORY[0x277D85DE8];
  return v62;
}

- (id)createMessageWithHtmlString:(id)a3 attachments:(id)a4 headers:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v22 = a5;
  v21 = v8;
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  v11 = _createPartAndDataForString(self, v8, 0, @"html", Mutable);
  if ([v9 count])
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D24F68]) init];
    [v12 setType:@"multipart"];
    [v12 setSubtype:@"mixed"];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = _createPartForFileWrapper(self, *(*(&v23 + 1) + 8 * i), Mutable);
          if (v17)
          {
            [v12 addSubpart:v17];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    [v12 addSubpart:v11];
    if (v12)
    {
LABEL_12:
      v18 = _createOutgoingMessageFromTopLevelMimePart(self, v12, v22, Mutable);
      if (!Mutable)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v12 = v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  v18 = 0;
  if (Mutable)
  {
LABEL_16:
    CFRelease(Mutable);
  }

LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)setAllowsBinaryMimeParts:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFD | v3;
}

- (void)setAllowsQuotedPrintable:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xF7 | v3;
}

- (void)setWriteSizeDispositionParameter:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFB | v3;
}

- (void)setMessageClassToInstantiate:(Class)a3
{
  if (self->_messageClassToInstantiate != a3)
  {
    if (![(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
    {
      [MFMessageWriter setMessageClassToInstantiate:a3];
    }

    self->_messageClassToInstantiate = a3;
  }
}

- (void)setMessageClassToInstantiate:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = vm_imap_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&dword_2720B1000, v2, OS_LOG_TYPE_DEFAULT, "Must be called with a subclass of MFOutgoingMessage.  You provided %@", &v3, 0xCu);
  }

  __assert_rtn("[MFMessageWriter setMessageClassToInstantiate:]", "MessageWriter.m", 1434, "0");
}

@end