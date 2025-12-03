@interface PSGInputSuggestionsRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (PSGInputSuggestionsRequest)initWithCoder:(id)coder;
- (PSGInputSuggestionsRequest)initWithResponseContext:(id)context conversationTurns:(id)turns adaptationContextID:(id)d shouldDisableAutoCaps:(BOOL)caps isResponseContextBlacklisted:(BOOL)blacklisted contextBeforeInput:(id)input markedText:(id)text selectedText:(id)self0 contextAfterInput:(id)self1 selectedRangeInMarkedText:(_NSRange)self2 localeIdentifier:(id)self3 bundleIdentifier:(id)self4 recipients:(id)self5 recipientNames:(id)self6 textContentType:(id)self7 availableApps:(id)self8 textualResponseLimit:(unint64_t)self9 structuredInfoLimit:(unint64_t)infoLimit totalSuggestionsLimit:(unint64_t)suggestionsLimit;
- (PSGInputSuggestionsRequest)initWithResponseContext:(id)context conversationTurns:(id)turns adaptationContextID:(id)d shouldDisableAutoCaps:(BOOL)caps isResponseContextBlacklisted:(BOOL)blacklisted contextBeforeInput:(id)input markedText:(id)text selectedText:(id)self0 contextAfterInput:(id)self1 selectedRangeInMarkedText:(_NSRange)self2 localeIdentifier:(id)self3 bundleIdentifier:(id)self4 recipients:(id)self5 textContentType:(id)self6 availableApps:(id)self7 textualResponseLimit:(unint64_t)self8 structuredInfoLimit:(unint64_t)self9;
- (PSGInputSuggestionsRequest)initWithResponseContext:(id)context conversationTurns:(id)turns responseKitConversationTurns:(id)conversationTurns adaptationContextID:(id)d shouldDisableAutoCaps:(BOOL)caps isResponseContextBlacklisted:(BOOL)blacklisted contextBeforeInput:(id)input markedText:(id)self0 selectedText:(id)self1 contextAfterInput:(id)self2 selectedRangeInMarkedText:(_NSRange)self3 localeIdentifier:(id)self4 bundleIdentifier:(id)self5 recipients:(id)self6 recipientNames:(id)self7 textContentType:(id)self8 availableApps:(id)self9 textualResponseLimit:(unint64_t)limit structuredInfoLimit:(unint64_t)infoLimit totalSuggestionsLimit:(unint64_t)suggestionsLimit;
- (PSGInputSuggestionsRequest)initWithResponseContext:(id)context conversationTurns:(id)turns responseKitConversationTurns:(id)conversationTurns adaptationContextID:(id)d shouldDisableAutoCaps:(BOOL)caps isResponseContextBlacklisted:(BOOL)blacklisted contextBeforeInput:(id)input markedText:(id)self0 selectedText:(id)self1 contextAfterInput:(id)self2 selectedRangeInMarkedText:(_NSRange)self3 localeIdentifier:(id)self4 bundleIdentifier:(id)self5 recipients:(id)self6 recipientNames:(id)self7 textContentType:(id)self8 availableApps:(id)self9 textualResponseLimit:(unint64_t)limit structuredInfoLimit:(unint64_t)infoLimit totalSuggestionsLimit:(unint64_t)suggestionsLimit initiatingProcess:(id)process;
- (_NSRange)selectedRangeInMarkedText;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSGInputSuggestionsRequest

- (_NSRange)selectedRangeInMarkedText
{
  length = self->_selectedRangeInMarkedText.length;
  location = self->_selectedRangeInMarkedText.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)description
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_msgSend(objc_alloc(MEMORY[0x277CCACA8]), "initWithFormat:", @"<PSGInputSuggestionsRequest ctx_sz:%tu cvt:("), -[NSString length](self->_responseContext, "length");
  v5 = [v3 initWithString:v4];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = self->_conversationTurns;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v46 + 1) + 8 * i) description];
        [v5 appendString:v11];

        [v5 appendString:@"; "];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v8);
  }

  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" aci:%@ dac:%d rcb:%d cbi_sz:%tu mkt_sz:%tu stt_sz:%tu cai_sz:%tu mkt_range:{%tu, %tu} lid:%@ bid:%@ rts:("), self->_adaptationContextID, self->_shouldDisableAutoCaps, self->_isResponseContextBlacklisted, -[NSString length](self->_contextBeforeInput, "length"), -[NSString length](self->_markedText, "length"), -[NSString length](self->_selectedText, "length"), -[NSString length](self->_contextAfterInput, "length"), self->_selectedRangeInMarkedText.location, self->_selectedRangeInMarkedText.length, self->_localeIdentifier, self->_bundleIdentifier];
  [v5 appendString:v12];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = self->_recipients;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v5 appendString:*(*(&v42 + 1) + 8 * j)];
        [v5 appendString:@"; "];
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v15);
  }

  [v5 appendString:@") rns:("];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v18 = self->_recipientNames;
  v19 = [(NSSet *)v18 countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v39;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [v5 appendString:*(*(&v38 + 1) + 8 * k)];
        [v5 appendString:@"; "];
      }

      v20 = [(NSSet *)v18 countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v20);
  }

  v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@") tct:%@ app:(", self->_textContentType];
  [v5 appendString:v23];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = self->_availableApps;
  v25 = [(NSSet *)v24 countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [v5 appendString:*(*(&v34 + 1) + 8 * m)];
        [v5 appendString:@"; "];
      }

      v26 = [(NSSet *)v24 countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v26);
  }

  v29 = objc_alloc(MEMORY[0x277CCACA8]);
  totalSuggestionsLimit = self->_totalSuggestionsLimit;
  v31 = [v29 initWithFormat:@" txtl:%tu strl:%tu tsgl:%tu ipr:%@>"], self->_textualResponseLimit, self->_structuredInfoLimit, totalSuggestionsLimit, self->_initiatingProcess);
  [v5 appendString:v31];

  v32 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_responseContext hash];
  v4 = [(NSArray *)self->_conversationTurns hash]- v3 + 32 * v3;
  v5 = [(NSArray *)self->_responseKitConversationTurns count]- v4 + 32 * v4;
  v6 = [(NSString *)self->_adaptationContextID hash];
  v7 = self->_shouldDisableAutoCaps - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
  v8 = self->_isResponseContextBlacklisted - v7 + 32 * v7;
  v9 = [(NSString *)self->_contextBeforeInput hash]- v8 + 32 * v8;
  v10 = [(NSString *)self->_markedText hash]- v9 + 32 * v9;
  v11 = [(NSString *)self->_selectedText hash]- v10 + 32 * v10;
  v12 = [(NSString *)self->_contextAfterInput hash];
  v13 = self->_selectedRangeInMarkedText.location - (v12 - v11 + 32 * v11) + 32 * (v12 - v11 + 32 * v11);
  v14 = self->_selectedRangeInMarkedText.length - v13 + 32 * v13;
  v15 = self->_isDocumentEmpty - v14 + 32 * v14;
  v16 = [(NSString *)self->_localeIdentifier hash]- v15 + 32 * v15;
  v17 = [(NSString *)self->_bundleIdentifier hash]- v16 + 32 * v16;
  v18 = [(NSArray *)self->_recipients hash]- v17 + 32 * v17;
  v19 = [(NSSet *)self->_recipientNames hash]- v18 + 32 * v18;
  v20 = [(NSString *)self->_textContentType hash]- v19 + 32 * v19;
  v21 = [(NSSet *)self->_availableApps hash];
  v22 = self->_textualResponseLimit - (v21 - v20 + 32 * v20) + 32 * (v21 - v20 + 32 * v20);
  v23 = self->_structuredInfoLimit - v22 + 32 * v22;
  v24 = self->_totalSuggestionsLimit - v23 + 32 * v23;
  return [(NSString *)self->_initiatingProcess hash]- v24 + 32 * v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGInputSuggestionsRequest *)self isEqualToRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    goto LABEL_65;
  }

  v5 = self->_responseContext;
  v6 = v5;
  if (v5 == *(requestCopy + 2))
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v8 = self->_conversationTurns;
  v9 = v8;
  if (v8 == *(requestCopy + 3))
  {
  }

  else
  {
    v10 = [(NSArray *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v11 = [(NSArray *)self->_responseKitConversationTurns count];
  if (v11 != [*(requestCopy + 18) count])
  {
    goto LABEL_65;
  }

  v12 = self->_adaptationContextID;
  v13 = v12;
  if (v12 == *(requestCopy + 4))
  {
  }

  else
  {
    v14 = [(NSString *)v12 isEqual:?];

    if ((v14 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  if (self->_shouldDisableAutoCaps != requestCopy[8] || self->_isResponseContextBlacklisted != requestCopy[9])
  {
    goto LABEL_65;
  }

  v15 = self->_contextBeforeInput;
  v16 = v15;
  if (v15 == *(requestCopy + 5))
  {
  }

  else
  {
    v17 = [(NSString *)v15 isEqual:?];

    if ((v17 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v18 = self->_markedText;
  v19 = v18;
  if (v18 == *(requestCopy + 6))
  {
  }

  else
  {
    v20 = [(NSString *)v18 isEqual:?];

    if ((v20 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v21 = self->_selectedText;
  v22 = v21;
  if (v21 == *(requestCopy + 7))
  {
  }

  else
  {
    v23 = [(NSString *)v21 isEqual:?];

    if ((v23 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v24 = self->_contextAfterInput;
  v25 = v24;
  if (v24 == *(requestCopy + 8))
  {
  }

  else
  {
    v26 = [(NSString *)v24 isEqual:?];

    if ((v26 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v27 = 0;
  if (self->_selectedRangeInMarkedText.location == *(requestCopy + 20) && self->_selectedRangeInMarkedText.length == *(requestCopy + 21))
  {
    if (self->_isDocumentEmpty == requestCopy[10])
    {
      v28 = self->_localeIdentifier;
      v29 = v28;
      if (v28 == *(requestCopy + 9))
      {
      }

      else
      {
        v30 = [(NSString *)v28 isEqual:?];

        if ((v30 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      v31 = self->_bundleIdentifier;
      v32 = v31;
      if (v31 == *(requestCopy + 10))
      {
      }

      else
      {
        v33 = [(NSString *)v31 isEqual:?];

        if ((v33 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      v34 = self->_recipients;
      v35 = v34;
      if (v34 == *(requestCopy + 11))
      {
      }

      else
      {
        v36 = [(NSArray *)v34 isEqual:?];

        if ((v36 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      v37 = self->_recipientNames;
      v38 = v37;
      if (v37 == *(requestCopy + 12))
      {
      }

      else
      {
        v39 = [(NSSet *)v37 isEqual:?];

        if ((v39 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      v40 = self->_textContentType;
      v41 = v40;
      if (v40 == *(requestCopy + 13))
      {
      }

      else
      {
        v42 = [(NSString *)v40 isEqual:?];

        if ((v42 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      v43 = self->_availableApps;
      v44 = v43;
      if (v43 == *(requestCopy + 14))
      {
      }

      else
      {
        v45 = [(NSSet *)v43 isEqual:?];

        if ((v45 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      if (self->_textualResponseLimit != *(requestCopy + 15) || self->_structuredInfoLimit != *(requestCopy + 16) || self->_totalSuggestionsLimit != *(requestCopy + 17))
      {
        goto LABEL_65;
      }

      v46 = self->_initiatingProcess;
      v47 = v46;
      if (v46 == *(requestCopy + 19))
      {
        v27 = 1;
      }

      else
      {
        v27 = [(NSString *)v46 isEqual:?];
      }

      goto LABEL_66;
    }

LABEL_65:
    v27 = 0;
  }

LABEL_66:

  return v27;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(NSString *)self->_responseContext copyWithZone:zone];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    v8 = [(NSArray *)self->_conversationTurns copyWithZone:zone];
    v9 = *(v5 + 24);
    *(v5 + 24) = v8;

    v10 = [(NSArray *)self->_responseKitConversationTurns copyWithZone:zone];
    v11 = *(v5 + 144);
    *(v5 + 144) = v10;

    v12 = [(NSString *)self->_adaptationContextID copyWithZone:zone];
    v13 = *(v5 + 32);
    *(v5 + 32) = v12;

    *(v5 + 8) = self->_shouldDisableAutoCaps;
    *(v5 + 9) = self->_isResponseContextBlacklisted;
    v14 = [(NSString *)self->_contextBeforeInput copyWithZone:zone];
    v15 = *(v5 + 40);
    *(v5 + 40) = v14;

    v16 = [(NSString *)self->_markedText copyWithZone:zone];
    v17 = *(v5 + 48);
    *(v5 + 48) = v16;

    v18 = [(NSString *)self->_selectedText copyWithZone:zone];
    v19 = *(v5 + 56);
    *(v5 + 56) = v18;

    v20 = [(NSString *)self->_contextAfterInput copyWithZone:zone];
    v21 = *(v5 + 64);
    *(v5 + 64) = v20;

    *(v5 + 160) = self->_selectedRangeInMarkedText;
    *(v5 + 10) = self->_isDocumentEmpty;
    v22 = [(NSString *)self->_localeIdentifier copyWithZone:zone];
    v23 = *(v5 + 72);
    *(v5 + 72) = v22;

    v24 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
    v25 = *(v5 + 80);
    *(v5 + 80) = v24;

    v26 = [(NSArray *)self->_recipients copyWithZone:zone];
    v27 = *(v5 + 88);
    *(v5 + 88) = v26;

    v28 = [(NSSet *)self->_recipientNames copyWithZone:zone];
    v29 = *(v5 + 96);
    *(v5 + 96) = v28;

    v30 = [(NSString *)self->_textContentType copyWithZone:zone];
    v31 = *(v5 + 104);
    *(v5 + 104) = v30;

    v32 = [(NSSet *)self->_availableApps copyWithZone:zone];
    v33 = *(v5 + 112);
    *(v5 + 112) = v32;

    *(v5 + 120) = self->_textualResponseLimit;
    *(v5 + 128) = self->_structuredInfoLimit;
    *(v5 + 136) = self->_totalSuggestionsLimit;
    objc_storeStrong((v5 + 152), self->_initiatingProcess);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  responseContext = self->_responseContext;
  coderCopy = coder;
  [coderCopy encodeObject:responseContext forKey:@"ctx"];
  [coderCopy encodeObject:self->_conversationTurns forKey:@"cvt"];
  [coderCopy encodeObject:self->_adaptationContextID forKey:@"aci"];
  [coderCopy encodeBool:self->_shouldDisableAutoCaps forKey:@"dac"];
  [coderCopy encodeBool:self->_isResponseContextBlacklisted forKey:@"rcb"];
  [coderCopy encodeObject:self->_contextBeforeInput forKey:@"cbi"];
  [coderCopy encodeObject:self->_markedText forKey:@"mkt"];
  [coderCopy encodeObject:self->_selectedText forKey:@"stt"];
  [coderCopy encodeObject:self->_contextAfterInput forKey:@"cai"];
  [coderCopy encodeInt64:self->_selectedRangeInMarkedText.location forKey:@"loc"];
  [coderCopy encodeInt64:self->_selectedRangeInMarkedText.length forKey:@"len"];
  [coderCopy encodeObject:self->_localeIdentifier forKey:@"lid"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bid"];
  [coderCopy encodeObject:self->_recipients forKey:@"rts"];
  [coderCopy encodeObject:self->_recipientNames forKey:@"rns"];
  [coderCopy encodeObject:self->_textContentType forKey:@"tct"];
  [coderCopy encodeObject:self->_availableApps forKey:@"app"];
  [coderCopy encodeInt64:self->_textualResponseLimit forKey:@"txtl"];
  [coderCopy encodeInt64:self->_structuredInfoLimit forKey:@"strl"];
  [coderCopy encodeInt64:self->_totalSuggestionsLimit forKey:@"tsgl"];
  [coderCopy encodeObject:self->_initiatingProcess forKey:@"ipr"];
}

- (PSGInputSuggestionsRequest)initWithCoder:(id)coder
{
  v95 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = MEMORY[0x277D42620];
  v7 = psg_default_log_handle();
  v86 = v4;
  v87 = [v6 robustDecodeObjectOfClass:v4 forKey:@"ctx" withCoder:coderCopy expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v7];

  v8 = MEMORY[0x277D42620];
  v9 = objc_autoreleasePoolPush();
  v84 = v5;
  v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), v5, 0}];
  objc_autoreleasePoolPop(v9);
  v11 = psg_default_log_handle();
  v12 = [v8 robustDecodeObjectOfClasses:v10 forKey:@"cvt" withCoder:coderCopy expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v11];

  v13 = objc_opt_new();
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v90 objects:v94 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v91;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v91 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v90 + 1) + 8 * i);
        v19 = objc_alloc(MEMORY[0x277D46BC0]);
        text = [v18 text];
        senderID = [v18 senderID];
        timestamp = [v18 timestamp];
        v23 = [v19 initWithString:text senderID:senderID timestamp:timestamp];

        if (!v23)
        {
          v60 = 0;
          v62 = obj;
          v63 = obj;
          v59 = v87;
          selfCopy3 = self;
          goto LABEL_17;
        }

        [v13 addObject:v23];
      }

      v15 = [obj countByEnumeratingWithState:&v90 objects:v94 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v24 = MEMORY[0x277D42620];
  v25 = psg_default_log_handle();
  v77 = [v24 robustDecodeObjectOfClass:v86 forKey:@"aci" withCoder:coderCopy expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v25];

  v74 = [coderCopy decodeBoolForKey:@"dac"];
  v73 = [coderCopy decodeBoolForKey:@"rcb"];
  v26 = MEMORY[0x277D42620];
  v27 = psg_default_log_handle();
  v76 = [v26 robustDecodeObjectOfClass:v86 forKey:@"cbi" withCoder:coderCopy expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v27];

  v28 = MEMORY[0x277D42620];
  v29 = psg_default_log_handle();
  v75 = [v28 robustDecodeObjectOfClass:v86 forKey:@"mkt" withCoder:coderCopy expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v29];

  v30 = MEMORY[0x277D42620];
  v31 = psg_default_log_handle();
  v83 = [v30 robustDecodeObjectOfClass:v86 forKey:@"stt" withCoder:coderCopy expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v31];

  v32 = MEMORY[0x277D42620];
  v33 = psg_default_log_handle();
  v82 = [v32 robustDecodeObjectOfClass:v86 forKey:@"cai" withCoder:coderCopy expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v33];

  v72 = [coderCopy decodeInt64ForKey:@"loc"];
  v71 = [coderCopy decodeInt64ForKey:@"len"];
  v34 = MEMORY[0x277D42620];
  v35 = psg_default_log_handle();
  v81 = [v34 robustDecodeObjectOfClass:v86 forKey:@"lid" withCoder:coderCopy expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v35];

  v36 = MEMORY[0x277D42620];
  v37 = psg_default_log_handle();
  v80 = [v36 robustDecodeObjectOfClass:v86 forKey:@"bid" withCoder:coderCopy expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v37];

  v38 = MEMORY[0x277D42620];
  v39 = objc_autoreleasePoolPush();
  v40 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v86, v84, 0}];
  objc_autoreleasePoolPop(v39);
  v41 = psg_default_log_handle();
  v85 = [v38 robustDecodeObjectOfClasses:v40 forKey:@"rts" withCoder:coderCopy expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v41];

  v42 = MEMORY[0x277D42620];
  v43 = objc_autoreleasePoolPush();
  v44 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v86, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v43);
  v45 = psg_default_log_handle();
  v79 = [v42 robustDecodeObjectOfClasses:v44 forKey:@"rns" withCoder:coderCopy expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v45];

  v46 = MEMORY[0x277D42620];
  v47 = psg_default_log_handle();
  v78 = [v46 robustDecodeObjectOfClass:v86 forKey:@"tct" withCoder:coderCopy expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v47];

  v48 = MEMORY[0x277D42620];
  v49 = objc_autoreleasePoolPush();
  v50 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v86, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v49);
  v51 = psg_default_log_handle();
  v52 = [v48 robustDecodeObjectOfClasses:v50 forKey:@"app" withCoder:coderCopy expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v51];

  v70 = [coderCopy decodeInt64ForKey:@"txtl"];
  v53 = [coderCopy decodeInt64ForKey:@"strl"];
  v54 = [coderCopy decodeInt64ForKey:@"tsgl"];
  v55 = MEMORY[0x277D42620];
  v56 = psg_default_log_handle();
  v57 = [v55 robustDecodeObjectOfClass:v86 forKey:@"ipr" withCoder:coderCopy expectNonNull:1 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v56];

  if (v57)
  {
    error = [coderCopy error];

    v59 = v87;
    if (!error)
    {
      v69 = v54;
      v68 = v53;
      v65 = v75;
      v64 = v76;
      v63 = v77;
      selfCopy3 = [(PSGInputSuggestionsRequest *)self initWithResponseContext:v87 conversationTurns:obj responseKitConversationTurns:v13 adaptationContextID:v77 shouldDisableAutoCaps:v74 isResponseContextBlacklisted:v73 contextBeforeInput:v76 markedText:v75 selectedText:v83 contextAfterInput:v82 selectedRangeInMarkedText:v72 localeIdentifier:v71 bundleIdentifier:v81 recipients:v80 recipientNames:v85 textContentType:v79 availableApps:v78 textualResponseLimit:v52 structuredInfoLimit:v70 totalSuggestionsLimit:v68 initiatingProcess:v69, v57];
      v60 = selfCopy3;
      goto LABEL_16;
    }

    v60 = 0;
    selfCopy3 = self;
  }

  else
  {
    v60 = 0;
    v59 = v87;
    selfCopy3 = self;
  }

  v64 = v76;
  v63 = v77;
  v65 = v75;
LABEL_16:

  v62 = obj;
LABEL_17:

  v66 = *MEMORY[0x277D85DE8];
  return v60;
}

- (PSGInputSuggestionsRequest)initWithResponseContext:(id)context conversationTurns:(id)turns adaptationContextID:(id)d shouldDisableAutoCaps:(BOOL)caps isResponseContextBlacklisted:(BOOL)blacklisted contextBeforeInput:(id)input markedText:(id)text selectedText:(id)self0 contextAfterInput:(id)self1 selectedRangeInMarkedText:(_NSRange)self2 localeIdentifier:(id)self3 bundleIdentifier:(id)self4 recipients:(id)self5 recipientNames:(id)self6 textContentType:(id)self7 availableApps:(id)self8 textualResponseLimit:(unint64_t)self9 structuredInfoLimit:(unint64_t)infoLimit totalSuggestionsLimit:(unint64_t)suggestionsLimit
{
  capsCopy = caps;
  blacklistedCopy = blacklisted;
  v61 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  turnsCopy = turns;
  dCopy = d;
  inputCopy = input;
  textCopy = text;
  selectedTextCopy = selectedText;
  afterInputCopy = afterInput;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  recipientsCopy = recipients;
  namesCopy = names;
  typeCopy = type;
  appsCopy = apps;
  v25 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v26 = turnsCopy;
  v27 = [v26 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v57;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v57 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v56 + 1) + 8 * i);
        text = [v31 text];

        if (text)
        {
          v33 = objc_alloc(MEMORY[0x277D01F70]);
          text2 = [v31 text];
          senderId = [v31 senderId];
          timestamp = [v31 timestamp];
          v37 = [v33 initWithText:text2 senderID:senderId timestamp:timestamp];
          [v25 addObject:v37];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v28);
  }

  suggestionsLimit = [(PSGInputSuggestionsRequest *)self initWithResponseContext:contextCopy conversationTurns:v25 responseKitConversationTurns:v26 adaptationContextID:dCopy shouldDisableAutoCaps:capsCopy isResponseContextBlacklisted:blacklistedCopy contextBeforeInput:inputCopy markedText:textCopy selectedText:selectedTextCopy contextAfterInput:afterInputCopy selectedRangeInMarkedText:markedText.location localeIdentifier:markedText.length bundleIdentifier:identifierCopy recipients:bundleIdentifierCopy recipientNames:recipientsCopy textContentType:namesCopy availableApps:typeCopy textualResponseLimit:appsCopy structuredInfoLimit:limit totalSuggestionsLimit:infoLimit, suggestionsLimit];
  v38 = *MEMORY[0x277D85DE8];
  return suggestionsLimit;
}

- (PSGInputSuggestionsRequest)initWithResponseContext:(id)context conversationTurns:(id)turns adaptationContextID:(id)d shouldDisableAutoCaps:(BOOL)caps isResponseContextBlacklisted:(BOOL)blacklisted contextBeforeInput:(id)input markedText:(id)text selectedText:(id)self0 contextAfterInput:(id)self1 selectedRangeInMarkedText:(_NSRange)self2 localeIdentifier:(id)self3 bundleIdentifier:(id)self4 recipients:(id)self5 textContentType:(id)self6 availableApps:(id)self7 textualResponseLimit:(unint64_t)self8 structuredInfoLimit:(unint64_t)self9
{
  capsCopy = caps;
  blacklistedCopy = blacklisted;
  v58 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  turnsCopy = turns;
  dCopy = d;
  inputCopy = input;
  textCopy = text;
  selectedTextCopy = selectedText;
  afterInputCopy = afterInput;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  recipientsCopy = recipients;
  typeCopy = type;
  appsCopy = apps;
  v23 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v24 = turnsCopy;
  v25 = [v24 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v54;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v54 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v53 + 1) + 8 * i);
        text = [v29 text];

        if (text)
        {
          v31 = objc_alloc(MEMORY[0x277D01F70]);
          text2 = [v29 text];
          senderId = [v29 senderId];
          timestamp = [v29 timestamp];
          v35 = [v31 initWithText:text2 senderID:senderId timestamp:timestamp];
          [v23 addObject:v35];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v26);
  }

  v49 = [(PSGInputSuggestionsRequest *)self initWithResponseContext:contextCopy conversationTurns:v23 responseKitConversationTurns:v24 adaptationContextID:dCopy shouldDisableAutoCaps:capsCopy isResponseContextBlacklisted:blacklistedCopy contextBeforeInput:inputCopy markedText:textCopy selectedText:selectedTextCopy contextAfterInput:afterInputCopy selectedRangeInMarkedText:markedText.location localeIdentifier:markedText.length bundleIdentifier:identifierCopy recipients:bundleIdentifierCopy recipientNames:recipientsCopy textContentType:0 availableApps:typeCopy textualResponseLimit:appsCopy structuredInfoLimit:limit totalSuggestionsLimit:infoLimit, 3];
  v36 = *MEMORY[0x277D85DE8];
  return v49;
}

- (PSGInputSuggestionsRequest)initWithResponseContext:(id)context conversationTurns:(id)turns responseKitConversationTurns:(id)conversationTurns adaptationContextID:(id)d shouldDisableAutoCaps:(BOOL)caps isResponseContextBlacklisted:(BOOL)blacklisted contextBeforeInput:(id)input markedText:(id)self0 selectedText:(id)self1 contextAfterInput:(id)self2 selectedRangeInMarkedText:(_NSRange)self3 localeIdentifier:(id)self4 bundleIdentifier:(id)self5 recipients:(id)self6 recipientNames:(id)self7 textContentType:(id)self8 availableApps:(id)self9 textualResponseLimit:(unint64_t)limit structuredInfoLimit:(unint64_t)infoLimit totalSuggestionsLimit:(unint64_t)suggestionsLimit
{
  capsCopy = caps;
  blacklistedCopy = blacklisted;
  v31 = initWithResponseContext_conversationTurns_responseKitConversationTurns_adaptationContextID_shouldDisableAutoCaps_isResponseContextBlacklisted_contextBeforeInput_markedText_selectedText_contextAfterInput_selectedRangeInMarkedText_localeIdentifier_bundleIdentifier_recipients_recipientNames_textContentType_availableApps_textualResponseLimit_structuredInfoLimit_totalSuggestionsLimit___pasOnceToken4;
  appsCopy = apps;
  typeCopy = type;
  namesCopy = names;
  recipientsCopy = recipients;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  afterInputCopy = afterInput;
  selectedTextCopy = selectedText;
  textCopy = text;
  inputCopy = input;
  dCopy = d;
  conversationTurnsCopy = conversationTurns;
  turnsCopy = turns;
  contextCopy = context;
  if (v31 != -1)
  {
    v30 = contextCopy;
    dispatch_once(&initWithResponseContext_conversationTurns_responseKitConversationTurns_adaptationContextID_shouldDisableAutoCaps_isResponseContextBlacklisted_contextBeforeInput_markedText_selectedText_contextAfterInput_selectedRangeInMarkedText_localeIdentifier_bundleIdentifier_recipients_recipientNames_textContentType_availableApps_textualResponseLimit_structuredInfoLimit_totalSuggestionsLimit___pasOnceToken4, &__block_literal_global_97);
    contextCopy = v30;
  }

  v34 = contextCopy;
  initWithResponseContext_conversationTurns_responseKitConversationTurns_adaptationContextID_shouldDisableAutoCaps_isResponseContextBlacklisted_contextBeforeInput_markedText_selectedText_contextAfterInput_selectedRangeInMarkedText_localeIdentifier_bundleIdentifier_recipients_recipientNames_textContentType_availableApps_textualResponseLimit_structuredInfoLimit_totalSuggestionsLimit___pasExprOnceResult = [(PSGInputSuggestionsRequest *)self initWithResponseContext:contextCopy conversationTurns:turnsCopy responseKitConversationTurns:conversationTurnsCopy adaptationContextID:dCopy shouldDisableAutoCaps:capsCopy isResponseContextBlacklisted:blacklistedCopy contextBeforeInput:inputCopy markedText:textCopy selectedText:selectedTextCopy contextAfterInput:afterInputCopy selectedRangeInMarkedText:markedText.location localeIdentifier:markedText.length bundleIdentifier:identifierCopy recipients:bundleIdentifierCopy recipientNames:recipientsCopy textContentType:namesCopy availableApps:typeCopy textualResponseLimit:appsCopy structuredInfoLimit:limit totalSuggestionsLimit:infoLimit initiatingProcess:suggestionsLimit, initWithResponseContext_conversationTurns_responseKitConversationTurns_adaptationContextID_shouldDisableAutoCaps_isResponseContextBlacklisted_contextBeforeInput_markedText_selectedText_contextAfterInput_selectedRangeInMarkedText_localeIdentifier_bundleIdentifier_recipients_recipientNames_textContentType_availableApps_textualResponseLimit_structuredInfoLimit_totalSuggestionsLimit___pasExprOnceResult];

  return initWithResponseContext_conversationTurns_responseKitConversationTurns_adaptationContextID_shouldDisableAutoCaps_isResponseContextBlacklisted_contextBeforeInput_markedText_selectedText_contextAfterInput_selectedRangeInMarkedText_localeIdentifier_bundleIdentifier_recipients_recipientNames_textContentType_availableApps_textualResponseLimit_structuredInfoLimit_totalSuggestionsLimit___pasExprOnceResult;
}

void __412__PSGInputSuggestionsRequest_initWithResponseContext_conversationTurns_responseKitConversationTurns_adaptationContextID_shouldDisableAutoCaps_isResponseContextBlacklisted_contextBeforeInput_markedText_selectedText_contextAfterInput_selectedRangeInMarkedText_localeIdentifier_bundleIdentifier_recipients_recipientNames_textContentType_availableApps_textualResponseLimit_structuredInfoLimit_totalSuggestionsLimit___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v2 = [v1 processName];
  v3 = initWithResponseContext_conversationTurns_responseKitConversationTurns_adaptationContextID_shouldDisableAutoCaps_isResponseContextBlacklisted_contextBeforeInput_markedText_selectedText_contextAfterInput_selectedRangeInMarkedText_localeIdentifier_bundleIdentifier_recipients_recipientNames_textContentType_availableApps_textualResponseLimit_structuredInfoLimit_totalSuggestionsLimit___pasExprOnceResult;
  initWithResponseContext_conversationTurns_responseKitConversationTurns_adaptationContextID_shouldDisableAutoCaps_isResponseContextBlacklisted_contextBeforeInput_markedText_selectedText_contextAfterInput_selectedRangeInMarkedText_localeIdentifier_bundleIdentifier_recipients_recipientNames_textContentType_availableApps_textualResponseLimit_structuredInfoLimit_totalSuggestionsLimit___pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

- (PSGInputSuggestionsRequest)initWithResponseContext:(id)context conversationTurns:(id)turns responseKitConversationTurns:(id)conversationTurns adaptationContextID:(id)d shouldDisableAutoCaps:(BOOL)caps isResponseContextBlacklisted:(BOOL)blacklisted contextBeforeInput:(id)input markedText:(id)self0 selectedText:(id)self1 contextAfterInput:(id)self2 selectedRangeInMarkedText:(_NSRange)self3 localeIdentifier:(id)self4 bundleIdentifier:(id)self5 recipients:(id)self6 recipientNames:(id)self7 textContentType:(id)self8 availableApps:(id)self9 textualResponseLimit:(unint64_t)limit structuredInfoLimit:(unint64_t)infoLimit totalSuggestionsLimit:(unint64_t)suggestionsLimit initiatingProcess:(id)process
{
  contextCopy = context;
  turnsCopy = turns;
  turnsCopy2 = turns;
  conversationTurnsCopy = conversationTurns;
  conversationTurnsCopy2 = conversationTurns;
  dCopy = d;
  dCopy2 = d;
  inputCopy = input;
  textCopy = text;
  selectedTextCopy = selectedText;
  afterInputCopy = afterInput;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  recipientsCopy = recipients;
  namesCopy = names;
  typeCopy = type;
  v30 = turnsCopy2;
  appsCopy = apps;
  processCopy = process;
  v55.receiver = self;
  v55.super_class = PSGInputSuggestionsRequest;
  v33 = [(PSGInputSuggestionsRequest *)&v55 init];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_responseContext, context);
    objc_storeStrong(&v34->_conversationTurns, turnsCopy);
    objc_storeStrong(&v34->_responseKitConversationTurns, conversationTurnsCopy);
    objc_storeStrong(&v34->_adaptationContextID, dCopy);
    v34->_shouldDisableAutoCaps = caps;
    v34->_isResponseContextBlacklisted = blacklisted;
    objc_storeStrong(&v34->_contextBeforeInput, input);
    objc_storeStrong(&v34->_markedText, text);
    objc_storeStrong(&v34->_selectedText, selectedText);
    objc_storeStrong(&v34->_contextAfterInput, afterInput);
    v34->_selectedRangeInMarkedText = markedText;
    if ([inputCopy length])
    {
      v35 = 0;
    }

    else if ([selectedTextCopy length])
    {
      v35 = 0;
    }

    else if ([textCopy length])
    {
      v35 = 0;
    }

    else
    {
      v35 = [afterInputCopy length] == 0;
    }

    v34->_isDocumentEmpty = v35;
    objc_storeStrong(&v34->_localeIdentifier, identifier);
    objc_storeStrong(&v34->_bundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v34->_recipients, recipients);
    objc_storeStrong(&v34->_recipientNames, names);
    objc_storeStrong(&v34->_textContentType, type);
    objc_storeStrong(&v34->_availableApps, apps);
    suggestionsLimitCopy = limit;
    suggestionsLimitCopy2 = infoLimit;
    if (limit >= suggestionsLimit)
    {
      suggestionsLimitCopy = suggestionsLimit;
    }

    if (infoLimit >= suggestionsLimit)
    {
      suggestionsLimitCopy2 = suggestionsLimit;
    }

    v34->_textualResponseLimit = suggestionsLimitCopy;
    v34->_structuredInfoLimit = suggestionsLimitCopy2;
    v34->_totalSuggestionsLimit = suggestionsLimit;
    objc_storeStrong(&v34->_initiatingProcess, process);
    v30 = turnsCopy2;
  }

  return v34;
}

@end