@interface FLOWSchemaFLOWSmsContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isGroupMessageAtIndex:(unint64_t)index;
- (BOOL)isLongMessageListAtIndex:(unint64_t)index;
- (BOOL)isMultiLingualAtIndex:(unint64_t)index;
- (BOOL)isReadableAtIndex:(unint64_t)index;
- (BOOL)isSenderShortCodeListAtIndex:(unint64_t)index;
- (FLOWSchemaFLOWSmsAudioContext)audioContext;
- (FLOWSchemaFLOWSmsContext)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWSmsContext)initWithJSON:(id)n;
- (FLOWSchemaFLOWSmsTextContext)textContext;
- (FLOWSchemaFLOWTextMessageLength)textMessageLength;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)personTypeAtIndex:(unint64_t)index;
- (int)readMessageTypeAtIndex:(unint64_t)index;
- (int)recipientTypeAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (unint64_t)messageDurationsInSecondsAtIndex:(unint64_t)index;
- (unsigned)messageDurationMs;
- (void)addIsGroupMessage:(BOOL)message;
- (void)addIsLongMessageList:(BOOL)list;
- (void)addIsMultiLingual:(BOOL)lingual;
- (void)addIsReadable:(BOOL)readable;
- (void)addIsSenderShortCodeList:(BOOL)list;
- (void)addMessageDurationsInSeconds:(unint64_t)seconds;
- (void)addPersonType:(int)type;
- (void)addReadMessageType:(int)type;
- (void)addRecipientType:(int)type;
- (void)deleteAudioContext;
- (void)deleteMessageDurationMs;
- (void)deleteTextContext;
- (void)deleteTextMessageLength;
- (void)setAudioContext:(id)context;
- (void)setHasAppendingActionReadMessagesCount:(BOOL)count;
- (void)setHasEmojiUsed:(BOOL)used;
- (void)setHasIsLongMessage:(BOOL)message;
- (void)setHasIsReply:(BOOL)reply;
- (void)setHasIsSenderShortCode:(BOOL)code;
- (void)setHasIsSummarized:(BOOL)summarized;
- (void)setHasKeyboardUsed:(BOOL)used;
- (void)setHasSummarySourceType:(BOOL)type;
- (void)setHasUserPersona:(BOOL)persona;
- (void)setMessageDurationMs:(unsigned int)ms;
- (void)setTextContext:(id)context;
- (void)setTextMessageLength:(id)length;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWSmsContext

- (FLOWSchemaFLOWSmsContext)initWithDictionary:(id)dictionary
{
  v162 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v152.receiver = self;
  v152.super_class = FLOWSchemaFLOWSmsContext;
  v5 = [(FLOWSchemaFLOWSmsContext *)&v152 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"messageType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setMessageType:](v5, "setMessageType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"emojiUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setEmojiUsed:](v5, "setEmojiUsed:", [v7 BOOLValue]);
    }

    v103 = v7;
    v104 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"keyboardUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setKeyboardUsed:](v5, "setKeyboardUsed:", [v8 BOOLValue]);
    }

    v102 = v8;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"recipientType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v148 objects:v161 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v149;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v149 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v148 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLOWSchemaFLOWSmsContext addRecipientType:](v5, "addRecipientType:", [v15 intValue]);
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v148 objects:v161 count:16];
        }

        while (v12);
      }
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"messageDurationMs"];
    objc_opt_class();
    v115 = v16;
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setMessageDurationMs:](v5, "setMessageDurationMs:", [v16 unsignedIntValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"textMessageLength"];
    objc_opt_class();
    v114 = v17;
    if (objc_opt_isKindOfClass())
    {
      v18 = [[FLOWSchemaFLOWTextMessageLength alloc] initWithDictionary:v17];
      [(FLOWSchemaFLOWSmsContext *)v5 setTextMessageLength:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"textContext"];
    objc_opt_class();
    v113 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = [[FLOWSchemaFLOWSmsTextContext alloc] initWithDictionary:v19];
      [(FLOWSchemaFLOWSmsContext *)v5 setTextContext:v20];
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"audioContext"];
    objc_opt_class();
    v112 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [[FLOWSchemaFLOWSmsAudioContext alloc] initWithDictionary:v21];
      [(FLOWSchemaFLOWSmsContext *)v5 setAudioContext:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"personType"];
    objc_opt_class();
    v111 = v23;
    if (objc_opt_isKindOfClass())
    {
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v144 objects:v160 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v145;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v145 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v144 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLOWSchemaFLOWSmsContext addPersonType:](v5, "addPersonType:", [v29 intValue]);
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v144 objects:v160 count:16];
        }

        while (v26);
      }
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"readMessageType"];
    objc_opt_class();
    v110 = v30;
    if (objc_opt_isKindOfClass())
    {
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v31 = v30;
      v32 = [v31 countByEnumeratingWithState:&v140 objects:v159 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v141;
        do
        {
          for (k = 0; k != v33; ++k)
          {
            if (*v141 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v140 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLOWSchemaFLOWSmsContext addReadMessageType:](v5, "addReadMessageType:", [v36 intValue]);
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v140 objects:v159 count:16];
        }

        while (v33);
      }
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"isMultiLingual"];
    objc_opt_class();
    v109 = v37;
    if (objc_opt_isKindOfClass())
    {
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v38 = v37;
      v39 = [v38 countByEnumeratingWithState:&v136 objects:v158 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v137;
        do
        {
          for (m = 0; m != v40; ++m)
          {
            if (*v137 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v136 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLOWSchemaFLOWSmsContext addIsMultiLingual:](v5, "addIsMultiLingual:", [v43 BOOLValue]);
            }
          }

          v40 = [v38 countByEnumeratingWithState:&v136 objects:v158 count:16];
        }

        while (v40);
      }
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"isReadable"];
    objc_opt_class();
    v108 = v44;
    if (objc_opt_isKindOfClass())
    {
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v132 objects:v157 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v133;
        do
        {
          for (n = 0; n != v47; ++n)
          {
            if (*v133 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v132 + 1) + 8 * n);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLOWSchemaFLOWSmsContext addIsReadable:](v5, "addIsReadable:", [v50 BOOLValue]);
            }
          }

          v47 = [v45 countByEnumeratingWithState:&v132 objects:v157 count:16];
        }

        while (v47);
      }
    }

    v51 = [dictionaryCopy objectForKeyedSubscript:@"isGroupMessage"];
    objc_opt_class();
    v107 = v51;
    if (objc_opt_isKindOfClass())
    {
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v52 = v51;
      v53 = [v52 countByEnumeratingWithState:&v128 objects:v156 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v129;
        do
        {
          for (ii = 0; ii != v54; ++ii)
          {
            if (*v129 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = *(*(&v128 + 1) + 8 * ii);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLOWSchemaFLOWSmsContext addIsGroupMessage:](v5, "addIsGroupMessage:", [v57 BOOLValue]);
            }
          }

          v54 = [v52 countByEnumeratingWithState:&v128 objects:v156 count:16];
        }

        while (v54);
      }
    }

    v58 = [dictionaryCopy objectForKeyedSubscript:@"languageConfidenceMatrix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = [[FLOWSchemaFLOWLanguageConfidenceMatrix alloc] initWithDictionary:v58];
      [(FLOWSchemaFLOWSmsContext *)v5 setLanguageConfidenceMatrix:v59];
    }

    v60 = [dictionaryCopy objectForKeyedSubscript:@"isSenderShortCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setIsSenderShortCode:](v5, "setIsSenderShortCode:", [v60 BOOLValue]);
    }

    v61 = [dictionaryCopy objectForKeyedSubscript:@"isLongMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setIsLongMessage:](v5, "setIsLongMessage:", [v61 BOOLValue]);
    }

    v62 = [dictionaryCopy objectForKeyedSubscript:@"isReply"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setIsReply:](v5, "setIsReply:", [v62 BOOLValue]);
    }

    v97 = v62;
    v98 = v61;
    v99 = v60;
    v100 = v58;
    v63 = [dictionaryCopy objectForKeyedSubscript:@"appendingActionReadMessagesCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setAppendingActionReadMessagesCount:](v5, "setAppendingActionReadMessagesCount:", [v63 intValue]);
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:{@"isSenderShortCodeList", v63}];
    objc_opt_class();
    v106 = v64;
    if (objc_opt_isKindOfClass())
    {
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v65 = v64;
      v66 = [v65 countByEnumeratingWithState:&v124 objects:v155 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v125;
        do
        {
          for (jj = 0; jj != v67; ++jj)
          {
            if (*v125 != v68)
            {
              objc_enumerationMutation(v65);
            }

            v70 = *(*(&v124 + 1) + 8 * jj);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLOWSchemaFLOWSmsContext addIsSenderShortCodeList:](v5, "addIsSenderShortCodeList:", [v70 BOOLValue]);
            }
          }

          v67 = [v65 countByEnumeratingWithState:&v124 objects:v155 count:16];
        }

        while (v67);
      }
    }

    v71 = [dictionaryCopy objectForKeyedSubscript:@"isLongMessageList"];
    objc_opt_class();
    v105 = v71;
    if (objc_opt_isKindOfClass())
    {
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v72 = v71;
      v73 = [v72 countByEnumeratingWithState:&v120 objects:v154 count:16];
      if (v73)
      {
        v74 = v73;
        v75 = *v121;
        do
        {
          for (kk = 0; kk != v74; ++kk)
          {
            if (*v121 != v75)
            {
              objc_enumerationMutation(v72);
            }

            v77 = *(*(&v120 + 1) + 8 * kk);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLOWSchemaFLOWSmsContext addIsLongMessageList:](v5, "addIsLongMessageList:", [v77 BOOLValue]);
            }
          }

          v74 = [v72 countByEnumeratingWithState:&v120 objects:v154 count:16];
        }

        while (v74);
      }
    }

    v78 = [dictionaryCopy objectForKeyedSubscript:@"richAttachmentIntelligenceFeatureUsage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v79 = [[FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage alloc] initWithDictionary:v78];
      [(FLOWSchemaFLOWSmsContext *)v5 setRichAttachmentIntelligenceFeatureUsage:v79];
    }

    v101 = v9;
    v80 = [dictionaryCopy objectForKeyedSubscript:@"messageDurationsInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v81 = v80;
      v82 = [v81 countByEnumeratingWithState:&v116 objects:v153 count:16];
      if (v82)
      {
        v83 = v82;
        v84 = *v117;
        do
        {
          for (mm = 0; mm != v83; ++mm)
          {
            if (*v117 != v84)
            {
              objc_enumerationMutation(v81);
            }

            v86 = *(*(&v116 + 1) + 8 * mm);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLOWSchemaFLOWSmsContext addMessageDurationsInSeconds:](v5, "addMessageDurationsInSeconds:", [v86 unsignedLongLongValue]);
            }
          }

          v83 = [v81 countByEnumeratingWithState:&v116 objects:v153 count:16];
        }

        while (v83);
      }
    }

    v87 = [dictionaryCopy objectForKeyedSubscript:@"userPersona"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setUserPersona:](v5, "setUserPersona:", [v87 intValue]);
    }

    v88 = [dictionaryCopy objectForKeyedSubscript:@"isSummarized"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setIsSummarized:](v5, "setIsSummarized:", [v88 BOOLValue]);
    }

    v89 = [dictionaryCopy objectForKeyedSubscript:@"summarySourceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setSummarySourceType:](v5, "setSummarySourceType:", [v89 intValue]);
    }

    v90 = [dictionaryCopy objectForKeyedSubscript:@"contact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v91 = [[FLOWSchemaFLOWContact alloc] initWithDictionary:v90];
      [(FLOWSchemaFLOWSmsContext *)v5 setContact:v91];
    }

    v92 = [dictionaryCopy objectForKeyedSubscript:@"tapback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v93 = [[FLOWSchemaFLOWMessageTapback alloc] initWithDictionary:v92];
      [(FLOWSchemaFLOWSmsContext *)v5 setTapback:v93];
    }

    v94 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWSmsContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWSmsContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWSmsContext *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 0x40) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[FLOWSchemaFLOWSmsContext appendingActionReadMessagesCount](self, "appendingActionReadMessagesCount")}];
    [dictionary setObject:v4 forKeyedSubscript:@"appendingActionReadMessagesCount"];
  }

  if (self->_audioContext)
  {
    audioContext = [(FLOWSchemaFLOWSmsContext *)self audioContext];
    dictionaryRepresentation = [audioContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"audioContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"audioContext"];
    }
  }

  if (self->_contact)
  {
    contact = [(FLOWSchemaFLOWSmsContext *)self contact];
    dictionaryRepresentation2 = [contact dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"contact"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"contact"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSmsContext emojiUsed](self, "emojiUsed")}];
    [dictionary setObject:v11 forKeyedSubscript:@"emojiUsed"];
  }

  if ([(NSArray *)self->_isGroupMessages count])
  {
    isGroupMessages = [(FLOWSchemaFLOWSmsContext *)self isGroupMessages];
    v13 = [isGroupMessages copy];
    [dictionary setObject:v13 forKeyedSubscript:@"isGroupMessage"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSmsContext isLongMessage](self, "isLongMessage")}];
    [dictionary setObject:v14 forKeyedSubscript:@"isLongMessage"];
  }

  if ([(NSArray *)self->_isLongMessageLists count])
  {
    isLongMessageLists = [(FLOWSchemaFLOWSmsContext *)self isLongMessageLists];
    v16 = [isLongMessageLists copy];
    [dictionary setObject:v16 forKeyedSubscript:@"isLongMessageList"];
  }

  if ([(NSArray *)self->_isMultiLinguals count])
  {
    isMultiLinguals = [(FLOWSchemaFLOWSmsContext *)self isMultiLinguals];
    v18 = [isMultiLinguals copy];
    [dictionary setObject:v18 forKeyedSubscript:@"isMultiLingual"];
  }

  if ([(NSArray *)self->_isReadables count])
  {
    isReadables = [(FLOWSchemaFLOWSmsContext *)self isReadables];
    v20 = [isReadables copy];
    [dictionary setObject:v20 forKeyedSubscript:@"isReadable"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSmsContext isReply](self, "isReply")}];
    [dictionary setObject:v22 forKeyedSubscript:@"isReply"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSmsContext isSenderShortCode](self, "isSenderShortCode")}];
    [dictionary setObject:v23 forKeyedSubscript:@"isSenderShortCode"];
  }

  if ([(NSArray *)self->_isSenderShortCodeLists count])
  {
    isSenderShortCodeLists = [(FLOWSchemaFLOWSmsContext *)self isSenderShortCodeLists];
    v25 = [isSenderShortCodeLists copy];
    [dictionary setObject:v25 forKeyedSubscript:@"isSenderShortCodeList"];
  }

  v26 = self->_has;
  if ((v26 & 0x100) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSmsContext isSummarized](self, "isSummarized")}];
    [dictionary setObject:v27 forKeyedSubscript:@"isSummarized"];

    v26 = self->_has;
  }

  if ((v26 & 4) != 0)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSmsContext keyboardUsed](self, "keyboardUsed")}];
    [dictionary setObject:v28 forKeyedSubscript:@"keyboardUsed"];
  }

  if (self->_languageConfidenceMatrix)
  {
    languageConfidenceMatrix = [(FLOWSchemaFLOWSmsContext *)self languageConfidenceMatrix];
    dictionaryRepresentation3 = [languageConfidenceMatrix dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"languageConfidenceMatrix"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"languageConfidenceMatrix"];
    }
  }

  if (self->_whichMessagesize == 6)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWSmsContext messageDurationMs](self, "messageDurationMs")}];
    [dictionary setObject:v32 forKeyedSubscript:@"messageDurationMs"];
  }

  if ([(NSArray *)self->_messageDurationsInSeconds count])
  {
    messageDurationsInSeconds = [(FLOWSchemaFLOWSmsContext *)self messageDurationsInSeconds];
    v34 = [messageDurationsInSeconds copy];
    [dictionary setObject:v34 forKeyedSubscript:@"messageDurationsInSeconds"];
  }

  if (*&self->_has)
  {
    v35 = [(FLOWSchemaFLOWSmsContext *)self messageType]- 1;
    if (v35 > 3)
    {
      v36 = @"FLOWMESSAGETYPE_UNKNOWN";
    }

    else
    {
      v36 = off_1E78D61E8[v35];
    }

    [dictionary setObject:v36 forKeyedSubscript:@"messageType"];
  }

  if ([(NSArray *)self->_personTypes count])
  {
    personTypes = [(FLOWSchemaFLOWSmsContext *)self personTypes];
    v38 = [personTypes copy];
    [dictionary setObject:v38 forKeyedSubscript:@"personType"];
  }

  if ([(NSArray *)self->_readMessageTypes count])
  {
    readMessageTypes = [(FLOWSchemaFLOWSmsContext *)self readMessageTypes];
    v40 = [readMessageTypes copy];
    [dictionary setObject:v40 forKeyedSubscript:@"readMessageType"];
  }

  if ([(NSArray *)self->_recipientTypes count])
  {
    recipientTypes = [(FLOWSchemaFLOWSmsContext *)self recipientTypes];
    v42 = [recipientTypes copy];
    [dictionary setObject:v42 forKeyedSubscript:@"recipientType"];
  }

  if (self->_richAttachmentIntelligenceFeatureUsage)
  {
    richAttachmentIntelligenceFeatureUsage = [(FLOWSchemaFLOWSmsContext *)self richAttachmentIntelligenceFeatureUsage];
    dictionaryRepresentation4 = [richAttachmentIntelligenceFeatureUsage dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"richAttachmentIntelligenceFeatureUsage"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"richAttachmentIntelligenceFeatureUsage"];
    }
  }

  if ((*&self->_has & 0x200) != 0)
  {
    summarySourceType = [(FLOWSchemaFLOWSmsContext *)self summarySourceType];
    v47 = @"FLOWSUMMARYSOURCETYPE_UNKNOWN";
    if (summarySourceType == 1)
    {
      v47 = @"FLOWSUMMARYSOURCETYPE_SINGLE_MESSAGE";
    }

    if (summarySourceType == 2)
    {
      v48 = @"FLOWSUMMARYSOURCETYPE_MULTIPLE_MESSAGES";
    }

    else
    {
      v48 = v47;
    }

    [dictionary setObject:v48 forKeyedSubscript:@"summarySourceType"];
  }

  if (self->_tapback)
  {
    tapback = [(FLOWSchemaFLOWSmsContext *)self tapback];
    dictionaryRepresentation5 = [tapback dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"tapback"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"tapback"];
    }
  }

  if (self->_textContext)
  {
    textContext = [(FLOWSchemaFLOWSmsContext *)self textContext];
    dictionaryRepresentation6 = [textContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"textContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"textContext"];
    }
  }

  if (self->_textMessageLength)
  {
    textMessageLength = [(FLOWSchemaFLOWSmsContext *)self textMessageLength];
    dictionaryRepresentation7 = [textMessageLength dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"textMessageLength"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"textMessageLength"];
    }
  }

  if ((*&self->_has & 0x80) != 0)
  {
    v58 = [(FLOWSchemaFLOWSmsContext *)self userPersona]- 1;
    if (v58 > 5)
    {
      v59 = @"INFERENCEAPPSELECTIONUSERPERSONA_UNKNOWN";
    }

    else
    {
      v59 = off_1E78D6208[v58];
    }

    [dictionary setObject:v59 forKeyedSubscript:@"userPersona"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v60 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    v33 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v32 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v33 = 2654435761 * self->_messageType;
  if ((has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v32 = 2654435761 * self->_emojiUsed;
  if ((has & 4) != 0)
  {
LABEL_4:
    v31 = 2654435761 * self->_keyboardUsed;
    goto LABEL_8;
  }

LABEL_7:
  v31 = 0;
LABEL_8:
  v30 = [(NSArray *)self->_recipientTypes hash];
  if (self->_whichMessagesize == 6)
  {
    v29 = 2654435761 * self->_messageDurationMs;
  }

  else
  {
    v29 = 0;
  }

  v28 = [(FLOWSchemaFLOWTextMessageLength *)self->_textMessageLength hash];
  v27 = [(FLOWSchemaFLOWSmsTextContext *)self->_textContext hash];
  v26 = [(FLOWSchemaFLOWSmsAudioContext *)self->_audioContext hash];
  v25 = [(NSArray *)self->_personTypes hash];
  v24 = [(NSArray *)self->_readMessageTypes hash];
  v23 = [(NSArray *)self->_isMultiLinguals hash];
  v22 = [(NSArray *)self->_isReadables hash];
  v21 = [(NSArray *)self->_isGroupMessages hash];
  v19 = [(FLOWSchemaFLOWLanguageConfidenceMatrix *)self->_languageConfidenceMatrix hash];
  v4 = self->_has;
  if ((v4 & 8) != 0)
  {
    v5 = 2654435761 * self->_isSenderShortCode;
    if ((v4 & 0x10) != 0)
    {
LABEL_13:
      v6 = 2654435761 * self->_isLongMessage;
      if ((v4 & 0x20) != 0)
      {
        goto LABEL_14;
      }

LABEL_18:
      v7 = 0;
      if ((v4 & 0x40) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v5 = 0;
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_13;
    }
  }

  v6 = 0;
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v7 = 2654435761 * self->_isReply;
  if ((v4 & 0x40) != 0)
  {
LABEL_15:
    v8 = 2654435761 * self->_appendingActionReadMessagesCount;
    goto LABEL_20;
  }

LABEL_19:
  v8 = 0;
LABEL_20:
  v9 = [(NSArray *)self->_isSenderShortCodeLists hash];
  v10 = [(NSArray *)self->_isLongMessageLists hash];
  v11 = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self->_richAttachmentIntelligenceFeatureUsage hash];
  v12 = [(NSArray *)self->_messageDurationsInSeconds hash];
  if ((*&self->_has & 0x80) == 0)
  {
    v13 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    v14 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    v15 = 0;
    goto LABEL_27;
  }

  v13 = 2654435761 * self->_userPersona;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v14 = 2654435761 * self->_isSummarized;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v15 = 2654435761 * self->_summarySourceType;
LABEL_27:
  v16 = v32 ^ v33 ^ v31 ^ v29 ^ v30 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  v17 = v13 ^ v14 ^ v15 ^ [(FLOWSchemaFLOWContact *)self->_contact hash];
  return v16 ^ v17 ^ [(FLOWSchemaFLOWMessageTapback *)self->_tapback hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_122;
  }

  whichMessagesize = self->_whichMessagesize;
  if (whichMessagesize != [equalCopy whichMessagesize])
  {
    goto LABEL_122;
  }

  whichMessagecontext = self->_whichMessagecontext;
  if (whichMessagecontext != [equalCopy whichMessagecontext])
  {
    goto LABEL_122;
  }

  has = self->_has;
  v8 = equalCopy[88];
  if ((*&has & 1) != (v8 & 1))
  {
    goto LABEL_122;
  }

  if (*&has)
  {
    messageType = self->_messageType;
    if (messageType != [equalCopy messageType])
    {
      goto LABEL_122;
    }

    has = self->_has;
    v8 = equalCopy[88];
  }

  v10 = (*&has >> 1) & 1;
  if (v10 != ((v8 >> 1) & 1))
  {
    goto LABEL_122;
  }

  if (v10)
  {
    emojiUsed = self->_emojiUsed;
    if (emojiUsed != [equalCopy emojiUsed])
    {
      goto LABEL_122;
    }

    has = self->_has;
    v8 = equalCopy[88];
  }

  v12 = (*&has >> 2) & 1;
  if (v12 != ((v8 >> 2) & 1))
  {
    goto LABEL_122;
  }

  if (v12)
  {
    keyboardUsed = self->_keyboardUsed;
    if (keyboardUsed != [equalCopy keyboardUsed])
    {
      goto LABEL_122;
    }
  }

  recipientTypes = [(FLOWSchemaFLOWSmsContext *)self recipientTypes];
  recipientTypes2 = [equalCopy recipientTypes];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_121;
  }

  recipientTypes3 = [(FLOWSchemaFLOWSmsContext *)self recipientTypes];
  if (recipientTypes3)
  {
    v17 = recipientTypes3;
    recipientTypes4 = [(FLOWSchemaFLOWSmsContext *)self recipientTypes];
    recipientTypes5 = [equalCopy recipientTypes];
    v20 = [recipientTypes4 isEqual:recipientTypes5];

    if (!v20)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  messageDurationMs = self->_messageDurationMs;
  if (messageDurationMs != [equalCopy messageDurationMs])
  {
    goto LABEL_122;
  }

  recipientTypes = [(FLOWSchemaFLOWSmsContext *)self textMessageLength];
  recipientTypes2 = [equalCopy textMessageLength];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_121;
  }

  textMessageLength = [(FLOWSchemaFLOWSmsContext *)self textMessageLength];
  if (textMessageLength)
  {
    v23 = textMessageLength;
    textMessageLength2 = [(FLOWSchemaFLOWSmsContext *)self textMessageLength];
    textMessageLength3 = [equalCopy textMessageLength];
    v26 = [textMessageLength2 isEqual:textMessageLength3];

    if (!v26)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  recipientTypes = [(FLOWSchemaFLOWSmsContext *)self textContext];
  recipientTypes2 = [equalCopy textContext];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_121;
  }

  textContext = [(FLOWSchemaFLOWSmsContext *)self textContext];
  if (textContext)
  {
    v28 = textContext;
    textContext2 = [(FLOWSchemaFLOWSmsContext *)self textContext];
    textContext3 = [equalCopy textContext];
    v31 = [textContext2 isEqual:textContext3];

    if (!v31)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  recipientTypes = [(FLOWSchemaFLOWSmsContext *)self audioContext];
  recipientTypes2 = [equalCopy audioContext];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_121;
  }

  audioContext = [(FLOWSchemaFLOWSmsContext *)self audioContext];
  if (audioContext)
  {
    v33 = audioContext;
    audioContext2 = [(FLOWSchemaFLOWSmsContext *)self audioContext];
    audioContext3 = [equalCopy audioContext];
    v36 = [audioContext2 isEqual:audioContext3];

    if (!v36)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  recipientTypes = [(FLOWSchemaFLOWSmsContext *)self personTypes];
  recipientTypes2 = [equalCopy personTypes];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_121;
  }

  personTypes = [(FLOWSchemaFLOWSmsContext *)self personTypes];
  if (personTypes)
  {
    v38 = personTypes;
    personTypes2 = [(FLOWSchemaFLOWSmsContext *)self personTypes];
    personTypes3 = [equalCopy personTypes];
    v41 = [personTypes2 isEqual:personTypes3];

    if (!v41)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  recipientTypes = [(FLOWSchemaFLOWSmsContext *)self readMessageTypes];
  recipientTypes2 = [equalCopy readMessageTypes];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_121;
  }

  readMessageTypes = [(FLOWSchemaFLOWSmsContext *)self readMessageTypes];
  if (readMessageTypes)
  {
    v43 = readMessageTypes;
    readMessageTypes2 = [(FLOWSchemaFLOWSmsContext *)self readMessageTypes];
    readMessageTypes3 = [equalCopy readMessageTypes];
    v46 = [readMessageTypes2 isEqual:readMessageTypes3];

    if (!v46)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  recipientTypes = [(FLOWSchemaFLOWSmsContext *)self isMultiLinguals];
  recipientTypes2 = [equalCopy isMultiLinguals];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_121;
  }

  isMultiLinguals = [(FLOWSchemaFLOWSmsContext *)self isMultiLinguals];
  if (isMultiLinguals)
  {
    v48 = isMultiLinguals;
    isMultiLinguals2 = [(FLOWSchemaFLOWSmsContext *)self isMultiLinguals];
    isMultiLinguals3 = [equalCopy isMultiLinguals];
    v51 = [isMultiLinguals2 isEqual:isMultiLinguals3];

    if (!v51)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  recipientTypes = [(FLOWSchemaFLOWSmsContext *)self isReadables];
  recipientTypes2 = [equalCopy isReadables];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_121;
  }

  isReadables = [(FLOWSchemaFLOWSmsContext *)self isReadables];
  if (isReadables)
  {
    v53 = isReadables;
    isReadables2 = [(FLOWSchemaFLOWSmsContext *)self isReadables];
    isReadables3 = [equalCopy isReadables];
    v56 = [isReadables2 isEqual:isReadables3];

    if (!v56)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  recipientTypes = [(FLOWSchemaFLOWSmsContext *)self isGroupMessages];
  recipientTypes2 = [equalCopy isGroupMessages];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_121;
  }

  isGroupMessages = [(FLOWSchemaFLOWSmsContext *)self isGroupMessages];
  if (isGroupMessages)
  {
    v58 = isGroupMessages;
    isGroupMessages2 = [(FLOWSchemaFLOWSmsContext *)self isGroupMessages];
    isGroupMessages3 = [equalCopy isGroupMessages];
    v61 = [isGroupMessages2 isEqual:isGroupMessages3];

    if (!v61)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  recipientTypes = [(FLOWSchemaFLOWSmsContext *)self languageConfidenceMatrix];
  recipientTypes2 = [equalCopy languageConfidenceMatrix];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_121;
  }

  languageConfidenceMatrix = [(FLOWSchemaFLOWSmsContext *)self languageConfidenceMatrix];
  if (languageConfidenceMatrix)
  {
    v63 = languageConfidenceMatrix;
    languageConfidenceMatrix2 = [(FLOWSchemaFLOWSmsContext *)self languageConfidenceMatrix];
    languageConfidenceMatrix3 = [equalCopy languageConfidenceMatrix];
    v66 = [languageConfidenceMatrix2 isEqual:languageConfidenceMatrix3];

    if (!v66)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v67 = self->_has;
  v68 = (*&v67 >> 3) & 1;
  v69 = equalCopy[88];
  if (v68 != ((v69 >> 3) & 1))
  {
    goto LABEL_122;
  }

  if (v68)
  {
    isSenderShortCode = self->_isSenderShortCode;
    if (isSenderShortCode != [equalCopy isSenderShortCode])
    {
      goto LABEL_122;
    }

    v67 = self->_has;
    v69 = equalCopy[88];
  }

  v71 = (*&v67 >> 4) & 1;
  if (v71 != ((v69 >> 4) & 1))
  {
    goto LABEL_122;
  }

  if (v71)
  {
    isLongMessage = self->_isLongMessage;
    if (isLongMessage != [equalCopy isLongMessage])
    {
      goto LABEL_122;
    }

    v67 = self->_has;
    v69 = equalCopy[88];
  }

  v73 = (*&v67 >> 5) & 1;
  if (v73 != ((v69 >> 5) & 1))
  {
    goto LABEL_122;
  }

  if (v73)
  {
    isReply = self->_isReply;
    if (isReply != [equalCopy isReply])
    {
      goto LABEL_122;
    }

    v67 = self->_has;
    v69 = equalCopy[88];
  }

  v75 = (*&v67 >> 6) & 1;
  if (v75 != ((v69 >> 6) & 1))
  {
    goto LABEL_122;
  }

  if (v75)
  {
    appendingActionReadMessagesCount = self->_appendingActionReadMessagesCount;
    if (appendingActionReadMessagesCount != [equalCopy appendingActionReadMessagesCount])
    {
      goto LABEL_122;
    }
  }

  recipientTypes = [(FLOWSchemaFLOWSmsContext *)self isSenderShortCodeLists];
  recipientTypes2 = [equalCopy isSenderShortCodeLists];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_121;
  }

  isSenderShortCodeLists = [(FLOWSchemaFLOWSmsContext *)self isSenderShortCodeLists];
  if (isSenderShortCodeLists)
  {
    v78 = isSenderShortCodeLists;
    isSenderShortCodeLists2 = [(FLOWSchemaFLOWSmsContext *)self isSenderShortCodeLists];
    isSenderShortCodeLists3 = [equalCopy isSenderShortCodeLists];
    v81 = [isSenderShortCodeLists2 isEqual:isSenderShortCodeLists3];

    if (!v81)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  recipientTypes = [(FLOWSchemaFLOWSmsContext *)self isLongMessageLists];
  recipientTypes2 = [equalCopy isLongMessageLists];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_121;
  }

  isLongMessageLists = [(FLOWSchemaFLOWSmsContext *)self isLongMessageLists];
  if (isLongMessageLists)
  {
    v83 = isLongMessageLists;
    isLongMessageLists2 = [(FLOWSchemaFLOWSmsContext *)self isLongMessageLists];
    isLongMessageLists3 = [equalCopy isLongMessageLists];
    v86 = [isLongMessageLists2 isEqual:isLongMessageLists3];

    if (!v86)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  recipientTypes = [(FLOWSchemaFLOWSmsContext *)self richAttachmentIntelligenceFeatureUsage];
  recipientTypes2 = [equalCopy richAttachmentIntelligenceFeatureUsage];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_121;
  }

  richAttachmentIntelligenceFeatureUsage = [(FLOWSchemaFLOWSmsContext *)self richAttachmentIntelligenceFeatureUsage];
  if (richAttachmentIntelligenceFeatureUsage)
  {
    v88 = richAttachmentIntelligenceFeatureUsage;
    richAttachmentIntelligenceFeatureUsage2 = [(FLOWSchemaFLOWSmsContext *)self richAttachmentIntelligenceFeatureUsage];
    richAttachmentIntelligenceFeatureUsage3 = [equalCopy richAttachmentIntelligenceFeatureUsage];
    v91 = [richAttachmentIntelligenceFeatureUsage2 isEqual:richAttachmentIntelligenceFeatureUsage3];

    if (!v91)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  recipientTypes = [(FLOWSchemaFLOWSmsContext *)self messageDurationsInSeconds];
  recipientTypes2 = [equalCopy messageDurationsInSeconds];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_121;
  }

  messageDurationsInSeconds = [(FLOWSchemaFLOWSmsContext *)self messageDurationsInSeconds];
  if (messageDurationsInSeconds)
  {
    v93 = messageDurationsInSeconds;
    messageDurationsInSeconds2 = [(FLOWSchemaFLOWSmsContext *)self messageDurationsInSeconds];
    messageDurationsInSeconds3 = [equalCopy messageDurationsInSeconds];
    v96 = [messageDurationsInSeconds2 isEqual:messageDurationsInSeconds3];

    if (!v96)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v97 = self->_has;
  v98 = (*&v97 >> 7) & 1;
  v99 = equalCopy[88];
  if (v98 != ((v99 >> 7) & 1))
  {
    goto LABEL_122;
  }

  if (v98)
  {
    userPersona = self->_userPersona;
    if (userPersona != [equalCopy userPersona])
    {
      goto LABEL_122;
    }

    v97 = self->_has;
    v99 = equalCopy[88];
  }

  v101 = (*&v97 >> 8) & 1;
  if (v101 != ((v99 >> 8) & 1))
  {
    goto LABEL_122;
  }

  if (v101)
  {
    isSummarized = self->_isSummarized;
    if (isSummarized != [equalCopy isSummarized])
    {
      goto LABEL_122;
    }

    v97 = self->_has;
    v99 = equalCopy[88];
  }

  v103 = (*&v97 >> 9) & 1;
  if (v103 != ((v99 >> 9) & 1))
  {
    goto LABEL_122;
  }

  if (v103)
  {
    summarySourceType = self->_summarySourceType;
    if (summarySourceType != [equalCopy summarySourceType])
    {
      goto LABEL_122;
    }
  }

  recipientTypes = [(FLOWSchemaFLOWSmsContext *)self contact];
  recipientTypes2 = [equalCopy contact];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_121;
  }

  contact = [(FLOWSchemaFLOWSmsContext *)self contact];
  if (contact)
  {
    v106 = contact;
    contact2 = [(FLOWSchemaFLOWSmsContext *)self contact];
    contact3 = [equalCopy contact];
    v109 = [contact2 isEqual:contact3];

    if (!v109)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  recipientTypes = [(FLOWSchemaFLOWSmsContext *)self tapback];
  recipientTypes2 = [equalCopy tapback];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
LABEL_121:

    goto LABEL_122;
  }

  tapback = [(FLOWSchemaFLOWSmsContext *)self tapback];
  if (!tapback)
  {

LABEL_125:
    v115 = 1;
    goto LABEL_123;
  }

  v111 = tapback;
  tapback2 = [(FLOWSchemaFLOWSmsContext *)self tapback];
  tapback3 = [equalCopy tapback];
  v114 = [tapback2 isEqual:tapback3];

  if (v114)
  {
    goto LABEL_125;
  }

LABEL_122:
  v115 = 0;
LABEL_123:

  return v115;
}

- (void)writeTo:(id)to
{
  v112 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteBOOLField();
  }

LABEL_5:
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v6 = self->_recipientTypes;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v99 objects:v111 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v100;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v100 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v99 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v99 objects:v111 count:16];
    }

    while (v8);
  }

  if (self->_whichMessagesize == 6)
  {
    PBDataWriterWriteUint32Field();
  }

  textMessageLength = [(FLOWSchemaFLOWSmsContext *)self textMessageLength];

  if (textMessageLength)
  {
    textMessageLength2 = [(FLOWSchemaFLOWSmsContext *)self textMessageLength];
    PBDataWriterWriteSubmessage();
  }

  textContext = [(FLOWSchemaFLOWSmsContext *)self textContext];

  if (textContext)
  {
    textContext2 = [(FLOWSchemaFLOWSmsContext *)self textContext];
    PBDataWriterWriteSubmessage();
  }

  audioContext = [(FLOWSchemaFLOWSmsContext *)self audioContext];

  if (audioContext)
  {
    audioContext2 = [(FLOWSchemaFLOWSmsContext *)self audioContext];
    PBDataWriterWriteSubmessage();
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v17 = self->_personTypes;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v95 objects:v110 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v96;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v96 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v95 + 1) + 8 * j) intValue];
        PBDataWriterWriteInt32Field();
      }

      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v95 objects:v110 count:16];
    }

    while (v19);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v22 = self->_readMessageTypes;
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v91 objects:v109 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v92;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v92 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v91 + 1) + 8 * k) intValue];
        PBDataWriterWriteInt32Field();
      }

      v24 = [(NSArray *)v22 countByEnumeratingWithState:&v91 objects:v109 count:16];
    }

    while (v24);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v27 = self->_isMultiLinguals;
  v28 = [(NSArray *)v27 countByEnumeratingWithState:&v87 objects:v108 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v88;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v88 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [*(*(&v87 + 1) + 8 * m) BOOLValue];
        PBDataWriterWriteBOOLField();
      }

      v29 = [(NSArray *)v27 countByEnumeratingWithState:&v87 objects:v108 count:16];
    }

    while (v29);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v32 = self->_isReadables;
  v33 = [(NSArray *)v32 countByEnumeratingWithState:&v83 objects:v107 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v84;
    do
    {
      for (n = 0; n != v34; ++n)
      {
        if (*v84 != v35)
        {
          objc_enumerationMutation(v32);
        }

        [*(*(&v83 + 1) + 8 * n) BOOLValue];
        PBDataWriterWriteBOOLField();
      }

      v34 = [(NSArray *)v32 countByEnumeratingWithState:&v83 objects:v107 count:16];
    }

    while (v34);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v37 = self->_isGroupMessages;
  v38 = [(NSArray *)v37 countByEnumeratingWithState:&v79 objects:v106 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v80;
    do
    {
      for (ii = 0; ii != v39; ++ii)
      {
        if (*v80 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [*(*(&v79 + 1) + 8 * ii) BOOLValue];
        PBDataWriterWriteBOOLField();
      }

      v39 = [(NSArray *)v37 countByEnumeratingWithState:&v79 objects:v106 count:16];
    }

    while (v39);
  }

  languageConfidenceMatrix = [(FLOWSchemaFLOWSmsContext *)self languageConfidenceMatrix];

  if (languageConfidenceMatrix)
  {
    languageConfidenceMatrix2 = [(FLOWSchemaFLOWSmsContext *)self languageConfidenceMatrix];
    PBDataWriterWriteSubmessage();
  }

  v44 = self->_has;
  if ((v44 & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
    v44 = self->_has;
    if ((v44 & 0x10) == 0)
    {
LABEL_59:
      if ((v44 & 0x20) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_99;
    }
  }

  else if ((v44 & 0x10) == 0)
  {
    goto LABEL_59;
  }

  PBDataWriterWriteBOOLField();
  v44 = self->_has;
  if ((v44 & 0x20) == 0)
  {
LABEL_60:
    if ((v44 & 0x40) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_99:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_61:
    PBDataWriterWriteInt32Field();
  }

LABEL_62:
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v45 = self->_isSenderShortCodeLists;
  v46 = [(NSArray *)v45 countByEnumeratingWithState:&v75 objects:v105 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v76;
    do
    {
      for (jj = 0; jj != v47; ++jj)
      {
        if (*v76 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [*(*(&v75 + 1) + 8 * jj) BOOLValue];
        PBDataWriterWriteBOOLField();
      }

      v47 = [(NSArray *)v45 countByEnumeratingWithState:&v75 objects:v105 count:16];
    }

    while (v47);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v50 = self->_isLongMessageLists;
  v51 = [(NSArray *)v50 countByEnumeratingWithState:&v71 objects:v104 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v72;
    do
    {
      for (kk = 0; kk != v52; ++kk)
      {
        if (*v72 != v53)
        {
          objc_enumerationMutation(v50);
        }

        [*(*(&v71 + 1) + 8 * kk) BOOLValue];
        PBDataWriterWriteBOOLField();
      }

      v52 = [(NSArray *)v50 countByEnumeratingWithState:&v71 objects:v104 count:16];
    }

    while (v52);
  }

  richAttachmentIntelligenceFeatureUsage = [(FLOWSchemaFLOWSmsContext *)self richAttachmentIntelligenceFeatureUsage];

  if (richAttachmentIntelligenceFeatureUsage)
  {
    richAttachmentIntelligenceFeatureUsage2 = [(FLOWSchemaFLOWSmsContext *)self richAttachmentIntelligenceFeatureUsage];
    PBDataWriterWriteSubmessage();
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v57 = self->_messageDurationsInSeconds;
  v58 = [(NSArray *)v57 countByEnumeratingWithState:&v67 objects:v103 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v68;
    do
    {
      for (mm = 0; mm != v59; ++mm)
      {
        if (*v68 != v60)
        {
          objc_enumerationMutation(v57);
        }

        [*(*(&v67 + 1) + 8 * mm) unsignedLongLongValue];
        PBDataWriterWriteUint64Field();
      }

      v59 = [(NSArray *)v57 countByEnumeratingWithState:&v67 objects:v103 count:16];
    }

    while (v59);
  }

  v62 = self->_has;
  if ((v62 & 0x80) != 0)
  {
    PBDataWriterWriteInt32Field();
    v62 = self->_has;
    if ((v62 & 0x100) == 0)
    {
LABEL_87:
      if ((v62 & 0x200) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_88;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_87;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_88:
    PBDataWriterWriteInt32Field();
  }

LABEL_89:
  contact = [(FLOWSchemaFLOWSmsContext *)self contact];

  if (contact)
  {
    contact2 = [(FLOWSchemaFLOWSmsContext *)self contact];
    PBDataWriterWriteSubmessage();
  }

  tapback = [(FLOWSchemaFLOWSmsContext *)self tapback];

  if (tapback)
  {
    tapback2 = [(FLOWSchemaFLOWSmsContext *)self tapback];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasSummarySourceType:(BOOL)type
{
  if (type)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsSummarized:(BOOL)summarized
{
  if (summarized)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasUserPersona:(BOOL)persona
{
  if (persona)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (unint64_t)messageDurationsInSecondsAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_messageDurationsInSeconds objectAtIndexedSubscript:index];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)addMessageDurationsInSeconds:(unint64_t)seconds
{
  messageDurationsInSeconds = self->_messageDurationsInSeconds;
  if (!messageDurationsInSeconds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_messageDurationsInSeconds;
    self->_messageDurationsInSeconds = array;

    messageDurationsInSeconds = self->_messageDurationsInSeconds;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:seconds];
  [(NSArray *)messageDurationsInSeconds addObject:v8];
}

- (BOOL)isLongMessageListAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_isLongMessageLists objectAtIndexedSubscript:index];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)addIsLongMessageList:(BOOL)list
{
  listCopy = list;
  isLongMessageLists = self->_isLongMessageLists;
  if (!isLongMessageLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_isLongMessageLists;
    self->_isLongMessageLists = array;

    isLongMessageLists = self->_isLongMessageLists;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:listCopy];
  [(NSArray *)isLongMessageLists addObject:v8];
}

- (BOOL)isSenderShortCodeListAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_isSenderShortCodeLists objectAtIndexedSubscript:index];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)addIsSenderShortCodeList:(BOOL)list
{
  listCopy = list;
  isSenderShortCodeLists = self->_isSenderShortCodeLists;
  if (!isSenderShortCodeLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_isSenderShortCodeLists;
    self->_isSenderShortCodeLists = array;

    isSenderShortCodeLists = self->_isSenderShortCodeLists;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:listCopy];
  [(NSArray *)isSenderShortCodeLists addObject:v8];
}

- (void)setHasAppendingActionReadMessagesCount:(BOOL)count
{
  if (count)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasIsReply:(BOOL)reply
{
  if (reply)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasIsLongMessage:(BOOL)message
{
  if (message)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasIsSenderShortCode:(BOOL)code
{
  if (code)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (BOOL)isGroupMessageAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_isGroupMessages objectAtIndexedSubscript:index];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)addIsGroupMessage:(BOOL)message
{
  messageCopy = message;
  isGroupMessages = self->_isGroupMessages;
  if (!isGroupMessages)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_isGroupMessages;
    self->_isGroupMessages = array;

    isGroupMessages = self->_isGroupMessages;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:messageCopy];
  [(NSArray *)isGroupMessages addObject:v8];
}

- (BOOL)isReadableAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_isReadables objectAtIndexedSubscript:index];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)addIsReadable:(BOOL)readable
{
  readableCopy = readable;
  isReadables = self->_isReadables;
  if (!isReadables)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_isReadables;
    self->_isReadables = array;

    isReadables = self->_isReadables;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:readableCopy];
  [(NSArray *)isReadables addObject:v8];
}

- (BOOL)isMultiLingualAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_isMultiLinguals objectAtIndexedSubscript:index];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)addIsMultiLingual:(BOOL)lingual
{
  lingualCopy = lingual;
  isMultiLinguals = self->_isMultiLinguals;
  if (!isMultiLinguals)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_isMultiLinguals;
    self->_isMultiLinguals = array;

    isMultiLinguals = self->_isMultiLinguals;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:lingualCopy];
  [(NSArray *)isMultiLinguals addObject:v8];
}

- (int)readMessageTypeAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_readMessageTypes objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addReadMessageType:(int)type
{
  v3 = *&type;
  readMessageTypes = self->_readMessageTypes;
  if (!readMessageTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_readMessageTypes;
    self->_readMessageTypes = array;

    readMessageTypes = self->_readMessageTypes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)readMessageTypes addObject:v8];
}

- (int)personTypeAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_personTypes objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addPersonType:(int)type
{
  v3 = *&type;
  personTypes = self->_personTypes;
  if (!personTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_personTypes;
    self->_personTypes = array;

    personTypes = self->_personTypes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)personTypes addObject:v8];
}

- (void)deleteAudioContext
{
  if (self->_whichMessagecontext == 9)
  {
    self->_whichMessagecontext = 0;
    self->_audioContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWSchemaFLOWSmsAudioContext)audioContext
{
  if (self->_whichMessagecontext == 9)
  {
    v3 = self->_audioContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAudioContext:(id)context
{
  contextCopy = context;
  textContext = self->_textContext;
  self->_textContext = 0;

  v6 = 9;
  if (!contextCopy)
  {
    v6 = 0;
  }

  self->_whichMessagecontext = v6;
  audioContext = self->_audioContext;
  self->_audioContext = contextCopy;
}

- (void)deleteTextContext
{
  if (self->_whichMessagecontext == 8)
  {
    self->_whichMessagecontext = 0;
    self->_textContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWSchemaFLOWSmsTextContext)textContext
{
  if (self->_whichMessagecontext == 8)
  {
    v3 = self->_textContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTextContext:(id)context
{
  contextCopy = context;
  audioContext = self->_audioContext;
  self->_audioContext = 0;

  self->_whichMessagecontext = 8 * (contextCopy != 0);
  textContext = self->_textContext;
  self->_textContext = contextCopy;
}

- (void)deleteTextMessageLength
{
  if (self->_whichMessagesize == 7)
  {
    self->_whichMessagesize = 0;
    self->_textMessageLength = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWSchemaFLOWTextMessageLength)textMessageLength
{
  if (self->_whichMessagesize == 7)
  {
    v3 = self->_textMessageLength;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTextMessageLength:(id)length
{
  self->_messageDurationMs = 0;
  v3 = 7;
  if (!length)
  {
    v3 = 0;
  }

  self->_whichMessagesize = v3;
  objc_storeStrong(&self->_textMessageLength, length);
}

- (void)deleteMessageDurationMs
{
  if (self->_whichMessagesize == 6)
  {
    self->_whichMessagesize = 0;
    self->_messageDurationMs = 0;
  }
}

- (unsigned)messageDurationMs
{
  if (self->_whichMessagesize == 6)
  {
    return self->_messageDurationMs;
  }

  else
  {
    return 0;
  }
}

- (void)setMessageDurationMs:(unsigned int)ms
{
  textMessageLength = self->_textMessageLength;
  self->_textMessageLength = 0;

  self->_whichMessagesize = 6;
  self->_messageDurationMs = ms;
}

- (int)recipientTypeAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_recipientTypes objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addRecipientType:(int)type
{
  v3 = *&type;
  recipientTypes = self->_recipientTypes;
  if (!recipientTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_recipientTypes;
    self->_recipientTypes = array;

    recipientTypes = self->_recipientTypes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)recipientTypes addObject:v8];
}

- (void)setHasKeyboardUsed:(BOOL)used
{
  if (used)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasEmojiUsed:(BOOL)used
{
  if (used)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v28.receiver = self;
  v28.super_class = FLOWSchemaFLOWSmsContext;
  v5 = [(SISchemaInstrumentationMessage *)&v28 applySensitiveConditionsPolicy:policyCopy];
  textMessageLength = [(FLOWSchemaFLOWSmsContext *)self textMessageLength];
  v7 = [textMessageLength applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWSmsContext *)self deleteTextMessageLength];
  }

  textContext = [(FLOWSchemaFLOWSmsContext *)self textContext];
  v10 = [textContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWSchemaFLOWSmsContext *)self deleteTextContext];
  }

  audioContext = [(FLOWSchemaFLOWSmsContext *)self audioContext];
  v13 = [audioContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(FLOWSchemaFLOWSmsContext *)self deleteAudioContext];
  }

  languageConfidenceMatrix = [(FLOWSchemaFLOWSmsContext *)self languageConfidenceMatrix];
  v16 = [languageConfidenceMatrix applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(FLOWSchemaFLOWSmsContext *)self deleteLanguageConfidenceMatrix];
  }

  richAttachmentIntelligenceFeatureUsage = [(FLOWSchemaFLOWSmsContext *)self richAttachmentIntelligenceFeatureUsage];
  v19 = [richAttachmentIntelligenceFeatureUsage applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(FLOWSchemaFLOWSmsContext *)self deleteRichAttachmentIntelligenceFeatureUsage];
  }

  contact = [(FLOWSchemaFLOWSmsContext *)self contact];
  v22 = [contact applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(FLOWSchemaFLOWSmsContext *)self deleteContact];
  }

  tapback = [(FLOWSchemaFLOWSmsContext *)self tapback];
  v25 = [tapback applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(FLOWSchemaFLOWSmsContext *)self deleteTapback];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end