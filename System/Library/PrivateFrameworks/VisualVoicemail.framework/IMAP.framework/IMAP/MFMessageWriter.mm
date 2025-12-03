@interface MFMessageWriter
- (MFMessageWriter)initWithCompositionSpecification:(id)specification;
- (id)createMessageWithHtmlString:(id)string attachments:(id)attachments headers:(id)headers;
- (id)createMessageWithHtmlString:(id)string plainTextAlternative:(id)alternative otherHtmlStringsAndAttachments:(id)attachments charsets:(id)charsets headers:(id)headers;
- (id)createMessageWithPlainTextDocumentsAndAttachments:(id)attachments headers:(id)headers;
- (id)createMessageWithString:(id)string headers:(id)headers;
- (void)appendDataForMimePart:(id)part toData:(id)data withPartData:(id)partData;
- (void)dealloc;
- (void)setAllowsBinaryMimeParts:(BOOL)parts;
- (void)setAllowsQuotedPrintable:(BOOL)printable;
- (void)setMessageClassToInstantiate:(Class)instantiate;
- (void)setWriteSizeDispositionParameter:(BOOL)parameter;
@end

@implementation MFMessageWriter

- (MFMessageWriter)initWithCompositionSpecification:(id)specification
{
  specificationCopy = specification;
  v10.receiver = self;
  v10.super_class = MFMessageWriter;
  v5 = [(MFMessageWriter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(MFMessageWriter *)v5 setAllowsQuotedPrintable:1];
    v6->_messageClassToInstantiate = objc_opt_class();
    v7 = [specificationCopy copy];
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

- (void)appendDataForMimePart:(id)part toData:(id)data withPartData:(id)partData
{
  key = part;
  dataCopy = data;
  partDataCopy = partData;
  type = [key type];
  v11 = [@"multipart" isEqualToString:type];

  v12 = objc_alloc_init(MEMORY[0x277D24EE8]);
  if ((v11 & 1) != 0 || CFDictionaryGetValue(partDataCopy, key) || ([key range], !v14))
  {
    _appendPartDataToConsumer(self, key, v12, partDataCopy, 1);
  }

  else
  {
    [dataCopy setLength:{objc_msgSend(dataCopy, "length") - 1}];
    _appendPartHeadersToConsumer(self, key, partDataCopy, v12);
  }

  [v12 done];
  data = [v12 data];
  [dataCopy appendData:data];
}

- (id)createMessageWithString:(id)string headers:(id)headers
{
  v13 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  headersCopy = headers;
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  v9 = _createPartAndDataForString(self, stringCopy, 0, @"plain", Mutable);
  v10 = _createOutgoingMessageFromTopLevelMimePart(self, v9, headersCopy, Mutable);

  CFRelease(Mutable);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)createMessageWithPlainTextDocumentsAndAttachments:(id)attachments headers:(id)headers
{
  v35 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  headersCopy = headers;
  cf = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  v25 = attachmentsCopy;
  v27 = [attachmentsCopy count];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = attachmentsCopy;
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

      selfCopy = self;
      v16 = v12;
      if ([v16 isPlaceholder])
      {
        mimePart = [v16 mimePart];
        v18 = [mimePart fileWrapperForcingDownload:1];

        v19 = [v16 fileWrapperForcingDownload:0];
        contentID = [v19 contentID];
        [v18 setContentID:contentID];

        if (v18)
        {
          goto LABEL_13;
        }
      }

      v18 = [v16 fileWrapperForcingDownload:1];
      if (v18)
      {
LABEL_13:
        v14 = _createPartForFileWrapper(selfCopy, v18, cf);
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

  v22 = _createOutgoingMessageFromTopLevelMimePart(self, v8, headersCopy, cf);
LABEL_32:
  CFRelease(cf);

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)createMessageWithHtmlString:(id)string plainTextAlternative:(id)alternative otherHtmlStringsAndAttachments:(id)attachments charsets:(id)charsets headers:(id)headers
{
  v91 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  alternativeCopy = alternative;
  attachmentsCopy = attachments;
  charsetsCopy = charsets;
  headersCopy = headers;
  cf = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  v74 = stringCopy;
  if (stringCopy)
  {
    v15 = charsetsCopy;
    if ([charsetsCopy count])
    {
      v16 = [charsetsCopy objectAtIndex:0];
    }

    else
    {
      v16 = 0;
    }

    null = [MEMORY[0x277CBEB68] null];

    if (v16 == null)
    {

      v16 = 0;
    }

    v17 = _createPartAndDataForString(self, v74, v16, @"html", cf);
  }

  else
  {
    v17 = 0;
    v15 = charsetsCopy;
  }

  v73 = [attachmentsCopy count];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v19 = attachmentsCopy;
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
  v71 = alternativeCopy;
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
        alternativeCopy = v71;
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

        null2 = [MEMORY[0x277CBEB68] null];

        if (v28 == null2)
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
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          callStackReturnAddresses = [MEMORY[0x277CCACC8] callStackReturnAddresses];
          *buf = 138412802;
          v85 = v26;
          v86 = 2112;
          v87 = callStackSymbols;
          v88 = 2112;
          v89 = callStackReturnAddresses;
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
          callStackSymbols = v42;
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
    firstChildPart = [v75 firstChildPart];
    v66 = firstChildPart;
    alternativeCopy = v71;
    if (firstChildPart)
    {
      v67 = MEMORY[0x277CCACA8];
      type = [firstChildPart type];
      subtype = [v66 subtype];
      v70 = [v67 stringWithFormat:@"%@/%@", type, subtype];
      [v75 setBodyParameter:v70 forKey:@"type"];

      v15 = v77;
    }

    v23 = 0;
    v44 = 0;
    v45 = v75;
    goto LABEL_74;
  }

  v45 = v75;
  alternativeCopy = v71;
  if (v75)
  {
    goto LABEL_74;
  }

LABEL_73:
  v45 = v17;
LABEL_74:
  v46 = v45;
  if (alternativeCopy)
  {
    v47 = _createPlainTextPart(self, alternativeCopy, cf);
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
        lastObject = [v54 lastObject];
        [v54 removeLastObject];
        type2 = [lastObject type];
        v57 = [type2 isEqualToString:@"multipart"];

        if (v57)
        {
          subparts = [lastObject subparts];
          [v54 addObjectsFromArray:subparts];
        }

        else
        {
          disposition = [lastObject disposition];
          if ([disposition isEqualToString:@"attachment"])
          {

LABEL_90:
            [lastObject setContentID:0];
            goto LABEL_91;
          }

          disposition2 = [lastObject disposition];
          v61 = [disposition2 isEqualToString:@"inline"];

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
    v51 = headersCopy;
    v50 = _createOutgoingMessageFromTopLevelMimePart(self, v46, headersCopy, cf);
    if (cf)
    {
      goto LABEL_94;
    }

    goto LABEL_95;
  }

  v50 = 0;
  v51 = headersCopy;
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

- (id)createMessageWithHtmlString:(id)string attachments:(id)attachments headers:(id)headers
{
  v28 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  attachmentsCopy = attachments;
  headersCopy = headers;
  v21 = stringCopy;
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  v11 = _createPartAndDataForString(self, stringCopy, 0, @"html", Mutable);
  if ([attachmentsCopy count])
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D24F68]) init];
    [v12 setType:@"multipart"];
    [v12 setSubtype:@"mixed"];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = attachmentsCopy;
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
      v18 = _createOutgoingMessageFromTopLevelMimePart(self, v12, headersCopy, Mutable);
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

- (void)setAllowsBinaryMimeParts:(BOOL)parts
{
  if (parts)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFD | v3;
}

- (void)setAllowsQuotedPrintable:(BOOL)printable
{
  if (printable)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xF7 | v3;
}

- (void)setWriteSizeDispositionParameter:(BOOL)parameter
{
  if (parameter)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFB | v3;
}

- (void)setMessageClassToInstantiate:(Class)instantiate
{
  if (self->_messageClassToInstantiate != instantiate)
  {
    if (![(objc_class *)instantiate isSubclassOfClass:objc_opt_class()])
    {
      [MFMessageWriter setMessageClassToInstantiate:instantiate];
    }

    self->_messageClassToInstantiate = instantiate;
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