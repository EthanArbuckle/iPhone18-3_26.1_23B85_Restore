@interface MFProgressiveMimeParser
- (MFProgressiveMimeParser)initWithBodyData:(id)data topLevelHeaders:(id)headers headersToPreserve:(id)preserve mambaID:(const char *)d;
- (id)_currentBoundary;
- (id)context;
- (void)_continueParsing;
- (void)_continueParsingBody;
- (void)_continueParsingHeaders;
- (void)_continueParsingStartOfPart;
- (void)_initializeTopLevelPartWithHeaders:(id)headers;
- (void)_reportError:(id)error;
- (void)dealloc;
- (void)noteDataLengthChanged:(unsigned int)changed;
- (void)setDelegate:(id)delegate;
@end

@implementation MFProgressiveMimeParser

- (MFProgressiveMimeParser)initWithBodyData:(id)data topLevelHeaders:(id)headers headersToPreserve:(id)preserve mambaID:(const char *)d
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  headersCopy = headers;
  preserveCopy = preserve;
  v23.receiver = self;
  v23.super_class = MFProgressiveMimeParser;
  v14 = [(MFProgressiveMimeParser *)&v23 init];
  v15 = v14;
  if (v14)
  {
    if (dataCopy && headersCopy)
    {
      objc_storeStrong(&v14->_data, data);
      v15->_lastLength = [dataCopy length];
      objc_storeStrong(&v15->_preserveHeaders, preserve);
      v15->mambaID = d;
      [(MFProgressiveMimeParser *)v15 _initializeTopLevelPartWithHeaders:headersCopy];
      p_super = getLogger_2();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        mambaID = v15->mambaID;
        v18 = objc_opt_class();
        v19 = v18;
        v20 = [dataCopy length];
        *buf = 136316162;
        v25 = mambaID;
        v26 = 2080;
        v27 = " ";
        v28 = 2112;
        v29 = v18;
        v30 = 2048;
        v31 = v15;
        v32 = 2048;
        v33 = v20;
        _os_log_impl(&dword_2720B1000, p_super, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p created with data length %lu", buf, 0x34u);
      }
    }

    else
    {
      p_super = &v14->super;
      v15 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = getLogger_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    *buf = 136315906;
    v9 = mambaID;
    v10 = 2080;
    v11 = " ";
    v12 = 2112;
    v13 = objc_opt_class();
    v14 = 2048;
    selfCopy = self;
    v5 = v13;
    _os_log_impl(&dword_2720B1000, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p deleted", buf, 0x2Au);
  }

  v7.receiver = self;
  v7.super_class = MFProgressiveMimeParser;
  [(MFProgressiveMimeParser *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  p_delegate = &self->_delegate;
  if (self->_delegate != delegateCopy)
  {
    v14 = delegateCopy;
    objc_storeStrong(p_delegate, delegate);
    delegate = self->_delegate;
    *&self->_parserFlags = *&self->_parserFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    v8 = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    *&self->_parserFlags = *&self->_parserFlags & 0xFD | v9;
    v10 = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    *&self->_parserFlags = *&self->_parserFlags & 0xFB | v11;
    v12 = self->_delegate;
    p_delegate = objc_opt_respondsToSelector();
    delegateCopy = v14;
    if (p_delegate)
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    *&self->_parserFlags = *&self->_parserFlags & 0xF7 | v13;
  }

  MEMORY[0x2821F96F8](p_delegate, delegateCopy);
}

- (id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (void)noteDataLengthChanged:(unsigned int)changed
{
  if (self->_lastLength < changed)
  {
    changedCopy = changed;
    if ([(NSMutableData *)self->_data length]>= changed)
    {
      self->_lastLength = changedCopy;

      [(MFProgressiveMimeParser *)self _continueParsing];
    }

    else
    {

      [(MFProgressiveMimeParser *)self _reportError:@"Data is not as long as reported"];
    }
  }
}

- (void)_initializeTopLevelPartWithHeaders:(id)headers
{
  v27 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  v5 = objc_alloc_init(MEMORY[0x277D24F68]);
  topLevelPart = self->_topLevelPart;
  self->_topLevelPart = v5;

  v7 = [headersCopy objectForKey:*MEMORY[0x277D06F88]];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 cStringUsingEncoding:4];
    v10 = self->_topLevelPart;
    strlen(v9);
    if (MFMimePartParseContentTypeHeader())
    {
      goto LABEL_6;
    }

    v11 = @"Unable to parse Content-type header in top-level part";
  }

  else
  {
    v11 = @"No Content-type header found in top-level part";
  }

  [(MFProgressiveMimeParser *)self _reportError:v11];
LABEL_6:
  v12 = [headersCopy objectForKey:*MEMORY[0x277D06F80]];

  if (v12)
  {
    [(MFMimePart *)self->_topLevelPart setContentTransferEncoding:v12];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = self->_preserveHeaders;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      v18 = v12;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v12 = [headersCopy objectForKey:{*(*(&v22 + 1) + 8 * v17), v22}];

        if (v12)
        {
          v19 = self->_topLevelPart;
          MFMimePartSetValueForPreservedHeader();
        }

        ++v17;
        v18 = v12;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  [(MFMimePart *)self->_topLevelPart setRange:0, 0];
  objc_storeStrong(&self->_currentPart, self->_topLevelPart);
  parserFlags = self->_parserFlags;
  *&self->_parserFlags = parserFlags & 0x8F | 0x30;
  if (parserFlags)
  {
    [self->_delegate progressiveMimeParser:self beganMimePart:self->_topLevelPart];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_continueParsingStartOfPart
{
  v26 = *MEMORY[0x277D85DE8];
  bytes = [(NSMutableData *)self->_data bytes];
  cursor = self->_cursor;
  v5 = *(bytes + cursor);
  if ((v5 | 0x20) == 0x2D)
  {
    lastLength = self->_lastLength;
    if (cursor + 1 >= lastLength)
    {
      v10 = getLogger_2();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = lastLength - cursor;
        mambaID = self->mambaID;
        v13 = [(NSMutableData *)self->_data length];
        *buf = 136315906;
        v19 = mambaID;
        v20 = 2080;
        v21 = " ";
        v22 = 2048;
        v23 = v11;
        v24 = 2048;
        v25 = v13;
        _os_log_impl(&dword_2720B1000, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s_continueParsingStartOfPart: remain %lu bytes, data length %lu", buf, 0x2Au);
      }

      goto LABEL_12;
    }

    if (v5 == 13)
    {
      if (*(bytes + cursor + 1) == 10)
      {
        self->_cursor = cursor + 2;
      }
    }

    else if (v5 == 45 && *(bytes + cursor + 1) == 45)
    {
      self->_cursor = cursor + 2;
      if ((*&self->_parserFlags & 2) != 0)
      {
        [self->_delegate progressiveMimeParser:self finishedMimePart:self->_currentPart];
        currentBoundary = self->_currentBoundary;
        self->_currentBoundary = 0;
      }

      parentPart = [(MFMimePart *)self->_currentPart parentPart];
      currentPart = self->_currentPart;
      self->_currentPart = parentPart;

      *&self->_parserFlags = *&self->_parserFlags & 0x8F | 0x40;
LABEL_12:
      v14 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  obj = objc_alloc_init(MEMORY[0x277D24F68]);
  [obj setRange:{self->_cursor, 0}];
  [(MFMimePart *)self->_currentPart addSubpart:obj];
  objc_storeStrong(&self->_currentPart, obj);
  parserFlags = self->_parserFlags;
  *&self->_parserFlags = parserFlags & 0x8F | 0x20;
  if (parserFlags)
  {
    [self->_delegate progressiveMimeParser:self beganMimePart:self->_currentPart];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_continueParsingHeaders
{
  v30 = *MEMORY[0x277D85DE8];
  if (self->_lastLength - self->_cursor >= 4)
  {
    v3 = [(NSMutableData *)self->_data mf_rangeOfCString:"\r\n\r\n" options:0 range:?];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_cursor = self->_lastLength;
    }

    else
    {
      self->_cursor = v3 + v4;
      v27 = 0;
      v28 = 0;
      bytes = [(NSMutableData *)self->_data bytes];
      range = [(MFMimePart *)self->_currentPart range];
      v6 = self->_cursor - range;
      if (MFMimeDataGetRangeOfHeader(&v27, 0, *MEMORY[0x277D06F88], self->_data, range, v6))
      {
        if (*(bytes + v27 + v28 - 1) == 13)
        {
          --v28;
        }

        currentPart = self->_currentPart;
        MFMimePartParseContentTypeHeader();
      }

      if (MFMimeDataGetRangeOfHeader(&v27, 0, *MEMORY[0x277D06F60], self->_data, range, v6))
      {
        if (*(bytes + v27 + v28 - 1) == 13)
        {
          --v28;
        }

        v8 = self->_currentPart;
        MFMimePartParseContentDispositionHeader();
      }

      if (MFMimeDataGetRangeOfHeader(&v27, 0, *MEMORY[0x277D06F80], self->_data, range, v6))
      {
        if (*(bytes + v27 + v28 - 1) == 13)
        {
          --v28;
        }

        v9 = MFMimeDataCreateStringFromHeaderBytes();
        [(MFMimePart *)self->_currentPart setContentTransferEncoding:v9];
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = self->_preserveHeaders;
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v24;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v10);
            }

            if (MFMimeDataGetRangeOfHeader(&v27, 0, *(*(&v23 + 1) + 8 * i), self->_data, range, v6))
            {
              if (*(bytes + v27 + v28 - 1) == 13)
              {
                --v28;
              }

              v16 = MFMimeDataCreateStringFromHeaderBytes();

              v17 = self->_currentPart;
              MFMimePartSetValueForPreservedHeader();
              v13 = v16;
            }
          }

          v12 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v12);
      }

      else
      {
        v13 = 0;
      }

      [(MFMimePart *)self->_currentPart setRange:self->_cursor, 0];
      *&self->_parserFlags = *&self->_parserFlags & 0x8F | 0x30;
      type = [(MFMimePart *)self->_currentPart type];
      v19 = [type isEqualToString:@"multipart"];

      if (v19)
      {
        currentBoundary = self->_currentBoundary;
        self->_currentBoundary = 0;
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_currentBoundary
{
  v22 = *MEMORY[0x277D85DE8];
  currentBoundary = self->_currentBoundary;
  if (!currentBoundary)
  {
    v4 = self->_currentPart;
    v5 = [(MFMimePart *)v4 bodyParameterForKey:@"boundary"];
    v6 = getLogger_2();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = self->mambaID;
      v16 = 136315650;
      v17 = mambaID;
      v18 = 2080;
      v19 = " ";
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_2720B1000, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sCurrent boundary is %@", &v16, 0x20u);
    }

    if (v5)
    {
      v8 = [v5 cStringUsingEncoding:1];
      v9 = strlen(v8);
      v10 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:v9 + 4];
      [(NSData *)v10 mf_appendCString:"\r\n--"];
      [(NSData *)v10 appendBytes:v8 length:v9];
      v11 = self->_currentBoundary;
      self->_currentBoundary = v10;
    }

    if (!self->_currentBoundary)
    {
      null = [MEMORY[0x277CBEB68] null];
      v13 = self->_currentBoundary;
      self->_currentBoundary = null;
    }

    currentBoundary = self->_currentBoundary;
  }

  v14 = *MEMORY[0x277D85DE8];

  return currentBoundary;
}

- (void)_continueParsingBody
{
  v42 = *MEMORY[0x277D85DE8];
  _currentBoundary = [(MFProgressiveMimeParser *)self _currentBoundary];
  cursor = self->_cursor;
  lastLength = self->_lastLength;
  bytes = [(NSMutableData *)self->_data bytes];
  if (!_currentBoundary)
  {
    goto LABEL_18;
  }

  v7 = bytes;
  v8 = lastLength - cursor;
  null = [MEMORY[0x277CBEB68] null];
  v10 = [_currentBoundary isEqual:null];

  if (cursor || v8 < 3 || (v10 & 1) != 0)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_18:
    range = [(MFMimePart *)self->_currentPart range];
    [(MFMimePart *)self->_currentPart setRange:range, self->_cursor - range];
    parserFlags = self->_parserFlags;
    if ((parserFlags & 0x70) == 0x30)
    {
      *&self->_parserFlags = parserFlags & 0x8F | 0x40;
      if ((parserFlags & 4) != 0)
      {
        [self->_delegate progressiveMimeParser:self beganDataForMimePart:self->_currentPart];
      }
    }

    goto LABEL_33;
  }

  bytes2 = [_currentBoundary bytes];
  v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:bytes2 + 2 length:objc_msgSend(_currentBoundary freeWhenDone:{"length") - 2, 0}];

  _currentBoundary = v12;
LABEL_7:
  v13 = [_currentBoundary length];
  if (v8 < v13 || (v14 = [(NSMutableData *)self->_data mf_rangeOfData:_currentBoundary options:0 range:cursor, lastLength - cursor], v14 == 0x7FFFFFFFFFFFFFFFLL))
  {
    if (v13 >= v8)
    {
      v16 = lastLength - cursor;
    }

    else
    {
      v16 = v13;
    }

    bytes3 = [_currentBoundary bytes];
    if (-v16 < 0)
    {
      v18 = bytes3;
      v19 = v7 + lastLength;
      v20 = (v7 + lastLength - v16);
      while (memcmp(v20, v18, v16))
      {
        ++v20;
        --v16;
        if (v20 >= v19)
        {
          goto LABEL_16;
        }
      }

      v21 = self->_lastLength - v16;
    }

    else
    {
LABEL_16:
      v21 = self->_lastLength;
    }

    self->_cursor = v21;
    goto LABEL_18;
  }

  v24 = v14;
  v25 = v15;
  range2 = [(MFMimePart *)self->_currentPart range];
  v27 = getLogger_2();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    v43.location = v24;
    v43.length = v25;
    v29 = NSStringFromRange(v43);
    v36 = 136315650;
    v37 = mambaID;
    v38 = 2080;
    v39 = " ";
    v40 = 2112;
    v41 = v29;
    _os_log_impl(&dword_2720B1000, v27, OS_LOG_TYPE_DEFAULT, "#I %s%sFound boundary at %@", &v36, 0x20u);
  }

  if (v24)
  {
    v30 = v24 - range2;
  }

  else
  {
    v30 = 0;
  }

  [(MFMimePart *)self->_currentPart setRange:range2, v30];
  if ((*&self->_parserFlags & 0x74) == 0x34)
  {
    [self->_delegate progressiveMimeParser:self beganDataForMimePart:self->_currentPart];
  }

  type = [(MFMimePart *)self->_currentPart type];
  v32 = [type isEqualToString:@"multipart"];

  if ((v32 & 1) == 0)
  {
    if ((*&self->_parserFlags & 2) != 0)
    {
      [self->_delegate progressiveMimeParser:self finishedMimePart:self->_currentPart];
    }

    parentPart = [(MFMimePart *)self->_currentPart parentPart];
    currentPart = self->_currentPart;
    self->_currentPart = parentPart;
  }

  self->_cursor = v24 + v25;
  *&self->_parserFlags = *&self->_parserFlags & 0x8F | 0x10;
LABEL_33:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_continueParsing
{
  if (self->_cursor < self->_lastLength)
  {
    v3 = 0;
    do
    {
      v4 = v3;
      v3 = (*&self->_parserFlags >> 4) & 7;
      if (v4 == v3)
      {
        break;
      }

      if ((v3 - 3) < 2)
      {
        [(MFProgressiveMimeParser *)self _continueParsingBody];
      }

      else if (v3 == 2)
      {
        [(MFProgressiveMimeParser *)self _continueParsingHeaders];
      }

      else if (v3 == 1)
      {
        [(MFProgressiveMimeParser *)self _continueParsingStartOfPart];
      }

      else
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parser state (%d)", (*&self->_parserFlags >> 4) & 7];
        [(MFProgressiveMimeParser *)self _reportError:v5];
      }
    }

    while (self->_cursor < self->_lastLength);
  }
}

- (void)_reportError:(id)error
{
  if ((*&self->_parserFlags & 8) != 0)
  {
    delegate = self->_delegate;
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ProgressiveMimeParseErrorDomain" code:-1 localizedDescription:error];
    [delegate progressiveMimeParser:self failedWithError:v6];
  }
}

@end