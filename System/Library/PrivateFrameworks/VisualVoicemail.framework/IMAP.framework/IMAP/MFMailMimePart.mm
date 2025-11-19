@interface MFMailMimePart
+ (BOOL)isRecognizedClassForContent:(id)a3;
- (BOOL)_shouldContinueDecodingProcess;
- (id)decodeMessagePartial;
- (id)decodeMessageRfc822;
- (id)decodeMultipartAppledouble;
- (id)decodeTextEnriched;
- (id)decodeTextHtml;
- (id)decodeTextPlain;
- (id)decodeTextRichtext;
- (id)fileWrapperForDecodedObject:(id)a3 withFileData:(id *)a4;
- (void)configureFileWrapper:(id)a3;
@end

@implementation MFMailMimePart

- (id)decodeTextRichtext
{
  v3 = _MFDecodeText();
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v5 = [v4 threadDictionary];

  v6 = [v5 objectForKey:*MEMORY[0x277D24E88]];
  v7 = [v6 BOOLValue];

  v8 = [MEMORY[0x277CCACA8] mf_stringFromMimeRichTextString:v3 asHTML:v7];
  v9 = [MFWebMessageDocument alloc];
  v10 = [v8 dataUsingEncoding:4];
  v11 = [(MFWebMessageDocument *)v9 initWithMimePart:self htmlData:v10 encoding:134217984];

  return v11;
}

- (id)decodeTextEnriched
{
  v3 = _MFDecodeText();
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v5 = [v4 threadDictionary];

  v6 = [v5 objectForKey:*MEMORY[0x277D24E88]];
  v7 = [v6 BOOLValue];

  v8 = [MEMORY[0x277CCACA8] mf_stringFromMimeEnrichedString:v3 asHTML:v7];
  v9 = [MFWebMessageDocument alloc];
  v10 = [v8 dataUsingEncoding:4];
  v11 = [(MFWebMessageDocument *)v9 initWithMimePart:self htmlData:v10 encoding:134217984];

  return v11;
}

- (id)decodeTextHtml
{
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v4 = [v3 threadDictionary];

  v5 = _MFOffsetFromThreadDictionary();
  v6 = [v4 objectForKey:*MEMORY[0x277D24E98]];
  v7 = [v6 BOOLValue];

  v14 = 0;
  v13 = 0;
  v8 = [(MFMailMimePart *)self copyBodyDataToOffset:v5 resultOffset:&v14 downloadIfNecessary:v7 isComplete:&v13];
  v9 = [objc_allocWithZone(MFWebMessageDocument) initWithMimePart:self htmlData:v8 encoding:{-[MFMailMimePart textEncoding](self, "textEncoding")}];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  [v4 setObject:v10 forKey:*MEMORY[0x277D24EB0]];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  [v4 setObject:v11 forKey:*MEMORY[0x277D24EA0]];

  return v9;
}

- (id)decodeTextPlain
{
  v15 = 0;
  v3 = _MFCopyDecodeText();
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v5 = [v4 threadDictionary];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D24E88]];
  v7 = [v6 BOOLValue];

  v14 = 0;
  v8 = _formatFlowedOptions(self);
  if (v7)
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
  v2 = [(MFMailMimePart *)self firstChildPart];
  v3 = [v2 nextSiblingPart];
  v4 = [v3 fileWrapperForcingDownload:0];

  return v4;
}

- (id)fileWrapperForDecodedObject:(id)a3 withFileData:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 fileWrapper];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MFMailMimePart;
    v7 = [(MFMailMimePart *)&v10 fileWrapperForDecodedObject:v6 withFileData:a4];
  }

  v8 = v7;

  return v8;
}

- (void)configureFileWrapper:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MFMailMimePart;
  [(MFMailMimePart *)&v22 configureFileWrapper:v4];
  if (v4)
  {
    v5 = [(MFMailMimePart *)self bodyParameterForKey:*MEMORY[0x277D24E78]];
    if (v5)
    {
      v6 = v5;
LABEL_4:
      [v4 setURL:v6];

      goto LABEL_5;
    }

    v18 = [(MFMailMimePart *)self mimeBody];
    v19 = [v18 message];
    v20 = [v19 URL];

    if (v20)
    {
      v21 = [(MFMailMimePart *)self partNumber];
      v6 = [v20 stringByAppendingFormat:@"&aid=%@", v21];

      if (v6)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_5:
  if (([v4 isPlaceholder] & 1) == 0)
  {
    v7 = [(MFMailMimePart *)self mimeBody];
    v8 = [v7 message];

    if (objc_opt_respondsToSelector())
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [v8 performSelector:sel__attachmentStorageLocation];
      if (v10)
      {
        v11 = v10;
        v12 = [(MFMailMimePart *)self partNumber];
        v13 = [v11 stringByAppendingPathComponent:v12];

        if (([v9 fileExistsAtPath:v13] & 1) == 0)
        {
          [v9 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:0];
        }

        v14 = [v4 preferredFilename];
        if (v14)
        {
          v15 = [v13 stringByAppendingPathComponent:v14];
          if (([v9 fileExistsAtPath:v15] & 1) == 0)
          {
            v16 = [v4 regularFileContents];
            v17 = [v4 fileAttributes];
            [v9 createFileAtPath:v15 contents:v16 attributes:v17];

            [v4 setPath:v15];
          }
        }
      }
    }
  }
}

- (BOOL)_shouldContinueDecodingProcess
{
  v2 = +[MFActivityMonitor currentMonitor];
  v3 = [v2 error];
  v4 = v3 == 0;

  return v4;
}

+ (BOOL)isRecognizedClassForContent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___MFMailMimePart;
    v5 = objc_msgSendSuper2(&v7, sel_isRecognizedClassForContent_, v4);
  }

  return v5;
}

- (id)decodeMessageRfc822
{
  v3 = [(MFMailMimePart *)self bodyData];
  if (v3)
  {
    v4 = [(MFMessage *)MFMailMessage messageWithRFC822Data:v3 withParentPart:self];
    v5 = [(MFMailMimePart *)self mimeBody];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 message];
      v8 = [v7 messageURL];

      [v4 setMessageURL:v8];
      v9 = [MFRFC822AttachmentDataProvider alloc];
      v10 = [v6 topLevelPart];
      v11 = [(MFRFC822AttachmentDataProvider *)v9 initWithMessageData:v3 parentPart:v10];

      v12 = +[MFAttachmentManager allManagers];
      v13 = [v12 anyObject];
      [v13 addProvider:v11 forBaseURL:v8];
    }

    v22 = 0;
    v14 = [v4 messageBody];
    if ([(MFMailMimePart *)self isGenerated])
    {
      v15 = [v14 contentToOffset:0x7FFFFFFFFFFFFFFFLL resultOffset:0 asHTML:1 isComplete:&v22];
    }

    else
    {
      v15 = v3;
      v22 = 1;
    }

    v16 = [MEMORY[0x277CCACC8] currentThread];
    v17 = [v16 threadDictionary];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:v22];
    [v17 setObject:v18 forKey:*MEMORY[0x277D24EA0]];

    if (v14)
    {
      v19 = [v17 objectForKey:*MEMORY[0x277D24E90]];
      v20 = [v19 BOOLValue];

      if (v20)
      {
        [v17 setObject:v14 forKey:*MEMORY[0x277D24EA8]];
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