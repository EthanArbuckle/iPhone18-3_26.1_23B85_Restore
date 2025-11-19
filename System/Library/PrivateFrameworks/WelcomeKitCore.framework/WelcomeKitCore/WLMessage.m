@interface WLMessage
+ (BOOL)_shouldIgnoreMessageThreadID;
+ (_NSRange)_populateMimeHeaders:(id)a3 recipients:(id)a4 fromRange:(_NSRange)a5 ofString:(id)a6 addCountryCodeToParties:(BOOL)a7 sqlController:(id)a8;
+ (id)_dateFormatterForMimeDateStrings;
+ (id)_fileNameForPart:(id)a3 smilContext:(id)a4;
+ (id)dateFromMimeHeaders:(id)a3;
+ (id)mimeHeadersFromMimeData:(id)a3 sqlController:(id)a4;
- (void)parseMIMEData:(id)a3 sqlController:(id)a4;
- (void)progressiveMimeParser:(id)a3 finishedMimePart:(id)a4;
@end

@implementation WLMessage

+ (_NSRange)_populateMimeHeaders:(id)a3 recipients:(id)a4 fromRange:(_NSRange)a5 ofString:(id)a6 addCountryCodeToParties:(BOOL)a7 sqlController:(id)a8
{
  v40 = a7;
  length = a5.length;
  location = a5.location;
  v12 = a3;
  v39 = a4;
  v13 = a6;
  v41 = a8;
  if (length)
  {
    v14 = @"\r\n";
    v38 = v13;
    do
    {
      if ([v12 count])
      {
        [v13 rangeOfString:v14 options:8 range:{location, length}];
        if (v15)
        {
          break;
        }
      }

      v16 = [v13 rangeOfString:@": " options:0 range:{location, length}];
      if (!v17)
      {
        break;
      }

      v18 = v16;
      v19 = v17;
      v20 = [v13 substringWithRange:{location, v16 - location}];
      location = v18 + v19;
      length = [v13 length] - (v18 + v19);
      v21 = [v13 rangeOfString:v14 options:0 range:{v18 + v19, length}];
      if (!v22)
      {

        break;
      }

      v23 = v21;
      v24 = v22;
      v25 = [v13 substringWithRange:{location, v21 - location}];
      v26 = [v13 length];
      if (([v20 isEqualToString:@"To"] & 1) != 0 || (v27 = v25, objc_msgSend(v20, "isEqualToString:", @"From")))
      {
        v27 = [[WLMessageParty alloc] _initWithAddress:v25 addCountryCode:v40 sqlController:v41];

        [v27 address];
        v28 = v26;
        v29 = v12;
        v31 = v30 = v14;

        v36 = v25;
        v37 = v31;
        v35 = a1;
        _WLLog();

        v14 = v30;
        v12 = v29;
        v26 = v28;
        v13 = v38;
      }

      if ([v20 isEqualToString:{@"To", v35, v36, v37}])
      {
        [v39 addObject:v27];
      }

      else
      {
        v32 = [v12 objectForKey:v20];

        if (v32)
        {
          v35 = a1;
          v36 = v20;
          _WLLog();
        }

        [v12 setValue:v27 forKey:{v20, v35, v36}];
      }

      location = v23 + v24;
      length = v26 - (v23 + v24);
    }

    while (length);
  }

  v33 = location;
  v34 = length;
  result.length = v34;
  result.location = v33;
  return result;
}

+ (id)_dateFormatterForMimeDateStrings
{
  if (_dateFormatterForMimeDateStrings_onceToken != -1)
  {
    +[WLMessage _dateFormatterForMimeDateStrings];
  }

  v3 = _dateFormatterForMimeDateStrings__dateFormatter;

  return v3;
}

void __45__WLMessage__dateFormatterForMimeDateStrings__block_invoke()
{
  v4 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _dateFormatterForMimeDateStrings__dateFormatter;
  _dateFormatterForMimeDateStrings__dateFormatter = v0;

  [_dateFormatterForMimeDateStrings__dateFormatter setDateFormat:@"EEE', ' dd MMM yyyy HH':'mm':'ss Z"];
  [_dateFormatterForMimeDateStrings__dateFormatter setLocale:v4];
  v2 = _dateFormatterForMimeDateStrings__dateFormatter;
  v3 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v3];
}

+ (id)mimeHeadersFromMimeData:(id)a3 sqlController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:7];
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [a1 _populateMimeHeaders:v9 recipients:v10 fromRange:0 ofString:objc_msgSend(v8 addCountryCodeToParties:"length") sqlController:{v8, 0, v7}];
    [a1 addRecipients:v10 toMimeHeaders:v9];
  }

  else
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
    _WLLog();
    v9 = 0;
  }

  return v9;
}

+ (id)dateFromMimeHeaders:(id)a3
{
  if (a3)
  {
    v4 = [a3 objectForKeyedSubscript:@"Date"];
    if (v4)
    {
      v5 = [a1 _dateFormatterForMimeDateStrings];
      v6 = [v5 dateFromString:v4];

      _WLLog();
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

  return v6;
}

- (void)parseMIMEData:(id)a3 sqlController:(id)a4
{
  v91 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_mimeData, a3);
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:6];
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    v84 = self;
    v77 = v9;
    v12 = +[WLMessage _populateMimeHeaders:recipients:fromRange:ofString:addCountryCodeToParties:sqlController:](WLMessage, "_populateMimeHeaders:recipients:fromRange:ofString:addCountryCodeToParties:sqlController:", v10, v11, 0, [v9 length], v9, 1, v8);
    v14 = v13;
    _WLLog();
    obj = v11;
    v67 = v11;
    v15 = 0x28208F000uLL;
    _WLLog();
    v16 = [v10 objectForKeyedSubscript:{@"X-CMD-Message-Type", self, v67}];
    self->_messageType = [v16 isEqualToString:@"sms"];
    v79 = v10;
    v17 = [v10 objectForKeyedSubscript:@"Date"];
    dateString = self->_dateString;
    self->_dateString = v17;

    if (self->_dateString)
    {
      v19 = +[WLMessage _dateFormatterForMimeDateStrings];
      v20 = [v19 dateFromString:self->_dateString];
      date = self->_date;
      self->_date = v20;

      v68 = self->_date;
      v70 = self->_dateString;
      v65 = self;
      _WLLog();
    }

    v22 = [v10 objectForKeyedSubscript:{@"X-CMD-Message-Direction", v65, v68, v70}];

    v76 = v22;
    if ([v22 isEqualToString:@"sent"])
    {
      self->_messageDirection = 0;
      if (![obj count])
      {
        v66 = self;
        _WLLog();
      }
    }

    else
    {
      self->_messageDirection = 1;
      v23 = [v79 objectForKeyedSubscript:@"From"];
      sender = self->_sender;
      self->_sender = v23;
    }

    objc_storeStrong(&self->_recipients, obj);
    self->_isGroupMessage = [(NSArray *)self->_recipients count]> 1;
    v25 = [v79 objectForKeyedSubscript:{@"Subject", v66}];
    subject = self->_subject;
    self->_subject = v25;

    if (+[WLMessage _shouldIgnoreMessageThreadID])
    {
      v27 = 0;
    }

    else
    {
      v27 = [v79 objectForKeyedSubscript:@"X-CMD-Message-Thread"];
    }

    threadID = self->_threadID;
    self->_threadID = v27;

    v29 = [v77 rangeOfString:@"\r\n" options:8 range:{v12, v14}];
    if (v30)
    {
      v12 = v29 + v30;
      v14 = [v77 length] - (v29 + v30);
    }

    v31 = v79;
    if (self->_messageType == 1)
    {
      v9 = v77;
      [v77 rangeOfString:@"\r\n" options:12 range:{v12, v14}];
      v33 = [v77 substringWithRange:{v12, v14 - v32}];
      messageText = self->_messageText;
      self->_messageText = v33;
    }

    else
    {
      v35 = [v79 objectForKeyedSubscript:@"Content-Type"];
      v74 = v8;
      v75 = v7;
      v73 = v35;
      if (v35)
      {
        [v79 setObject:v35 forKey:@"content-type"];
      }

      else
      {
        _WLLog();
      }

      v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
      mimeParts = self->_mimeParts;
      self->_mimeParts = v36;

      v38 = [(NSData *)self->_mimeData mutableCopy];
      v39 = objc_alloc(MEMORY[0x277D28260]);
      v81 = v38;
      v40 = [v39 initWithBodyData:v38 topLevelHeaders:v79 headersToPreserve:MEMORY[0x277CBEBF8]];
      [v40 setDelegate:self];
      v72 = v40;
      [v40 start];
      v80 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_mimeParts, "count")}];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v83 = self->_mimeParts;
      v41 = [(NSMutableArray *)v83 countByEnumeratingWithState:&v86 objects:v90 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = @"%@: begin attachment creation for part %@";
        v85 = *v87;
        do
        {
          v44 = 0;
          v82 = v42;
          do
          {
            if (*v87 != v85)
            {
              objc_enumerationMutation(v83);
            }

            v45 = *(*(&v86 + 1) + 8 * v44);
            _WLLog();
            v46 = [v45 contentTransferEncoding];
            v47 = [v46 lowercaseString];
            v48 = [v47 isEqualToString:@"base64"];

            if (v48)
            {
              v49 = [v45 range];
              v51 = [v81 subdataWithRange:{v49, v50}];
              v52 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedData:v51 options:1];
              v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v52, "length")}];
              v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v51, "length")}];
              _WLLog();

              if (v52)
              {
                v54 = [v15 + 1872 _fileNameForPart:v45 smilContext:{self->_smilContext, self, v53, v71}];
                v55 = MEMORY[0x277CCACA8];
                v56 = [v45 type];
                [v45 subtype];
                v58 = v57 = v43;
                v59 = [v55 stringWithFormat:@"%@/%@", v56, v58];

                v60 = [MEMORY[0x277CE1CB8] typeWithMIMEType:v59];
                v61 = [v60 identifier];

                _WLLog();
                v62 = [[WLMessageAttachment alloc] _initWithData:v52 fileName:v54 mimeType:v59 uti:v61, v84, v61, v59];
                [v80 addObject:v62];

                v43 = v57;
                v15 = 0x28208F000;
                self = v84;
              }

              else
              {
                _WLLog();
              }

              v42 = v82;
            }

            _WLLog();
            ++v44;
          }

          while (v42 != v44);
          v42 = [(NSMutableArray *)v83 countByEnumeratingWithState:&v86 objects:v90 count:16, self, v45];
        }

        while (v42);
      }

      objc_storeStrong(&self->_attachments, v80);
      if (!self->_messageText)
      {
        _WLLog();
        v63 = self->_messageText;
        self->_messageText = &stru_2882CBB40;
      }

      v8 = v74;
      v7 = v75;
      v9 = v77;
      v31 = v79;
    }
  }

  else
  {
    v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
    _WLLog();
  }

  v64 = *MEMORY[0x277D85DE8];
}

+ (id)_fileNameForPart:(id)a3 smilContext:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 disposition];
  if (!v7 || (v9 = [v7 rangeOfString:@" filename="], v9 == 0x7FFFFFFFFFFFFFFFLL) || (v11 = v9 + v10, v12 = objc_msgSend(v8, "rangeOfString:options:range:", @", 0, v11, objc_msgSend(v8, "length") - v11), v12 == 0x7FFFFFFFFFFFFFFFLL) || (objc_msgSend(v8, "substringWithRange:"", v11, v12 - v11), (v13 = v8 = v7;
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [v6 parts];
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v15)
    {

LABEL_17:
      v23 = MEMORY[0x277CCACA8];
      v24 = [MEMORY[0x277CCAD78] UUID];
      v25 = [v24 UUIDString];
      v13 = [v23 stringWithFormat:@"Image_%@", v25];

      goto LABEL_18;
    }

    v16 = v15;
    v28 = v6;
    v13 = 0;
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        v20 = [v19 elementName];
        v21 = [v20 isEqualToString:@"text"];

        if ((v21 & 1) == 0)
        {
          v22 = [v19 fileName];

          v13 = v22;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);

    v6 = v28;
    if (!v13)
    {
      goto LABEL_17;
    }
  }

LABEL_18:

  v26 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)_shouldIgnoreMessageThreadID
{
  if (_shouldIgnoreMessageThreadID_onceToken != -1)
  {
    +[WLMessage _shouldIgnoreMessageThreadID];
  }

  return _shouldIgnoreMessageThreadID_shouldIgnoreMessageThreadID;
}

void __41__WLMessage__shouldIgnoreMessageThreadID__block_invoke()
{
  _shouldIgnoreMessageThreadID_shouldIgnoreMessageThreadID = [MEMORY[0x277D7B8B0] BOOLForKey:@"WLIgnoreMessageThreadID"] == 1;
  v0 = [MEMORY[0x277CCABB0] numberWithBool:?];
  _WLLog();
}

- (void)progressiveMimeParser:(id)a3 finishedMimePart:(id)a4
{
  v31 = a4;
  _WLLog();
  v5 = [v31 type];
  v6 = [v5 isEqualToString:@"multipart"];

  if (v6)
  {
    goto LABEL_2;
  }

  v7 = [v31 type];
  if ([v7 isEqualToString:@"text"])
  {
    v8 = [v31 subtype];
    v9 = [v8 isEqualToString:@"plain"];

    if (v9)
    {
      v10 = v31;
      if (self->_messageText)
      {
        goto LABEL_22;
      }

      _WLLog();
      mimeData = self->_mimeData;
      v12 = [v31 range];
      v14 = [(NSData *)mimeData wl_subdataWithRangeExcludingTrailingCrnl:v12, v13];
      if (![v14 length])
      {
        _WLLog();
        messageText = self->_messageText;
        self->_messageText = &stru_2882CBB40;

        goto LABEL_20;
      }

      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
      v16 = self->_messageText;
      self->_messageText = v15;

      if ([(NSString *)self->_messageText length]<= 0x63)
      {
        v28 = self->_messageText;
        _WLLog();
LABEL_20:

        goto LABEL_21;
      }

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSString length](self->_messageText, "length")}];
      _WLLog();
LABEL_19:

      goto LABEL_20;
    }
  }

  else
  {
  }

  v17 = [v31 type];
  if (([v17 isEqualToString:@"application"] & 1) == 0)
  {

    goto LABEL_15;
  }

  v18 = [v31 subtype];
  v19 = [v18 isEqualToString:@"smil"];

  if (!v19)
  {
LABEL_15:
    _WLLog();
    [(NSMutableArray *)self->_mimeParts addObject:v31, self, v31];
    goto LABEL_21;
  }

  _WLLog();
  if (!self->_smilContext)
  {
    v20 = objc_alloc_init(WLMessageSMILContext);
    smilContext = self->_smilContext;
    self->_smilContext = v20;

    v22 = self->_mimeData;
    v23 = [v31 range];
    v14 = [(NSData *)v22 wl_subdataWithRangeExcludingTrailingCrnl:v23, v24];
    v25 = [objc_alloc(MEMORY[0x277CCAE70]) initWithData:v14];
    [v25 setDelegate:self->_smilContext];
    v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
    _WLLog();

    v26 = [v25 parse];
    v30 = [MEMORY[0x277CCABB0] numberWithBool:v26];
    _WLLog();

    goto LABEL_19;
  }

LABEL_2:
  _WLLog();
LABEL_21:
  v10 = v31;
LABEL_22:
}

@end