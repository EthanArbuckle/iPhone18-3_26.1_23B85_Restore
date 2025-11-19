@interface PSGInputSuggestionsRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (PSGInputSuggestionsRequest)initWithCoder:(id)a3;
- (PSGInputSuggestionsRequest)initWithResponseContext:(id)a3 conversationTurns:(id)a4 adaptationContextID:(id)a5 shouldDisableAutoCaps:(BOOL)a6 isResponseContextBlacklisted:(BOOL)a7 contextBeforeInput:(id)a8 markedText:(id)a9 selectedText:(id)a10 contextAfterInput:(id)a11 selectedRangeInMarkedText:(_NSRange)a12 localeIdentifier:(id)a13 bundleIdentifier:(id)a14 recipients:(id)a15 recipientNames:(id)a16 textContentType:(id)a17 availableApps:(id)a18 textualResponseLimit:(unint64_t)a19 structuredInfoLimit:(unint64_t)a20 totalSuggestionsLimit:(unint64_t)a21;
- (PSGInputSuggestionsRequest)initWithResponseContext:(id)a3 conversationTurns:(id)a4 adaptationContextID:(id)a5 shouldDisableAutoCaps:(BOOL)a6 isResponseContextBlacklisted:(BOOL)a7 contextBeforeInput:(id)a8 markedText:(id)a9 selectedText:(id)a10 contextAfterInput:(id)a11 selectedRangeInMarkedText:(_NSRange)a12 localeIdentifier:(id)a13 bundleIdentifier:(id)a14 recipients:(id)a15 textContentType:(id)a16 availableApps:(id)a17 textualResponseLimit:(unint64_t)a18 structuredInfoLimit:(unint64_t)a19;
- (PSGInputSuggestionsRequest)initWithResponseContext:(id)a3 conversationTurns:(id)a4 responseKitConversationTurns:(id)a5 adaptationContextID:(id)a6 shouldDisableAutoCaps:(BOOL)a7 isResponseContextBlacklisted:(BOOL)a8 contextBeforeInput:(id)a9 markedText:(id)a10 selectedText:(id)a11 contextAfterInput:(id)a12 selectedRangeInMarkedText:(_NSRange)a13 localeIdentifier:(id)a14 bundleIdentifier:(id)a15 recipients:(id)a16 recipientNames:(id)a17 textContentType:(id)a18 availableApps:(id)a19 textualResponseLimit:(unint64_t)a20 structuredInfoLimit:(unint64_t)a21 totalSuggestionsLimit:(unint64_t)a22;
- (PSGInputSuggestionsRequest)initWithResponseContext:(id)a3 conversationTurns:(id)a4 responseKitConversationTurns:(id)a5 adaptationContextID:(id)a6 shouldDisableAutoCaps:(BOOL)a7 isResponseContextBlacklisted:(BOOL)a8 contextBeforeInput:(id)a9 markedText:(id)a10 selectedText:(id)a11 contextAfterInput:(id)a12 selectedRangeInMarkedText:(_NSRange)a13 localeIdentifier:(id)a14 bundleIdentifier:(id)a15 recipients:(id)a16 recipientNames:(id)a17 textContentType:(id)a18 availableApps:(id)a19 textualResponseLimit:(unint64_t)a20 structuredInfoLimit:(unint64_t)a21 totalSuggestionsLimit:(unint64_t)a22 initiatingProcess:(id)a23;
- (_NSRange)selectedRangeInMarkedText;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGInputSuggestionsRequest *)self isEqualToRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_65;
  }

  v5 = self->_responseContext;
  v6 = v5;
  if (v5 == *(v4 + 2))
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
  if (v8 == *(v4 + 3))
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
  if (v11 != [*(v4 + 18) count])
  {
    goto LABEL_65;
  }

  v12 = self->_adaptationContextID;
  v13 = v12;
  if (v12 == *(v4 + 4))
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

  if (self->_shouldDisableAutoCaps != v4[8] || self->_isResponseContextBlacklisted != v4[9])
  {
    goto LABEL_65;
  }

  v15 = self->_contextBeforeInput;
  v16 = v15;
  if (v15 == *(v4 + 5))
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
  if (v18 == *(v4 + 6))
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
  if (v21 == *(v4 + 7))
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
  if (v24 == *(v4 + 8))
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
  if (self->_selectedRangeInMarkedText.location == *(v4 + 20) && self->_selectedRangeInMarkedText.length == *(v4 + 21))
  {
    if (self->_isDocumentEmpty == v4[10])
    {
      v28 = self->_localeIdentifier;
      v29 = v28;
      if (v28 == *(v4 + 9))
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
      if (v31 == *(v4 + 10))
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
      if (v34 == *(v4 + 11))
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
      if (v37 == *(v4 + 12))
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
      if (v40 == *(v4 + 13))
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
      if (v43 == *(v4 + 14))
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

      if (self->_textualResponseLimit != *(v4 + 15) || self->_structuredInfoLimit != *(v4 + 16) || self->_totalSuggestionsLimit != *(v4 + 17))
      {
        goto LABEL_65;
      }

      v46 = self->_initiatingProcess;
      v47 = v46;
      if (v46 == *(v4 + 19))
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

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(NSString *)self->_responseContext copyWithZone:a3];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    v8 = [(NSArray *)self->_conversationTurns copyWithZone:a3];
    v9 = *(v5 + 24);
    *(v5 + 24) = v8;

    v10 = [(NSArray *)self->_responseKitConversationTurns copyWithZone:a3];
    v11 = *(v5 + 144);
    *(v5 + 144) = v10;

    v12 = [(NSString *)self->_adaptationContextID copyWithZone:a3];
    v13 = *(v5 + 32);
    *(v5 + 32) = v12;

    *(v5 + 8) = self->_shouldDisableAutoCaps;
    *(v5 + 9) = self->_isResponseContextBlacklisted;
    v14 = [(NSString *)self->_contextBeforeInput copyWithZone:a3];
    v15 = *(v5 + 40);
    *(v5 + 40) = v14;

    v16 = [(NSString *)self->_markedText copyWithZone:a3];
    v17 = *(v5 + 48);
    *(v5 + 48) = v16;

    v18 = [(NSString *)self->_selectedText copyWithZone:a3];
    v19 = *(v5 + 56);
    *(v5 + 56) = v18;

    v20 = [(NSString *)self->_contextAfterInput copyWithZone:a3];
    v21 = *(v5 + 64);
    *(v5 + 64) = v20;

    *(v5 + 160) = self->_selectedRangeInMarkedText;
    *(v5 + 10) = self->_isDocumentEmpty;
    v22 = [(NSString *)self->_localeIdentifier copyWithZone:a3];
    v23 = *(v5 + 72);
    *(v5 + 72) = v22;

    v24 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
    v25 = *(v5 + 80);
    *(v5 + 80) = v24;

    v26 = [(NSArray *)self->_recipients copyWithZone:a3];
    v27 = *(v5 + 88);
    *(v5 + 88) = v26;

    v28 = [(NSSet *)self->_recipientNames copyWithZone:a3];
    v29 = *(v5 + 96);
    *(v5 + 96) = v28;

    v30 = [(NSString *)self->_textContentType copyWithZone:a3];
    v31 = *(v5 + 104);
    *(v5 + 104) = v30;

    v32 = [(NSSet *)self->_availableApps copyWithZone:a3];
    v33 = *(v5 + 112);
    *(v5 + 112) = v32;

    *(v5 + 120) = self->_textualResponseLimit;
    *(v5 + 128) = self->_structuredInfoLimit;
    *(v5 + 136) = self->_totalSuggestionsLimit;
    objc_storeStrong((v5 + 152), self->_initiatingProcess);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  responseContext = self->_responseContext;
  v5 = a3;
  [v5 encodeObject:responseContext forKey:@"ctx"];
  [v5 encodeObject:self->_conversationTurns forKey:@"cvt"];
  [v5 encodeObject:self->_adaptationContextID forKey:@"aci"];
  [v5 encodeBool:self->_shouldDisableAutoCaps forKey:@"dac"];
  [v5 encodeBool:self->_isResponseContextBlacklisted forKey:@"rcb"];
  [v5 encodeObject:self->_contextBeforeInput forKey:@"cbi"];
  [v5 encodeObject:self->_markedText forKey:@"mkt"];
  [v5 encodeObject:self->_selectedText forKey:@"stt"];
  [v5 encodeObject:self->_contextAfterInput forKey:@"cai"];
  [v5 encodeInt64:self->_selectedRangeInMarkedText.location forKey:@"loc"];
  [v5 encodeInt64:self->_selectedRangeInMarkedText.length forKey:@"len"];
  [v5 encodeObject:self->_localeIdentifier forKey:@"lid"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bid"];
  [v5 encodeObject:self->_recipients forKey:@"rts"];
  [v5 encodeObject:self->_recipientNames forKey:@"rns"];
  [v5 encodeObject:self->_textContentType forKey:@"tct"];
  [v5 encodeObject:self->_availableApps forKey:@"app"];
  [v5 encodeInt64:self->_textualResponseLimit forKey:@"txtl"];
  [v5 encodeInt64:self->_structuredInfoLimit forKey:@"strl"];
  [v5 encodeInt64:self->_totalSuggestionsLimit forKey:@"tsgl"];
  [v5 encodeObject:self->_initiatingProcess forKey:@"ipr"];
}

- (PSGInputSuggestionsRequest)initWithCoder:(id)a3
{
  v95 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = MEMORY[0x277D42620];
  v7 = psg_default_log_handle();
  v86 = v4;
  v87 = [v6 robustDecodeObjectOfClass:v4 forKey:@"ctx" withCoder:v3 expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v7];

  v8 = MEMORY[0x277D42620];
  v9 = objc_autoreleasePoolPush();
  v84 = v5;
  v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), v5, 0}];
  objc_autoreleasePoolPop(v9);
  v11 = psg_default_log_handle();
  v12 = [v8 robustDecodeObjectOfClasses:v10 forKey:@"cvt" withCoder:v3 expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v11];

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
        v20 = [v18 text];
        v21 = [v18 senderID];
        v22 = [v18 timestamp];
        v23 = [v19 initWithString:v20 senderID:v21 timestamp:v22];

        if (!v23)
        {
          v60 = 0;
          v62 = obj;
          v63 = obj;
          v59 = v87;
          v61 = self;
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
  v77 = [v24 robustDecodeObjectOfClass:v86 forKey:@"aci" withCoder:v3 expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v25];

  v74 = [v3 decodeBoolForKey:@"dac"];
  v73 = [v3 decodeBoolForKey:@"rcb"];
  v26 = MEMORY[0x277D42620];
  v27 = psg_default_log_handle();
  v76 = [v26 robustDecodeObjectOfClass:v86 forKey:@"cbi" withCoder:v3 expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v27];

  v28 = MEMORY[0x277D42620];
  v29 = psg_default_log_handle();
  v75 = [v28 robustDecodeObjectOfClass:v86 forKey:@"mkt" withCoder:v3 expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v29];

  v30 = MEMORY[0x277D42620];
  v31 = psg_default_log_handle();
  v83 = [v30 robustDecodeObjectOfClass:v86 forKey:@"stt" withCoder:v3 expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v31];

  v32 = MEMORY[0x277D42620];
  v33 = psg_default_log_handle();
  v82 = [v32 robustDecodeObjectOfClass:v86 forKey:@"cai" withCoder:v3 expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v33];

  v72 = [v3 decodeInt64ForKey:@"loc"];
  v71 = [v3 decodeInt64ForKey:@"len"];
  v34 = MEMORY[0x277D42620];
  v35 = psg_default_log_handle();
  v81 = [v34 robustDecodeObjectOfClass:v86 forKey:@"lid" withCoder:v3 expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v35];

  v36 = MEMORY[0x277D42620];
  v37 = psg_default_log_handle();
  v80 = [v36 robustDecodeObjectOfClass:v86 forKey:@"bid" withCoder:v3 expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v37];

  v38 = MEMORY[0x277D42620];
  v39 = objc_autoreleasePoolPush();
  v40 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v86, v84, 0}];
  objc_autoreleasePoolPop(v39);
  v41 = psg_default_log_handle();
  v85 = [v38 robustDecodeObjectOfClasses:v40 forKey:@"rts" withCoder:v3 expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v41];

  v42 = MEMORY[0x277D42620];
  v43 = objc_autoreleasePoolPush();
  v44 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v86, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v43);
  v45 = psg_default_log_handle();
  v79 = [v42 robustDecodeObjectOfClasses:v44 forKey:@"rns" withCoder:v3 expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v45];

  v46 = MEMORY[0x277D42620];
  v47 = psg_default_log_handle();
  v78 = [v46 robustDecodeObjectOfClass:v86 forKey:@"tct" withCoder:v3 expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v47];

  v48 = MEMORY[0x277D42620];
  v49 = objc_autoreleasePoolPush();
  v50 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v86, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v49);
  v51 = psg_default_log_handle();
  v52 = [v48 robustDecodeObjectOfClasses:v50 forKey:@"app" withCoder:v3 expectNonNull:0 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v51];

  v70 = [v3 decodeInt64ForKey:@"txtl"];
  v53 = [v3 decodeInt64ForKey:@"strl"];
  v54 = [v3 decodeInt64ForKey:@"tsgl"];
  v55 = MEMORY[0x277D42620];
  v56 = psg_default_log_handle();
  v57 = [v55 robustDecodeObjectOfClass:v86 forKey:@"ipr" withCoder:v3 expectNonNull:1 errorDomain:@"PSGErrorDomain" errorCode:3 logHandle:v56];

  if (v57)
  {
    v58 = [v3 error];

    v59 = v87;
    if (!v58)
    {
      v69 = v54;
      v68 = v53;
      v65 = v75;
      v64 = v76;
      v63 = v77;
      v61 = [(PSGInputSuggestionsRequest *)self initWithResponseContext:v87 conversationTurns:obj responseKitConversationTurns:v13 adaptationContextID:v77 shouldDisableAutoCaps:v74 isResponseContextBlacklisted:v73 contextBeforeInput:v76 markedText:v75 selectedText:v83 contextAfterInput:v82 selectedRangeInMarkedText:v72 localeIdentifier:v71 bundleIdentifier:v81 recipients:v80 recipientNames:v85 textContentType:v79 availableApps:v78 textualResponseLimit:v52 structuredInfoLimit:v70 totalSuggestionsLimit:v68 initiatingProcess:v69, v57];
      v60 = v61;
      goto LABEL_16;
    }

    v60 = 0;
    v61 = self;
  }

  else
  {
    v60 = 0;
    v59 = v87;
    v61 = self;
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

- (PSGInputSuggestionsRequest)initWithResponseContext:(id)a3 conversationTurns:(id)a4 adaptationContextID:(id)a5 shouldDisableAutoCaps:(BOOL)a6 isResponseContextBlacklisted:(BOOL)a7 contextBeforeInput:(id)a8 markedText:(id)a9 selectedText:(id)a10 contextAfterInput:(id)a11 selectedRangeInMarkedText:(_NSRange)a12 localeIdentifier:(id)a13 bundleIdentifier:(id)a14 recipients:(id)a15 recipientNames:(id)a16 textContentType:(id)a17 availableApps:(id)a18 textualResponseLimit:(unint64_t)a19 structuredInfoLimit:(unint64_t)a20 totalSuggestionsLimit:(unint64_t)a21
{
  v49 = a6;
  v50 = a7;
  v61 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v24 = a4;
  v54 = a5;
  v53 = a8;
  v52 = a9;
  v47 = a10;
  v46 = a11;
  v45 = a13;
  v44 = a14;
  v43 = a15;
  v42 = a16;
  v41 = a17;
  v40 = a18;
  v25 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v26 = v24;
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
        v32 = [v31 text];

        if (v32)
        {
          v33 = objc_alloc(MEMORY[0x277D01F70]);
          v34 = [v31 text];
          v35 = [v31 senderId];
          v36 = [v31 timestamp];
          v37 = [v33 initWithText:v34 senderID:v35 timestamp:v36];
          [v25 addObject:v37];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v28);
  }

  v51 = [(PSGInputSuggestionsRequest *)self initWithResponseContext:v55 conversationTurns:v25 responseKitConversationTurns:v26 adaptationContextID:v54 shouldDisableAutoCaps:v49 isResponseContextBlacklisted:v50 contextBeforeInput:v53 markedText:v52 selectedText:v47 contextAfterInput:v46 selectedRangeInMarkedText:a12.location localeIdentifier:a12.length bundleIdentifier:v45 recipients:v44 recipientNames:v43 textContentType:v42 availableApps:v41 textualResponseLimit:v40 structuredInfoLimit:a19 totalSuggestionsLimit:a20, a21];
  v38 = *MEMORY[0x277D85DE8];
  return v51;
}

- (PSGInputSuggestionsRequest)initWithResponseContext:(id)a3 conversationTurns:(id)a4 adaptationContextID:(id)a5 shouldDisableAutoCaps:(BOOL)a6 isResponseContextBlacklisted:(BOOL)a7 contextBeforeInput:(id)a8 markedText:(id)a9 selectedText:(id)a10 contextAfterInput:(id)a11 selectedRangeInMarkedText:(_NSRange)a12 localeIdentifier:(id)a13 bundleIdentifier:(id)a14 recipients:(id)a15 textContentType:(id)a16 availableApps:(id)a17 textualResponseLimit:(unint64_t)a18 structuredInfoLimit:(unint64_t)a19
{
  v47 = a6;
  v48 = a7;
  v58 = *MEMORY[0x277D85DE8];
  v52 = a3;
  v22 = a4;
  v51 = a5;
  v50 = a8;
  v45 = a9;
  v44 = a10;
  v43 = a11;
  v42 = a13;
  v41 = a14;
  v40 = a15;
  v39 = a16;
  v38 = a17;
  v23 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v24 = v22;
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
        v30 = [v29 text];

        if (v30)
        {
          v31 = objc_alloc(MEMORY[0x277D01F70]);
          v32 = [v29 text];
          v33 = [v29 senderId];
          v34 = [v29 timestamp];
          v35 = [v31 initWithText:v32 senderID:v33 timestamp:v34];
          [v23 addObject:v35];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v26);
  }

  v49 = [(PSGInputSuggestionsRequest *)self initWithResponseContext:v52 conversationTurns:v23 responseKitConversationTurns:v24 adaptationContextID:v51 shouldDisableAutoCaps:v47 isResponseContextBlacklisted:v48 contextBeforeInput:v50 markedText:v45 selectedText:v44 contextAfterInput:v43 selectedRangeInMarkedText:a12.location localeIdentifier:a12.length bundleIdentifier:v42 recipients:v41 recipientNames:v40 textContentType:0 availableApps:v39 textualResponseLimit:v38 structuredInfoLimit:a18 totalSuggestionsLimit:a19, 3];
  v36 = *MEMORY[0x277D85DE8];
  return v49;
}

- (PSGInputSuggestionsRequest)initWithResponseContext:(id)a3 conversationTurns:(id)a4 responseKitConversationTurns:(id)a5 adaptationContextID:(id)a6 shouldDisableAutoCaps:(BOOL)a7 isResponseContextBlacklisted:(BOOL)a8 contextBeforeInput:(id)a9 markedText:(id)a10 selectedText:(id)a11 contextAfterInput:(id)a12 selectedRangeInMarkedText:(_NSRange)a13 localeIdentifier:(id)a14 bundleIdentifier:(id)a15 recipients:(id)a16 recipientNames:(id)a17 textContentType:(id)a18 availableApps:(id)a19 textualResponseLimit:(unint64_t)a20 structuredInfoLimit:(unint64_t)a21 totalSuggestionsLimit:(unint64_t)a22
{
  v42 = a7;
  v43 = a8;
  v31 = initWithResponseContext_conversationTurns_responseKitConversationTurns_adaptationContextID_shouldDisableAutoCaps_isResponseContextBlacklisted_contextBeforeInput_markedText_selectedText_contextAfterInput_selectedRangeInMarkedText_localeIdentifier_bundleIdentifier_recipients_recipientNames_textContentType_availableApps_textualResponseLimit_structuredInfoLimit_totalSuggestionsLimit___pasOnceToken4;
  v40 = a19;
  v35 = a18;
  v39 = a17;
  v38 = a16;
  v23 = a15;
  v37 = a14;
  v36 = a12;
  v24 = a11;
  v25 = a10;
  v47 = a9;
  v46 = a6;
  v45 = a5;
  v26 = a4;
  v27 = a3;
  if (v31 != -1)
  {
    v30 = v27;
    dispatch_once(&initWithResponseContext_conversationTurns_responseKitConversationTurns_adaptationContextID_shouldDisableAutoCaps_isResponseContextBlacklisted_contextBeforeInput_markedText_selectedText_contextAfterInput_selectedRangeInMarkedText_localeIdentifier_bundleIdentifier_recipients_recipientNames_textContentType_availableApps_textualResponseLimit_structuredInfoLimit_totalSuggestionsLimit___pasOnceToken4, &__block_literal_global_97);
    v27 = v30;
  }

  v34 = v27;
  v28 = [(PSGInputSuggestionsRequest *)self initWithResponseContext:v27 conversationTurns:v26 responseKitConversationTurns:v45 adaptationContextID:v46 shouldDisableAutoCaps:v42 isResponseContextBlacklisted:v43 contextBeforeInput:v47 markedText:v25 selectedText:v24 contextAfterInput:v36 selectedRangeInMarkedText:a13.location localeIdentifier:a13.length bundleIdentifier:v37 recipients:v23 recipientNames:v38 textContentType:v39 availableApps:v35 textualResponseLimit:v40 structuredInfoLimit:a20 totalSuggestionsLimit:a21 initiatingProcess:a22, initWithResponseContext_conversationTurns_responseKitConversationTurns_adaptationContextID_shouldDisableAutoCaps_isResponseContextBlacklisted_contextBeforeInput_markedText_selectedText_contextAfterInput_selectedRangeInMarkedText_localeIdentifier_bundleIdentifier_recipients_recipientNames_textContentType_availableApps_textualResponseLimit_structuredInfoLimit_totalSuggestionsLimit___pasExprOnceResult];

  return v28;
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

- (PSGInputSuggestionsRequest)initWithResponseContext:(id)a3 conversationTurns:(id)a4 responseKitConversationTurns:(id)a5 adaptationContextID:(id)a6 shouldDisableAutoCaps:(BOOL)a7 isResponseContextBlacklisted:(BOOL)a8 contextBeforeInput:(id)a9 markedText:(id)a10 selectedText:(id)a11 contextAfterInput:(id)a12 selectedRangeInMarkedText:(_NSRange)a13 localeIdentifier:(id)a14 bundleIdentifier:(id)a15 recipients:(id)a16 recipientNames:(id)a17 textContentType:(id)a18 availableApps:(id)a19 textualResponseLimit:(unint64_t)a20 structuredInfoLimit:(unint64_t)a21 totalSuggestionsLimit:(unint64_t)a22 initiatingProcess:(id)a23
{
  v50 = a3;
  v40 = a4;
  v54 = a4;
  v41 = a5;
  v49 = a5;
  v42 = a6;
  v48 = a6;
  v26 = a9;
  v52 = a10;
  v53 = a11;
  v51 = a12;
  v47 = a14;
  v46 = a15;
  v27 = a16;
  v28 = a17;
  v29 = a18;
  v30 = v54;
  v31 = a19;
  v32 = a23;
  v55.receiver = self;
  v55.super_class = PSGInputSuggestionsRequest;
  v33 = [(PSGInputSuggestionsRequest *)&v55 init];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_responseContext, a3);
    objc_storeStrong(&v34->_conversationTurns, v40);
    objc_storeStrong(&v34->_responseKitConversationTurns, v41);
    objc_storeStrong(&v34->_adaptationContextID, v42);
    v34->_shouldDisableAutoCaps = a7;
    v34->_isResponseContextBlacklisted = a8;
    objc_storeStrong(&v34->_contextBeforeInput, a9);
    objc_storeStrong(&v34->_markedText, a10);
    objc_storeStrong(&v34->_selectedText, a11);
    objc_storeStrong(&v34->_contextAfterInput, a12);
    v34->_selectedRangeInMarkedText = a13;
    if ([v26 length])
    {
      v35 = 0;
    }

    else if ([v53 length])
    {
      v35 = 0;
    }

    else if ([v52 length])
    {
      v35 = 0;
    }

    else
    {
      v35 = [v51 length] == 0;
    }

    v34->_isDocumentEmpty = v35;
    objc_storeStrong(&v34->_localeIdentifier, a14);
    objc_storeStrong(&v34->_bundleIdentifier, a15);
    objc_storeStrong(&v34->_recipients, a16);
    objc_storeStrong(&v34->_recipientNames, a17);
    objc_storeStrong(&v34->_textContentType, a18);
    objc_storeStrong(&v34->_availableApps, a19);
    v36 = a20;
    v37 = a21;
    if (a20 >= a22)
    {
      v36 = a22;
    }

    if (a21 >= a22)
    {
      v37 = a22;
    }

    v34->_textualResponseLimit = v36;
    v34->_structuredInfoLimit = v37;
    v34->_totalSuggestionsLimit = a22;
    objc_storeStrong(&v34->_initiatingProcess, a23);
    v30 = v54;
  }

  return v34;
}

@end