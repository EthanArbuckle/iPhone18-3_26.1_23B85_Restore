@interface MFMailMimePart
+ (BOOL)isRecognizedClassForContent:(id)content;
- (BOOL)_shouldContinueDecodingProcess;
- (id)decodeMessagePartial;
- (id)decodeMessageRfc822;
- (id)decodeMultipartAppledouble;
- (id)decodeTextEnriched;
- (id)decodeTextHtml;
- (id)decodeTextPlain;
- (id)decodeTextRichtext;
- (id)fileWrapperForDecodedObject:(id)object withFileData:(id *)data;
- (void)configureFileWrapper:(id)wrapper;
@end

@implementation MFMailMimePart

- (id)decodeTextRichtext
{
  v3 = _MFDecodeText();
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v6 = [threadDictionary objectForKey:*MEMORY[0x277D24E88]];
  bOOLValue = [v6 BOOLValue];

  v8 = [MEMORY[0x277CCACA8] mf_stringFromMimeRichTextString:v3 asHTML:bOOLValue];
  v9 = [MFWebMessageDocument alloc];
  v10 = [v8 dataUsingEncoding:4];
  v11 = [(MFWebMessageDocument *)v9 initWithMimePart:self htmlData:v10 encoding:134217984];

  return v11;
}

- (id)decodeTextEnriched
{
  v3 = _MFDecodeText();
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v6 = [threadDictionary objectForKey:*MEMORY[0x277D24E88]];
  bOOLValue = [v6 BOOLValue];

  v8 = [MEMORY[0x277CCACA8] mf_stringFromMimeEnrichedString:v3 asHTML:bOOLValue];
  v9 = [MFWebMessageDocument alloc];
  v10 = [v8 dataUsingEncoding:4];
  v11 = [(MFWebMessageDocument *)v9 initWithMimePart:self htmlData:v10 encoding:134217984];

  return v11;
}

- (id)decodeTextHtml
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = _MFOffsetFromThreadDictionary();
  v6 = [threadDictionary objectForKey:*MEMORY[0x277D24E98]];
  bOOLValue = [v6 BOOLValue];

  v14 = 0;
  v13 = 0;
  v8 = [(MFMailMimePart *)self copyBodyDataToOffset:v5 resultOffset:&v14 downloadIfNecessary:bOOLValue isComplete:&v13];
  v9 = [objc_allocWithZone(MFWebMessageDocument) initWithMimePart:self htmlData:v8 encoding:{-[MFMailMimePart textEncoding](self, "textEncoding")}];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  [threadDictionary setObject:v10 forKey:*MEMORY[0x277D24EB0]];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  [threadDictionary setObject:v11 forKey:*MEMORY[0x277D24EA0]];

  return v9;
}

- (id)decodeTextPlain
{
  v15 = 0;
  v3 = _MFCopyDecodeText();
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v6 = [threadDictionary objectForKeyedSubscript:*MEMORY[0x277D24E88]];
  bOOLValue = [v6 BOOLValue];

  v14 = 0;
  v8 = _formatFlowedOptions(self);
  if (bOOLValue)
  {
    v9 = 12;
  }

  else
  {
    v9 = 4;
  }

  v10 = [v3 mf_convertFromFlowedText:v8 | v9 visuallyEmpty:&v14];
  v11 = [v10 mf_dataUsingEncoding:4];
  v12 = [objc_allocWithZone(MFWebMessageDocument) initWithMimePart:self htmlData:v11 encoding:134217984];
  [v12 setVisuallyEmpty:v14];

  return v12;
}

- (id)decodeMultipartAppledouble
{
  firstChildPart = [(MFMailMimePart *)self firstChildPart];
  nextSiblingPart = [firstChildPart nextSiblingPart];
  v4 = [nextSiblingPart fileWrapperForcingDownload:0];

  return v4;
}

- (id)fileWrapperForDecodedObject:(id)object withFileData:(id *)data
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fileWrapper = [objectCopy fileWrapper];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MFMailMimePart;
    fileWrapper = [(MFMailMimePart *)&v10 fileWrapperForDecodedObject:objectCopy withFileData:data];
  }

  v8 = fileWrapper;

  return v8;
}

- (void)configureFileWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v22.receiver = self;
  v22.super_class = MFMailMimePart;
  [(MFMailMimePart *)&v22 configureFileWrapper:wrapperCopy];
  if (wrapperCopy)
  {
    v5 = [(MFMailMimePart *)self bodyParameterForKey:*MEMORY[0x277D24E78]];
    if (v5)
    {
      v6 = v5;
LABEL_4:
      [wrapperCopy setURL:v6];

      goto LABEL_5;
    }

    mimeBody = [(MFMailMimePart *)self mimeBody];
    message = [mimeBody message];
    v20 = [message URL];

    if (v20)
    {
      partNumber = [(MFMailMimePart *)self partNumber];
      v6 = [v20 stringByAppendingFormat:@"&aid=%@", partNumber];

      if (v6)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_5:
  if (([wrapperCopy isPlaceholder] & 1) == 0)
  {
    mimeBody2 = [(MFMailMimePart *)self mimeBody];
    message2 = [mimeBody2 message];

    if (objc_opt_respondsToSelector())
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [message2 performSelector:sel__attachmentStorageLocation];
      if (v10)
      {
        v11 = v10;
        partNumber2 = [(MFMailMimePart *)self partNumber];
        v13 = [v11 stringByAppendingPathComponent:partNumber2];

        if (([defaultManager fileExistsAtPath:v13] & 1) == 0)
        {
          [defaultManager createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:0];
        }

        preferredFilename = [wrapperCopy preferredFilename];
        if (preferredFilename)
        {
          v15 = [v13 stringByAppendingPathComponent:preferredFilename];
          if (([defaultManager fileExistsAtPath:v15] & 1) == 0)
          {
            regularFileContents = [wrapperCopy regularFileContents];
            fileAttributes = [wrapperCopy fileAttributes];
            [defaultManager createFileAtPath:v15 contents:regularFileContents attributes:fileAttributes];

            [wrapperCopy setPath:v15];
          }
        }
      }
    }
  }
}

- (BOOL)_shouldContinueDecodingProcess
{
  v2 = +[MFActivityMonitor currentMonitor];
  error = [v2 error];
  v4 = error == 0;

  return v4;
}

+ (BOOL)isRecognizedClassForContent:(id)content
{
  contentCopy = content;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___MFMailMimePart;
    v5 = objc_msgSendSuper2(&v7, sel_isRecognizedClassForContent_, contentCopy);
  }

  return v5;
}

- (id)decodeMessageRfc822
{
  bodyData = [(MFMailMimePart *)self bodyData];
  if (bodyData)
  {
    v4 = [(MFMessage *)MFMailMessage messageWithRFC822Data:bodyData withParentPart:self];
    mimeBody = [(MFMailMimePart *)self mimeBody];
    v6 = mimeBody;
    if (mimeBody)
    {
      message = [mimeBody message];
      messageURL = [message messageURL];

      [v4 setMessageURL:messageURL];
      v9 = [MFRFC822AttachmentDataProvider alloc];
      topLevelPart = [v6 topLevelPart];
      v11 = [(MFRFC822AttachmentDataProvider *)v9 initWithMessageData:bodyData parentPart:topLevelPart];

      v12 = +[MFAttachmentManager allManagers];
      anyObject = [v12 anyObject];
      [anyObject addProvider:v11 forBaseURL:messageURL];
    }

    v22 = 0;
    messageBody = [v4 messageBody];
    if ([(MFMailMimePart *)self isGenerated])
    {
      v15 = [messageBody contentToOffset:0x7FFFFFFFFFFFFFFFLL resultOffset:0 asHTML:1 isComplete:&v22];
    }

    else
    {
      v15 = bodyData;
      v22 = 1;
    }

    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:v22];
    [threadDictionary setObject:v18 forKey:*MEMORY[0x277D24EA0]];

    if (messageBody)
    {
      v19 = [threadDictionary objectForKey:*MEMORY[0x277D24E90]];
      bOOLValue = [v19 BOOLValue];

      if (bOOLValue)
      {
        [threadDictionary setObject:messageBody forKey:*MEMORY[0x277D24EA8]];
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)decodeMessagePartial
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MFMailMimePart *)self bodyParameterForKey:@"number"];
  v5 = [(MFMailMimePart *)self bodyParameterForKey:@"total"];
  v6 = [v3 stringWithFormat:@"Partial message, part %@ of %@\nTo read this message, select all of the parts of the message and select the Message --> MIME --> Combine Messages menu item.\n", v4, v5];

  return v6;
}

@end