@interface TSWPHyperlinkField
+ (BOOL)schemeIsValidForURL:(id)l;
+ (BOOL)schemeIsValidForURLReference:(id)reference;
+ (id)defaultFileURL;
+ (id)invalidURLSchemes;
+ (id)newURLFromURLReference:(id)reference;
+ (int64_t)schemeFromURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (NSString)displayText;
- (NSString)filePath;
- (NSString)fullPath;
- (NSString)urlPrefix;
- (NSURL)url;
- (NSURL)urlOriginal;
- (TSWPHyperlinkField)initWithContext:(id)context url:(id)url;
- (TSWPHyperlinkField)initWithContext:(id)context url:(id)url urlOriginal:(id)original;
- (TSWPSelection)highlightSelection;
- (id)copyWithContext:(id)context;
- (int64_t)scheme;
- (unint64_t)hash;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_performHyperlinkSelector:(SEL)selector onStorage:(id)storage;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)saveToHyperlinkArchive:(id)archive;
- (void)saveToUnsupportedHyperlinkArchive:(id)archive;
- (void)setURL:(id)l;
- (void)setURLOriginal:(id)original;
- (void)setUrlOriginalString:(id)string;
- (void)setUrlString:(id)string;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root storage:(id)storage;
@end

@implementation TSWPHyperlinkField

- (TSWPSelection)highlightSelection
{
  v3 = objc_msgSend_range(self, a2, v2);

  return objc_msgSend_selectionWithRange_(TSWPSelection, v4, &v4[v3], 0);
}

- (void)setUrlString:(id)string
{
  stringCopy = string;
  if (self->_urlString != stringCopy)
  {
    v9 = stringCopy;
    objc_msgSend_willModify(self, stringCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_urlString, v8);
    stringCopy = v8;
  }
}

- (void)setUrlOriginalString:(id)string
{
  stringCopy = string;
  if (self->_urlOriginalString != stringCopy)
  {
    v9 = stringCopy;
    objc_msgSend_willModify(self, stringCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_urlOriginalString, v8);
    stringCopy = v8;
  }
}

- (NSString)displayText
{
  v4 = objc_msgSend_parentStorage(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_parentStorage(self, v5, v6);
    v10 = objc_msgSend_range(self, v8, v9);
    v12 = objc_msgSend_stringEquivalentFromRange_(v7, v11, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (int64_t)schemeFromURL:(id)l
{
  lCopy = l;
  v6 = lCopy;
  if (lCopy)
  {
    v7 = objc_msgSend_scheme(lCopy, v4, v5);
    v10 = objc_msgSend_lowercaseString(v7, v8, v9);

    if (v10)
    {
      if (objc_msgSend_isEqualToString_(v10, v11, @"http") & 1) != 0 || (objc_msgSend_isEqualToString_(v10, v13, @"https"))
      {
        v15 = 0;
      }

      else if (objc_msgSend_isEqualToString_(v10, v14, @"file") & 1) != 0 || (objc_msgSend_isEqualToString_(v10, v31, @"keynote"))
      {
        v15 = 1;
      }

      else if (objc_msgSend_isEqualToString_(v10, v32, @"mailto"))
      {
        v15 = 2;
      }

      else if (objc_msgSend_isEqualToString_(v10, v34, @"tel"))
      {
        v15 = 3;
      }

      else if (objc_msgSend_isEqualToString_(v10, v35, @"pages"))
      {
        v15 = 5;
      }

      else if (objc_msgSend_isEqualToString_(v10, v36, @"rdar"))
      {
        v15 = 8;
      }

      else
      {
        v15 = 11;
      }
    }

    else
    {
      v16 = objc_msgSend_absoluteString(v6, v11, v12);
      v18 = v16;
      if (v16)
      {
        v19 = objc_msgSend_rangeOfString_(v16, v17, @"#");
        v21 = objc_msgSend_rangeOfString_(v18, v20, @"?slide");
        hasPrefix = objc_msgSend_hasPrefix_(v18, v22, @"?sectionid=");
        v25 = objc_msgSend_rangeOfString_(v18, v24, @"?sheetid=");
        v27 = objc_msgSend_rangeOfString_(v18, v26, @"?action=retreat");
        v29 = objc_msgSend_rangeOfString_(v18, v28, @"?action=exitpresentation");
        v30 = 11;
        if (!v19)
        {
          v30 = 4;
        }

        if (!v21)
        {
          v30 = 6;
        }

        if (hasPrefix)
        {
          v30 = 9;
        }

        if (!v25)
        {
          v30 = 10;
        }

        if (!v27)
        {
          v30 = 6;
        }

        if (v29)
        {
          v15 = v30;
        }

        else
        {
          v15 = 7;
        }
      }

      else
      {
        v15 = 11;
      }
    }
  }

  else
  {
    v15 = 11;
  }

  return v15;
}

+ (id)invalidURLSchemes
{
  if (qword_280A58448 != -1)
  {
    sub_276F4F6D4();
  }

  v3 = qword_280A58440;

  return v3;
}

+ (BOOL)schemeIsValidForURL:(id)l
{
  lCopy = l;
  v6 = objc_msgSend_invalidURLSchemes(TSWPHyperlinkField, v4, v5);
  v9 = objc_msgSend_scheme(lCopy, v7, v8);
  v12 = objc_msgSend_lowercaseString(v9, v10, v11);

  if (v12)
  {
    v14 = objc_msgSend_member_(v6, v13, v12);
    v15 = v14 == 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (BOOL)schemeIsValidForURLReference:(id)reference
{
  referenceCopy = reference;
  v4 = objc_alloc(MEMORY[0x277CBEBC0]);
  v6 = objc_msgSend_initWithString_(v4, v5, referenceCopy);
  if (v6)
  {
    v7 = objc_opt_class();
    IsValidForURL = objc_msgSend_schemeIsValidForURL_(v7, v8, v6);
  }

  else
  {
    IsValidForURL = 0;
  }

  return IsValidForURL;
}

+ (id)defaultFileURL
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"DefaultFileURL");

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend_length(v5, v6, v7))
  {
    v9 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], v8, v5);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)newURLFromURLReference:(id)reference
{
  referenceCopy = reference;
  if (!referenceCopy)
  {
    goto LABEL_5;
  }

  v4 = objc_alloc(MEMORY[0x277CBEBC0]);
  v7 = objc_msgSend_initWithString_(v4, v5, referenceCopy);
  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSWPHyperlinkField newURLFromURLReference:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPHyperlinkField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 202, 0, "Failed to create an NSURL from %@", referenceCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    if (objc_msgSend_hasPrefix_(referenceCopy, v15, @"mailto:"))
    {
      v18 = objc_msgSend_sharedDelegate(MEMORY[0x277D80610], v16, v17);
      v7 = objc_msgSend_defaultEmailHyperlinkURL(v18, v19, v20);

      goto LABEL_6;
    }

LABEL_5:
    v7 = 0;
  }

LABEL_6:

  return v7;
}

- (TSWPHyperlinkField)initWithContext:(id)context url:(id)url
{
  contextCopy = context;
  urlCopy = url;
  v14.receiver = self;
  v14.super_class = TSWPHyperlinkField;
  v10 = [(TSWPSmartField *)&v14 initWithContext:contextCopy];
  if (v10)
  {
    v11 = objc_msgSend_absoluteString(urlCopy, v8, v9);
    objc_msgSend_setUrlString_(v10, v12, v11);
  }

  return v10;
}

- (TSWPHyperlinkField)initWithContext:(id)context url:(id)url urlOriginal:(id)original
{
  contextCopy = context;
  urlCopy = url;
  originalCopy = original;
  v14 = objc_msgSend_initWithContext_url_(self, v11, contextCopy, urlCopy);
  if (v14)
  {
    v15 = objc_msgSend_absoluteString(originalCopy, v12, v13);
    objc_msgSend_setUrlOriginalString_(v14, v16, v15);
  }

  return v14;
}

- (id)copyWithContext:(id)context
{
  v8.receiver = self;
  v8.super_class = TSWPHyperlinkField;
  v4 = [(TSWPSmartField *)&v8 copyWithContext:context];
  objc_msgSend_setUrlString_(v4, v5, self->_urlString);
  objc_msgSend_setUrlOriginalString_(v4, v6, self->_urlOriginalString);
  return v4;
}

- (NSURL)url
{
  v5 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], a2, self->_urlString);
  if (!v5)
  {
    v6 = objc_msgSend_range(self, v3, v4);
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v6;
      v10 = v7;
      v11 = objc_msgSend_parentStorage(self, v7, v8);
      v14 = objc_msgSend_length(v11, v12, v13);

      if (v9 >= v14 || &v10[v9] > v14)
      {
        v23 = MEMORY[0x277D81150];
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSWPHyperlinkField url]");
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPHyperlinkField.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 256, 0, "bad field range past end of storage");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
      }

      else if (v10)
      {
        v16 = objc_opt_class();
        v19 = objc_msgSend_parentStorage(self, v17, v18);
        v21 = objc_msgSend_substringWithRange_(v19, v20, v9, v10);
        v5 = objc_msgSend_newURLFromURLReference_(v16, v22, v21);

        goto LABEL_9;
      }
    }

    v5 = 0;
  }

LABEL_9:

  return v5;
}

- (void)setURL:(id)l
{
  v5 = objc_msgSend_absoluteString(l, a2, l);
  objc_msgSend_setUrlString_(self, v4, v5);
}

- (NSURL)urlOriginal
{
  v5 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], a2, self->_urlOriginalString);
  if (!v5)
  {
    v6 = objc_msgSend_range(self, v3, v4);
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      v8 = v6;
      v9 = v7;
      v10 = objc_opt_class();
      v13 = objc_msgSend_parentStorage(self, v11, v12);
      v15 = objc_msgSend_substringWithRange_(v13, v14, v8, v9);
      v5 = objc_msgSend_newURLFromURLReference_(v10, v16, v15);
    }
  }

  return v5;
}

- (void)setURLOriginal:(id)original
{
  v5 = objc_msgSend_absoluteString(original, a2, original);
  objc_msgSend_setUrlOriginalString_(self, v4, v5);
}

- (int64_t)scheme
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_url(self, v4, v5);
  v8 = objc_msgSend_schemeFromURL_(v3, v7, v6);

  return v8;
}

- (NSString)urlPrefix
{
  v2 = self->_urlString;
  v5 = v2;
  if (!v2 || ((v6 = objc_msgSend_length(v2, v3, v4), IndexOfCharacter_range = objc_msgSend_tswp_findIndexOfCharacter_range_(v5, v7, 58, 0, v6), (v10 = IndexOfCharacter_range) != 0) ? (v11 = IndexOfCharacter_range == 0x7FFFFFFFFFFFFFFFLL) : (v11 = 1), v11 || (v14 = objc_msgSend_tswp_findIndexOfCharacter_range_(v5, v9, 47, 0, v6), v10 >= v14 || v10 >= objc_msgSend_tswp_findIndexOfCharacter_range_(v5, v15, 63, 0, v6) || v10 >= objc_msgSend_tswp_findIndexOfCharacter_range_(v5, v16, 35, 0, v6))))
  {
    v12 = &stru_28860A0F0;
  }

  else
  {
    v12 = objc_msgSend_substringWithRange_(v5, v17, 0, v10);
  }

  return v12;
}

- (NSString)filePath
{
  v3 = objc_msgSend_url(self, a2, v2);
  if (objc_msgSend_isFileURL(v3, v4, v5))
  {
    v6 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)fullPath
{
  v3 = objc_msgSend_filePath(self, a2, v2);
  v6 = v3;
  if (v3 && (objc_msgSend_isAbsolutePath(v3, v4, v5) & 1) == 0)
  {
    v9 = objc_msgSend_stringByExpandingTildeInPath(@"~", v7, v8);
    v11 = v9;
    if (v9)
    {
      v12 = objc_msgSend_stringByAppendingPathComponent_(v9, v10, v6);

      v6 = v12;
    }
  }

  return v6;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPHyperlinkField saveToArchive:archiver:]", archiver);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPHyperlinkField.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 338, 0, "Don't subclass TSWPHyperlinkField. TSWPUnsupportedHyperlinkField shim in saveToArchiver:");

  v11 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v11, v9, v10);
}

- (void)saveToUnsupportedHyperlinkArchive:(id)archive
{
  v22 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiveCopy, v5, sub_276DEFF0C, off_2812DC408[142]);

  *(v6 + 16) |= 4u;
  v7 = *(v6 + 40);
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PlaceholderSmartFieldArchive>(v8);
    *(v6 + 40) = v7;
  }

  *(v7 + 16) |= 2u;
  v9 = *(v7 + 32);
  if (!v9)
  {
    v10 = *(v7 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v10);
    *(v7 + 32) = v9;
  }

  v16.receiver = self;
  v16.super_class = TSWPHyperlinkField;
  [(TSWPSmartField *)&v16 saveToArchive:v9 archiver:archiveCopy];
  v11 = self->_urlString;
  if (v11)
  {
    sub_276D9F478(v19, v11);
    v12 = __s;
    *(v6 + 16) |= 1u;
    sub_276DA9454(__p, v12);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v20)
    {
      free(v20);
    }
  }

  v14 = self->_urlOriginalString;
  if (v14)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiveCopy, v13, 3, v6);
    sub_276D9F478(v19, v14);
    v15 = __s;
    *(v6 + 16) |= 2u;
    sub_276DA9454(__p, v15);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v20)
    {
      free(v20);
    }
  }
}

- (void)saveToHyperlinkArchive:(id)archive
{
  v25 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiveCopy, v5, sub_276DEFF78, off_2812DC408[138]);

  *(v6 + 16) |= 2u;
  v7 = *(v6 + 32);
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v8);
    *(v6 + 32) = v7;
  }

  v19.receiver = self;
  v19.super_class = TSWPHyperlinkField;
  [(TSWPSmartField *)&v19 saveToArchive:v7 archiver:archiveCopy];
  v9 = self->_urlString;
  if (v9)
  {
    sub_276D9F478(v22, v9);
    v10 = __s;
    *(v6 + 16) |= 1u;
    sub_276DA9454(&__p, v10);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v21 < 0)
    {
      operator delete(__p);
    }

    if (v23)
    {
      free(v23);
    }
  }

  if (self->_urlOriginalString)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPHyperlinkField saveToHyperlinkArchive:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPHyperlinkField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 365, 0, "_urlOriginalString should only be assigned for unsupported bookmark hyperlinks.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  v6 = objc_msgSend_scheme(self, v4, v5);
  switch(v6)
  {
    case 4:
      goto LABEL_6;
    case 9:
      objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(archiverCopy, v7, *MEMORY[0x277D80968], *MEMORY[0x277D809B0], @"TPLinkToPage");
      goto LABEL_6;
    case 10:
      objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(archiverCopy, v7, *MEMORY[0x277D80968], *MEMORY[0x277D809B0], @"TNLinkToSheet");
LABEL_6:
      objc_msgSend_saveToUnsupportedHyperlinkArchive_(self, v7, archiverCopy);
      goto LABEL_8;
  }

  objc_msgSend_saveToHyperlinkArchive_(self, v7, archiverCopy);
LABEL_8:
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 4))
  {
    v7 = *(archive + 4);
  }

  else
  {
    v7 = &TSWP::_SmartFieldArchive_default_instance_;
  }

  v11.receiver = self;
  v11.super_class = TSWPHyperlinkField;
  [(TSWPSmartField *)&v11 loadFromArchive:v7 unarchiver:unarchiverCopy];
  if (*(archive + 16))
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_tsp_initWithProtobufString_(v8, v9, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
    if (v10)
    {
      objc_storeStrong(&self->_urlString, v10);
    }
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = objc_msgSend_messageType(unarchiverCopy, v5, v6);
  if (v7 == 2039)
  {
    v8 = unarchiverCopy;
    google::protobuf::internal::AssignDescriptors();
    v10 = objc_msgSend_messageWithDescriptor_(v8, v9, off_2812DC408[142]);

    v11 = *(v10 + 40);
    if (!v11)
    {
      v11 = &TSWP::_PlaceholderSmartFieldArchive_default_instance_;
    }

    v12 = v11[4];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = &TSWP::_SmartFieldArchive_default_instance_;
    }

    v25.receiver = self;
    v25.super_class = TSWPHyperlinkField;
    [(TSWPSmartField *)&v25 loadFromArchive:v13 unarchiver:v8];
    v14 = *(v10 + 16);
    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      v17 = objc_msgSend_tsp_initWithProtobufString_(v15, v16, *(v10 + 24) & 0xFFFFFFFFFFFFFFFELL);
      if (v17)
      {
        objc_storeStrong(&self->_urlString, v17);
      }

      v14 = *(v10 + 16);
    }

    if ((v14 & 2) != 0)
    {
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v20 = objc_msgSend_tsp_initWithProtobufString_(v18, v19, *(v10 + 32) & 0xFFFFFFFFFFFFFFFELL);
      if (v20)
      {
        objc_storeStrong(&self->_urlOriginalString, v20);
      }
    }
  }

  else if (v7 == 2032)
  {
    v21 = unarchiverCopy;
    google::protobuf::internal::AssignDescriptors();
    v23 = objc_msgSend_messageWithDescriptor_(v21, v22, off_2812DC408[138]);

    objc_msgSend_loadFromArchive_unarchiver_(self, v24, v23, v21);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    if (!v6 || !objc_msgSend_isEqual_(self->_urlString, v5, v6[11]))
    {
      isEqual = 0;
LABEL_13:

      goto LABEL_14;
    }

    v9 = objc_msgSend_displayText(self, v7, v8);
    v12 = objc_msgSend_displayText(v6, v10, v11);
    if (!objc_msgSend_isEqual_(v9, v13, v12))
    {
      goto LABEL_10;
    }

    urlOriginalString = self->_urlOriginalString;
    v16 = v6[12];
    if (urlOriginalString == v16)
    {
      isEqual = 1;
      goto LABEL_12;
    }

    if (v16)
    {
      isEqual = objc_msgSend_isEqual_(urlOriginalString, v14, v16);
    }

    else
    {
LABEL_10:
      isEqual = 0;
    }

LABEL_12:

    goto LABEL_13;
  }

  isEqual = 1;
LABEL_14:

  return isEqual;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  objc_msgSend_addObject_(v3, v4, self->_urlString);
  v7 = objc_msgSend_displayText(self, v5, v6);
  objc_msgSend_addObject_(v3, v8, v7);

  if (self->_urlOriginalString)
  {
    objc_msgSend_addObject_(v3, v9, self->_urlString);
  }

  v11 = objc_msgSend_hashValue(v3, v9, v10);

  return v11;
}

- (void)p_performHyperlinkSelector:(SEL)selector onStorage:(id)storage
{
  storageCopy = storage;
  v8 = objc_msgSend_parentInfo(storageCopy, v6, v7);
  if (v8)
  {
    do
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = objc_msgSend_url(self, v9, v10);
        objc_msgSend_performSelector_withObject_withObject_(v8, v12, selector, storageCopy, v11);
      }

      v13 = objc_msgSend_parentInfo(v8, v9, v10);

      v8 = v13;
    }

    while (v13);
  }
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  v10 = objc_msgSend_parentStorage(self, v8, v9);
  objc_msgSend_p_performHyperlinkSelector_onStorage_(self, v11, sel_addMapForStorage_forHyperlink_, v10);
  v12.receiver = self;
  v12.super_class = TSWPHyperlinkField;
  [(TSWPSmartField *)&v12 wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
}

- (void)willBeRemovedFromDocumentRoot:(id)root storage:(id)storage
{
  rootCopy = root;
  storageCopy = storage;
  if (storageCopy)
  {
    objc_msgSend_p_performHyperlinkSelector_onStorage_(self, v7, sel_removeMapForStorage_forHyperlink_, storageCopy);
  }

  v9.receiver = self;
  v9.super_class = TSWPHyperlinkField;
  [(TSWPSmartField *)&v9 willBeRemovedFromDocumentRoot:rootCopy];
}

@end