@interface RTTConversation
+ (RTTConversation)conversationWithCall:(id)call;
+ (RTTConversation)conversationWithCall:(id)call withCallback:(id)callback;
+ (RTTConversation)conversationWithCallUID:(id)d withCallback:(id)callback;
+ (RTTConversation)conversationWithID:(id)d andUtterances:(id)utterances;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversation:(id)conversation;
- (RTTConversation)init;
- (RTTConversation)initWithCoder:(id)coder;
- (id)addTranscriptionFromOtherContactPath:(id)path;
- (id)addTranslatedTranscriptionFromOtherContactPath:(id)path original:(id)original;
- (id)appendCharacter:(unsigned __int16)character;
- (id)appendStringFromOtherContactPath:(id)path;
- (id)description;
- (id)lastUtteranceForMe:(BOOL)me isTranscription:(BOOL)transcription;
- (id)lastUtteranceForMe:(BOOL)me withText:(id)text;
- (id)mergeUtterancesIfPossible;
- (id)otherContactPath;
- (id)updateTranscriptionFromOtherContactPath:(id)path;
- (id)updateTranslatedTranscriptionFromOtherContactPath:(id)path original:(id)original;
- (unint64_t)lastUtteranceIndexForMe:(BOOL)me isTranscription:(BOOL)transcription;
- (unint64_t)utteranceCountForMe:(BOOL)me;
- (void)addUtterance:(id)utterance;
- (void)cleanup;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTConversation

+ (RTTConversation)conversationWithCallUID:(id)d withCallback:(id)callback
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  callbackCopy = callback;
  v7 = AXLogRTT();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = dCopy;
    _os_log_impl(&dword_261754000, v7, OS_LOG_TYPE_INFO, "Looking for conversation asynchronously: %@", buf, 0xCu);
  }

  v8 = +[RTTServer sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__RTTConversation_conversationWithCallUID_withCallback___block_invoke;
  v13[3] = &unk_279AE8458;
  v14 = dCopy;
  v15 = callbackCopy;
  v9 = callbackCopy;
  v10 = dCopy;
  [v8 findConversationForCallUID:v10 andResult:v13];

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void __56__RTTConversation_conversationWithCallUID_withCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = objc_alloc_init(RTTConversation);
    [(RTTConversation *)v4 setCallIdentifier:*(a1 + 32)];
    v3 = v4;
  }

  v5 = v3;
  (*(*(a1 + 40) + 16))();
}

+ (RTTConversation)conversationWithCall:(id)call withCallback:(id)callback
{
  callbackCopy = callback;
  callUUID = [call callUUID];
  [self conversationWithCallUID:callUUID withCallback:callbackCopy];

  return result;
}

+ (RTTConversation)conversationWithCall:(id)call
{
  callCopy = call;
  if (([MEMORY[0x277D12B60] currentProcessIsHeard] & 1) == 0 && !_AXSInUnitTestMode())
  {
    +[RTTConversation conversationWithCall:];
  }

  v4 = objc_alloc_init(RTTConversation);
  callUUID = [callCopy callUUID];
  [(RTTConversation *)v4 setCallIdentifier:callUUID];

  [(RTTConversation *)v4 setCall:callCopy];

  return v4;
}

+ (RTTConversation)conversationWithID:(id)d andUtterances:(id)utterances
{
  utterancesCopy = utterances;
  dCopy = d;
  v7 = objc_alloc_init(RTTConversation);
  [(RTTConversation *)v7 setCallIdentifier:dCopy];

  v8 = [MEMORY[0x277CBEB18] arrayWithArray:utterancesCopy];

  [(RTTConversation *)v7 setUtterances:v8];

  return v7;
}

- (RTTConversation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = RTTConversation;
  v5 = [(RTTConversation *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RTTConversationCallIdentifierKey"];
    [(RTTConversation *)v5 setCallIdentifier:v6];

    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"RTTConversationUtterancesKey"];
    [(RTTConversation *)v5 setUtterances:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  utterances = [(RTTConversation *)self utterances];
  [coderCopy encodeObject:utterances forKey:@"RTTConversationUtterancesKey"];

  callIdentifier = [(RTTConversation *)self callIdentifier];
  [coderCopy encodeObject:callIdentifier forKey:@"RTTConversationCallIdentifierKey"];
}

- (RTTConversation)init
{
  v5.receiver = self;
  v5.super_class = RTTConversation;
  v2 = [(RTTConversation *)&v5 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(RTTConversation *)v2 setUtterances:array];
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    callIdentifier = [equalCopy callIdentifier];
    callIdentifier2 = [(RTTConversation *)self callIdentifier];
    v7 = [callIdentifier isEqualToString:callIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualToConversation:(id)conversation
{
  conversationCopy = conversation;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  if ([(RTTConversation *)self isEqual:conversationCopy])
  {
    utterances = [(RTTConversation *)self utterances];
    v6 = [utterances count];
    utterances2 = [conversationCopy utterances];
    v8 = v6 == [utterances2 count];
  }

  else
  {
    v8 = 0;
  }

  v18 = v8;
  if (*(v16 + 24) == 1)
  {
    utterances3 = [(RTTConversation *)self utterances];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__RTTConversation_isEqualToConversation___block_invoke;
    v12[3] = &unk_279AE8480;
    v14 = &v15;
    v13 = conversationCopy;
    [utterances3 enumerateObjectsUsingBlock:v12];

    v10 = *(v16 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v10 & 1;
}

void __41__RTTConversation_isEqualToConversation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 utterances];
  v10 = [v9 objectAtIndex:a3];
  v11 = [v8 isEqual:v10];

  *(*(*(a1 + 40) + 8) + 24) = v11;
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

- (id)otherContactPath
{
  v39 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  callIdentifier = [(RTTConversation *)self callIdentifier];
  v4 = [callIdentifier length] == 0;

  if (!v4)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__3;
    v29 = __Block_byref_object_dispose__3;
    v30 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __35__RTTConversation_otherContactPath__block_invoke;
    v24[3] = &unk_279AE80C8;
    v24[4] = self;
    v24[5] = &v25;
    [RTTTelephonyUtilities performCallCenterTask:v24];
    v5 = v26[5];
    if (v5)
    {
      handle = [v5 handle];
      value = [handle value];

      isoCountryCode = [v26[5] isoCountryCode];
      v9 = [MEMORY[0x277D6EF18] phoneNumberWithDigits:value countryCode:isoCountryCode];
      unformattedInternationalRepresentation = [v9 unformattedInternationalRepresentation];
      v11 = v32[5];
      v32[5] = unformattedInternationalRepresentation;

      if (!v32[5])
      {
        formattedRepresentation = [v9 formattedRepresentation];
        v13 = v32[5];
        v32[5] = formattedRepresentation;

        v14 = AXLogRTT();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = v32[5];
          *buf = 138412290;
          v38 = v15;
          _os_log_impl(&dword_261754000, v14, OS_LOG_TYPE_INFO, "Using non-international phone number: %@", buf, 0xCu);
        }
      }
    }

    _Block_object_dispose(&v25, 8);
  }

  if (!v32[5])
  {
    utterances = [(RTTConversation *)self utterances];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __35__RTTConversation_otherContactPath__block_invoke_17;
    v23[3] = &unk_279AE84A8;
    v23[4] = &v31;
    [utterances enumerateObjectsUsingBlock:v23];
  }

  if (_AXSInUnitTestMode())
  {
    call = [(RTTConversation *)self call];
    if (call)
    {
      v18 = v32[5] == 0;

      if (v18)
      {
        v19 = v32[5];
        v32[5] = @"Unknown";
      }
    }
  }

  v20 = v32[5];
  _Block_object_dispose(&v31, 8);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __35__RTTConversation_otherContactPath__block_invoke(uint64_t a1)
{
  v6 = +[RTTTelephonyUtilities sharedCallCenter];
  v2 = [*(a1 + 32) callIdentifier];
  v3 = [v6 callWithCallUUID:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __35__RTTConversation_otherContactPath__block_invoke_17(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if (([v9 isMe] & 1) == 0)
  {
    v6 = [v9 contactPath];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

- (id)mergeUtterancesIfPossible
{
  v29 = *MEMORY[0x277D85DE8];
  utterances = [(RTTConversation *)self utterances];
  lastObject = [utterances lastObject];

  v5 = lastObject;
  utterances2 = [(RTTConversation *)self utterances];
  v7 = [utterances2 count];

  v8 = v5;
  if (v7 >= 2)
  {
    utterances3 = [(RTTConversation *)self utterances];
    utterances4 = [(RTTConversation *)self utterances];
    v11 = [utterances3 objectAtIndex:{objc_msgSend(utterances4, "count") - 2}];

    contactPath = [v5 contactPath];
    text = [v11 text];
    text2 = [v5 text];
    v15 = [text stringByAppendingString:text2];
    v16 = [RTTUtterance utteranceWithContactPath:contactPath andText:v15];

    v17 = AXLogRTT();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = v16;
      _os_log_impl(&dword_261754000, v17, OS_LOG_TYPE_INFO, "Testing complete %@", &v27, 0xCu);
    }

    isMe = [v11 isMe];
    v8 = v5;
    if (isMe == [v5 isMe])
    {
      v8 = v5;
      if ([v11 isComplete])
      {
        v8 = v5;
        if ([v16 isComplete])
        {
          v19 = AXLogRTT();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            LOWORD(v27) = 0;
            _os_log_impl(&dword_261754000, v19, OS_LOG_TYPE_INFO, "Merging", &v27, 2u);
          }

          text3 = [v11 text];
          text4 = [v5 text];
          v22 = [text3 stringByAppendingString:text4];
          [v11 updateText:v22];

          utterances5 = [(RTTConversation *)self utterances];
          [utterances5 removeObject:v5];

          v8 = v11;
        }
      }
    }
  }

  v24 = AXLogRTT();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v27 = 138412290;
    v28 = v8;
    _os_log_impl(&dword_261754000, v24, OS_LOG_TYPE_INFO, "Utterance merge result: %@", &v27, 0xCu);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)addUtterance:(id)utterance
{
  utteranceCopy = utterance;
  v4 = -[RTTConversation lastUtteranceForMe:isTranscription:](self, "lastUtteranceForMe:isTranscription:", 1, [utteranceCopy isTranscription]);
  text = [utteranceCopy text];
  if ([text length] != 1)
  {

    goto LABEL_5;
  }

  text2 = [utteranceCopy text];
  v7 = [text2 characterAtIndex:0];

  if (v7 != 8)
  {
LABEL_5:
    if (![v4 isMe] || (objc_msgSend(v4, "isComplete") & 1) != 0 || (objc_msgSend(v4, "hasTimedOut") & 1) != 0)
    {
      utterances = [(RTTConversation *)self utterances];
      [utterances addObject:utteranceCopy];
    }

    else
    {
      text3 = [v4 text];
      text4 = [utteranceCopy text];
      v12 = [text3 stringByAppendingString:text4];
      [v4 updateText:v12];

      mergeUtterancesIfPossible = [(RTTConversation *)self mergeUtterancesIfPossible];
    }

    goto LABEL_9;
  }

  v8 = [(RTTConversation *)self processBackspaceForMe:1];
LABEL_9:
}

- (id)appendCharacter:(unsigned __int16)character
{
  characterCopy = character;
  v4 = [MEMORY[0x277CCACA8] stringWithCharacters:&characterCopy length:1];
  v5 = [(RTTConversation *)self appendStringFromOtherContactPath:v4];

  return v5;
}

- (id)appendStringFromOtherContactPath:(id)path
{
  pathCopy = path;
  v5 = [(RTTConversation *)self lastUtteranceForMe:0];
  v6 = [pathCopy characterAtIndex:0];
  if (v6 == 8)
  {
    v7 = [(RTTConversation *)self processBackspaceForMe:0];
  }

  else
  {
    if (!v5 || (v8 = v6, ([v5 isMe] & 1) != 0) || (objc_msgSend(v5, "hasTimedOut") & 1) != 0 || objc_msgSend(v5, "isComplete") && (objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "characterIsMember:", v8), v14, !v15))
    {
      otherContactPath = [(RTTConversation *)self otherContactPath];
      v10 = [RTTUtterance utteranceWithContactPath:otherContactPath andText:pathCopy];

      utterances = [(RTTConversation *)self utterances];
      [utterances addObject:v10];
      v5 = v10;
    }

    else
    {
      utterances = [v5 text];
      v16 = [utterances stringByAppendingString:pathCopy];
      [v5 updateText:v16];
    }

    v7 = v5;
    v5 = v7;
  }

  v12 = v7;

  return v12;
}

- (id)addTranscriptionFromOtherContactPath:(id)path
{
  pathCopy = path;
  otherContactPath = [(RTTConversation *)self otherContactPath];
  v6 = [RTTUtterance utteranceWithContactPath:otherContactPath andText:pathCopy isTranscription:1];

  utterances = [(RTTConversation *)self utterances];
  [utterances addObject:v6];

  return v6;
}

- (id)updateTranscriptionFromOtherContactPath:(id)path
{
  pathCopy = path;
  v5 = [(RTTConversation *)self lastUtteranceForMe:0 isTranscription:1];
  [v5 updateText:pathCopy];

  return v5;
}

- (id)addTranslatedTranscriptionFromOtherContactPath:(id)path original:(id)original
{
  originalCopy = original;
  pathCopy = path;
  otherContactPath = [(RTTConversation *)self otherContactPath];
  v9 = [RTTUtterance utteranceWithContactPath:otherContactPath andText:originalCopy translatedText:pathCopy isTranscription:1];

  utterances = [(RTTConversation *)self utterances];
  [utterances addObject:v9];

  return v9;
}

- (id)updateTranslatedTranscriptionFromOtherContactPath:(id)path original:(id)original
{
  originalCopy = original;
  pathCopy = path;
  v8 = [(RTTConversation *)self lastUtteranceForMe:0 isTranscription:1];
  [v8 updateText:originalCopy];

  [v8 updateTranslation:pathCopy];

  return v8;
}

- (id)lastUtteranceForMe:(BOOL)me withText:(id)text
{
  textCopy = text;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  utterances = [(RTTConversation *)self utterances];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__RTTConversation_lastUtteranceForMe_withText___block_invoke;
  v11[3] = &unk_279AE84D0;
  meCopy = me;
  v8 = textCopy;
  v12 = v8;
  v13 = &v15;
  [utterances enumerateObjectsWithOptions:2 usingBlock:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __47__RTTConversation_lastUtteranceForMe_withText___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if (*(a1 + 48) == [v9 isMe])
  {
    v7 = [v9 text];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    if (v8)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

- (id)lastUtteranceForMe:(BOOL)me isTranscription:(BOOL)transcription
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  utterances = [(RTTConversation *)self utterances];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__RTTConversation_lastUtteranceForMe_isTranscription___block_invoke;
  v9[3] = &unk_279AE84F8;
  meCopy = me;
  transcriptionCopy = transcription;
  v9[4] = &v12;
  [utterances enumerateObjectsWithOptions:2 usingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __54__RTTConversation_lastUtteranceForMe_isTranscription___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 40) == [v7 isMe] && *(a1 + 41) == objc_msgSend(v7, "isTranscription"))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (unint64_t)lastUtteranceIndexForMe:(BOOL)me isTranscription:(BOOL)transcription
{
  utterances = [(RTTConversation *)self utterances];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__RTTConversation_lastUtteranceIndexForMe_isTranscription___block_invoke;
  v9[3] = &__block_descriptor_34_e29_B32__0__RTTUtterance_8Q16_B24l;
  meCopy = me;
  transcriptionCopy = transcription;
  v7 = [utterances indexOfObjectWithOptions:2 passingTest:v9];

  return v7;
}

uint64_t __59__RTTConversation_lastUtteranceIndexForMe_isTranscription___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (*(a1 + 32) == [v6 isMe] && *(a1 + 33) == objc_msgSend(v6, "isTranscription"))
  {
    v7 = 1;
    *a4 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)utteranceCountForMe:(BOOL)me
{
  utterances = [(RTTConversation *)self utterances];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__RTTConversation_utteranceCountForMe___block_invoke;
  v8[3] = &__block_descriptor_33_e29_B32__0__RTTUtterance_8Q16_B24l;
  meCopy = me;
  v5 = [utterances indexesOfObjectsPassingTest:v8];

  v6 = [v5 count];
  return v6;
}

- (void)cleanup
{
  utterances = [(RTTConversation *)self utterances];
  v4 = [utterances indexesOfObjectsPassingTest:&__block_literal_global_7];

  utterances2 = [(RTTConversation *)self utterances];
  [utterances2 removeObjectsAtIndexes:v4];

  indexSet = [MEMORY[0x277CCAB58] indexSet];
  utterances3 = [(RTTConversation *)self utterances];
  v8 = [utterances3 count];

  utterances4 = [(RTTConversation *)self utterances];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __26__RTTConversation_cleanup__block_invoke_2;
  v12[3] = &unk_279AE8580;
  v13 = indexSet;
  v14 = v8;
  v12[4] = self;
  v10 = indexSet;
  [utterances4 enumerateObjectsUsingBlock:v12];

  utterances5 = [(RTTConversation *)self utterances];
  [utterances5 removeObjectsAtIndexes:v10];
}

BOOL __26__RTTConversation_cleanup__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 text];
  v3 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];
  v5 = [v4 length] == 0;

  return v5;
}

void __26__RTTConversation_cleanup__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if ((a3 + 1) >= *(a1 + 48))
  {
    v6 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) utterances];
    v6 = [v5 objectAtIndex:a3 + 1];

    if (v6)
    {
      if (([v11 isComplete] & 1) == 0)
      {
        v7 = [v11 isMe];
        if (v7 == [v6 isMe])
        {
          v8 = [v11 text];
          v9 = [v6 text];
          v10 = [v8 stringByAppendingString:v9];
          [v6 updateText:v10];

          [*(a1 + 40) addIndex:a3];
        }
      }
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = RTTConversation;
  v4 = [(RTTConversation *)&v9 description];
  callIdentifier = [(RTTConversation *)self callIdentifier];
  utterances = [(RTTConversation *)self utterances];
  v7 = [v3 stringWithFormat:@"%@ - %@ [%ld]", v4, callIdentifier, objc_msgSend(utterances, "count")];

  return v7;
}

@end