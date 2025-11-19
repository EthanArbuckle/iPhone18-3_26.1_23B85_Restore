@interface FLOWSchemaFLOWSmsContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isGroupMessageAtIndex:(unint64_t)a3;
- (BOOL)isLongMessageListAtIndex:(unint64_t)a3;
- (BOOL)isMultiLingualAtIndex:(unint64_t)a3;
- (BOOL)isReadableAtIndex:(unint64_t)a3;
- (BOOL)isSenderShortCodeListAtIndex:(unint64_t)a3;
- (FLOWSchemaFLOWSmsAudioContext)audioContext;
- (FLOWSchemaFLOWSmsContext)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWSmsContext)initWithJSON:(id)a3;
- (FLOWSchemaFLOWSmsTextContext)textContext;
- (FLOWSchemaFLOWTextMessageLength)textMessageLength;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)personTypeAtIndex:(unint64_t)a3;
- (int)readMessageTypeAtIndex:(unint64_t)a3;
- (int)recipientTypeAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (unint64_t)messageDurationsInSecondsAtIndex:(unint64_t)a3;
- (unsigned)messageDurationMs;
- (void)addIsGroupMessage:(BOOL)a3;
- (void)addIsLongMessageList:(BOOL)a3;
- (void)addIsMultiLingual:(BOOL)a3;
- (void)addIsReadable:(BOOL)a3;
- (void)addIsSenderShortCodeList:(BOOL)a3;
- (void)addMessageDurationsInSeconds:(unint64_t)a3;
- (void)addPersonType:(int)a3;
- (void)addReadMessageType:(int)a3;
- (void)addRecipientType:(int)a3;
- (void)deleteAudioContext;
- (void)deleteMessageDurationMs;
- (void)deleteTextContext;
- (void)deleteTextMessageLength;
- (void)setAudioContext:(id)a3;
- (void)setHasAppendingActionReadMessagesCount:(BOOL)a3;
- (void)setHasEmojiUsed:(BOOL)a3;
- (void)setHasIsLongMessage:(BOOL)a3;
- (void)setHasIsReply:(BOOL)a3;
- (void)setHasIsSenderShortCode:(BOOL)a3;
- (void)setHasIsSummarized:(BOOL)a3;
- (void)setHasKeyboardUsed:(BOOL)a3;
- (void)setHasSummarySourceType:(BOOL)a3;
- (void)setHasUserPersona:(BOOL)a3;
- (void)setMessageDurationMs:(unsigned int)a3;
- (void)setTextContext:(id)a3;
- (void)setTextMessageLength:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWSmsContext

- (FLOWSchemaFLOWSmsContext)initWithDictionary:(id)a3
{
  v162 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v152.receiver = self;
  v152.super_class = FLOWSchemaFLOWSmsContext;
  v5 = [(FLOWSchemaFLOWSmsContext *)&v152 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"messageType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setMessageType:](v5, "setMessageType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"emojiUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setEmojiUsed:](v5, "setEmojiUsed:", [v7 BOOLValue]);
    }

    v103 = v7;
    v104 = v6;
    v8 = [v4 objectForKeyedSubscript:@"keyboardUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setKeyboardUsed:](v5, "setKeyboardUsed:", [v8 BOOLValue]);
    }

    v102 = v8;
    v9 = [v4 objectForKeyedSubscript:@"recipientType"];
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

    v16 = [v4 objectForKeyedSubscript:@"messageDurationMs"];
    objc_opt_class();
    v115 = v16;
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setMessageDurationMs:](v5, "setMessageDurationMs:", [v16 unsignedIntValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"textMessageLength"];
    objc_opt_class();
    v114 = v17;
    if (objc_opt_isKindOfClass())
    {
      v18 = [[FLOWSchemaFLOWTextMessageLength alloc] initWithDictionary:v17];
      [(FLOWSchemaFLOWSmsContext *)v5 setTextMessageLength:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"textContext"];
    objc_opt_class();
    v113 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = [[FLOWSchemaFLOWSmsTextContext alloc] initWithDictionary:v19];
      [(FLOWSchemaFLOWSmsContext *)v5 setTextContext:v20];
    }

    v21 = [v4 objectForKeyedSubscript:@"audioContext"];
    objc_opt_class();
    v112 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [[FLOWSchemaFLOWSmsAudioContext alloc] initWithDictionary:v21];
      [(FLOWSchemaFLOWSmsContext *)v5 setAudioContext:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"personType"];
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

    v30 = [v4 objectForKeyedSubscript:@"readMessageType"];
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

    v37 = [v4 objectForKeyedSubscript:@"isMultiLingual"];
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

    v44 = [v4 objectForKeyedSubscript:@"isReadable"];
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

    v51 = [v4 objectForKeyedSubscript:@"isGroupMessage"];
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

    v58 = [v4 objectForKeyedSubscript:@"languageConfidenceMatrix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = [[FLOWSchemaFLOWLanguageConfidenceMatrix alloc] initWithDictionary:v58];
      [(FLOWSchemaFLOWSmsContext *)v5 setLanguageConfidenceMatrix:v59];
    }

    v60 = [v4 objectForKeyedSubscript:@"isSenderShortCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setIsSenderShortCode:](v5, "setIsSenderShortCode:", [v60 BOOLValue]);
    }

    v61 = [v4 objectForKeyedSubscript:@"isLongMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setIsLongMessage:](v5, "setIsLongMessage:", [v61 BOOLValue]);
    }

    v62 = [v4 objectForKeyedSubscript:@"isReply"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setIsReply:](v5, "setIsReply:", [v62 BOOLValue]);
    }

    v97 = v62;
    v98 = v61;
    v99 = v60;
    v100 = v58;
    v63 = [v4 objectForKeyedSubscript:@"appendingActionReadMessagesCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setAppendingActionReadMessagesCount:](v5, "setAppendingActionReadMessagesCount:", [v63 intValue]);
    }

    v64 = [v4 objectForKeyedSubscript:{@"isSenderShortCodeList", v63}];
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

    v71 = [v4 objectForKeyedSubscript:@"isLongMessageList"];
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

    v78 = [v4 objectForKeyedSubscript:@"richAttachmentIntelligenceFeatureUsage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v79 = [[FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage alloc] initWithDictionary:v78];
      [(FLOWSchemaFLOWSmsContext *)v5 setRichAttachmentIntelligenceFeatureUsage:v79];
    }

    v101 = v9;
    v80 = [v4 objectForKeyedSubscript:@"messageDurationsInSeconds"];
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

    v87 = [v4 objectForKeyedSubscript:@"userPersona"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setUserPersona:](v5, "setUserPersona:", [v87 intValue]);
    }

    v88 = [v4 objectForKeyedSubscript:@"isSummarized"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setIsSummarized:](v5, "setIsSummarized:", [v88 BOOLValue]);
    }

    v89 = [v4 objectForKeyedSubscript:@"summarySourceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSmsContext setSummarySourceType:](v5, "setSummarySourceType:", [v89 intValue]);
    }

    v90 = [v4 objectForKeyedSubscript:@"contact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v91 = [[FLOWSchemaFLOWContact alloc] initWithDictionary:v90];
      [(FLOWSchemaFLOWSmsContext *)v5 setContact:v91];
    }

    v92 = [v4 objectForKeyedSubscript:@"tapback"];
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

- (FLOWSchemaFLOWSmsContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWSmsContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWSmsContext *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 0x40) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[FLOWSchemaFLOWSmsContext appendingActionReadMessagesCount](self, "appendingActionReadMessagesCount")}];
    [v3 setObject:v4 forKeyedSubscript:@"appendingActionReadMessagesCount"];
  }

  if (self->_audioContext)
  {
    v5 = [(FLOWSchemaFLOWSmsContext *)self audioContext];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"audioContext"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"audioContext"];
    }
  }

  if (self->_contact)
  {
    v8 = [(FLOWSchemaFLOWSmsContext *)self contact];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"contact"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"contact"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSmsContext emojiUsed](self, "emojiUsed")}];
    [v3 setObject:v11 forKeyedSubscript:@"emojiUsed"];
  }

  if ([(NSArray *)self->_isGroupMessages count])
  {
    v12 = [(FLOWSchemaFLOWSmsContext *)self isGroupMessages];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"isGroupMessage"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSmsContext isLongMessage](self, "isLongMessage")}];
    [v3 setObject:v14 forKeyedSubscript:@"isLongMessage"];
  }

  if ([(NSArray *)self->_isLongMessageLists count])
  {
    v15 = [(FLOWSchemaFLOWSmsContext *)self isLongMessageLists];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"isLongMessageList"];
  }

  if ([(NSArray *)self->_isMultiLinguals count])
  {
    v17 = [(FLOWSchemaFLOWSmsContext *)self isMultiLinguals];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"isMultiLingual"];
  }

  if ([(NSArray *)self->_isReadables count])
  {
    v19 = [(FLOWSchemaFLOWSmsContext *)self isReadables];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"isReadable"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSmsContext isReply](self, "isReply")}];
    [v3 setObject:v22 forKeyedSubscript:@"isReply"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSmsContext isSenderShortCode](self, "isSenderShortCode")}];
    [v3 setObject:v23 forKeyedSubscript:@"isSenderShortCode"];
  }

  if ([(NSArray *)self->_isSenderShortCodeLists count])
  {
    v24 = [(FLOWSchemaFLOWSmsContext *)self isSenderShortCodeLists];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"isSenderShortCodeList"];
  }

  v26 = self->_has;
  if ((v26 & 0x100) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSmsContext isSummarized](self, "isSummarized")}];
    [v3 setObject:v27 forKeyedSubscript:@"isSummarized"];

    v26 = self->_has;
  }

  if ((v26 & 4) != 0)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSmsContext keyboardUsed](self, "keyboardUsed")}];
    [v3 setObject:v28 forKeyedSubscript:@"keyboardUsed"];
  }

  if (self->_languageConfidenceMatrix)
  {
    v29 = [(FLOWSchemaFLOWSmsContext *)self languageConfidenceMatrix];
    v30 = [v29 dictionaryRepresentation];
    if (v30)
    {
      [v3 setObject:v30 forKeyedSubscript:@"languageConfidenceMatrix"];
    }

    else
    {
      v31 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v31 forKeyedSubscript:@"languageConfidenceMatrix"];
    }
  }

  if (self->_whichMessagesize == 6)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWSmsContext messageDurationMs](self, "messageDurationMs")}];
    [v3 setObject:v32 forKeyedSubscript:@"messageDurationMs"];
  }

  if ([(NSArray *)self->_messageDurationsInSeconds count])
  {
    v33 = [(FLOWSchemaFLOWSmsContext *)self messageDurationsInSeconds];
    v34 = [v33 copy];
    [v3 setObject:v34 forKeyedSubscript:@"messageDurationsInSeconds"];
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

    [v3 setObject:v36 forKeyedSubscript:@"messageType"];
  }

  if ([(NSArray *)self->_personTypes count])
  {
    v37 = [(FLOWSchemaFLOWSmsContext *)self personTypes];
    v38 = [v37 copy];
    [v3 setObject:v38 forKeyedSubscript:@"personType"];
  }

  if ([(NSArray *)self->_readMessageTypes count])
  {
    v39 = [(FLOWSchemaFLOWSmsContext *)self readMessageTypes];
    v40 = [v39 copy];
    [v3 setObject:v40 forKeyedSubscript:@"readMessageType"];
  }

  if ([(NSArray *)self->_recipientTypes count])
  {
    v41 = [(FLOWSchemaFLOWSmsContext *)self recipientTypes];
    v42 = [v41 copy];
    [v3 setObject:v42 forKeyedSubscript:@"recipientType"];
  }

  if (self->_richAttachmentIntelligenceFeatureUsage)
  {
    v43 = [(FLOWSchemaFLOWSmsContext *)self richAttachmentIntelligenceFeatureUsage];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"richAttachmentIntelligenceFeatureUsage"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"richAttachmentIntelligenceFeatureUsage"];
    }
  }

  if ((*&self->_has & 0x200) != 0)
  {
    v46 = [(FLOWSchemaFLOWSmsContext *)self summarySourceType];
    v47 = @"FLOWSUMMARYSOURCETYPE_UNKNOWN";
    if (v46 == 1)
    {
      v47 = @"FLOWSUMMARYSOURCETYPE_SINGLE_MESSAGE";
    }

    if (v46 == 2)
    {
      v48 = @"FLOWSUMMARYSOURCETYPE_MULTIPLE_MESSAGES";
    }

    else
    {
      v48 = v47;
    }

    [v3 setObject:v48 forKeyedSubscript:@"summarySourceType"];
  }

  if (self->_tapback)
  {
    v49 = [(FLOWSchemaFLOWSmsContext *)self tapback];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"tapback"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"tapback"];
    }
  }

  if (self->_textContext)
  {
    v52 = [(FLOWSchemaFLOWSmsContext *)self textContext];
    v53 = [v52 dictionaryRepresentation];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"textContext"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"textContext"];
    }
  }

  if (self->_textMessageLength)
  {
    v55 = [(FLOWSchemaFLOWSmsContext *)self textMessageLength];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"textMessageLength"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"textMessageLength"];
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

    [v3 setObject:v59 forKeyedSubscript:@"userPersona"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v60 = v3;

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_122;
  }

  whichMessagesize = self->_whichMessagesize;
  if (whichMessagesize != [v4 whichMessagesize])
  {
    goto LABEL_122;
  }

  whichMessagecontext = self->_whichMessagecontext;
  if (whichMessagecontext != [v4 whichMessagecontext])
  {
    goto LABEL_122;
  }

  has = self->_has;
  v8 = v4[88];
  if ((*&has & 1) != (v8 & 1))
  {
    goto LABEL_122;
  }

  if (*&has)
  {
    messageType = self->_messageType;
    if (messageType != [v4 messageType])
    {
      goto LABEL_122;
    }

    has = self->_has;
    v8 = v4[88];
  }

  v10 = (*&has >> 1) & 1;
  if (v10 != ((v8 >> 1) & 1))
  {
    goto LABEL_122;
  }

  if (v10)
  {
    emojiUsed = self->_emojiUsed;
    if (emojiUsed != [v4 emojiUsed])
    {
      goto LABEL_122;
    }

    has = self->_has;
    v8 = v4[88];
  }

  v12 = (*&has >> 2) & 1;
  if (v12 != ((v8 >> 2) & 1))
  {
    goto LABEL_122;
  }

  if (v12)
  {
    keyboardUsed = self->_keyboardUsed;
    if (keyboardUsed != [v4 keyboardUsed])
    {
      goto LABEL_122;
    }
  }

  v14 = [(FLOWSchemaFLOWSmsContext *)self recipientTypes];
  v15 = [v4 recipientTypes];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_121;
  }

  v16 = [(FLOWSchemaFLOWSmsContext *)self recipientTypes];
  if (v16)
  {
    v17 = v16;
    v18 = [(FLOWSchemaFLOWSmsContext *)self recipientTypes];
    v19 = [v4 recipientTypes];
    v20 = [v18 isEqual:v19];

    if (!v20)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  messageDurationMs = self->_messageDurationMs;
  if (messageDurationMs != [v4 messageDurationMs])
  {
    goto LABEL_122;
  }

  v14 = [(FLOWSchemaFLOWSmsContext *)self textMessageLength];
  v15 = [v4 textMessageLength];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_121;
  }

  v22 = [(FLOWSchemaFLOWSmsContext *)self textMessageLength];
  if (v22)
  {
    v23 = v22;
    v24 = [(FLOWSchemaFLOWSmsContext *)self textMessageLength];
    v25 = [v4 textMessageLength];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v14 = [(FLOWSchemaFLOWSmsContext *)self textContext];
  v15 = [v4 textContext];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_121;
  }

  v27 = [(FLOWSchemaFLOWSmsContext *)self textContext];
  if (v27)
  {
    v28 = v27;
    v29 = [(FLOWSchemaFLOWSmsContext *)self textContext];
    v30 = [v4 textContext];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v14 = [(FLOWSchemaFLOWSmsContext *)self audioContext];
  v15 = [v4 audioContext];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_121;
  }

  v32 = [(FLOWSchemaFLOWSmsContext *)self audioContext];
  if (v32)
  {
    v33 = v32;
    v34 = [(FLOWSchemaFLOWSmsContext *)self audioContext];
    v35 = [v4 audioContext];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v14 = [(FLOWSchemaFLOWSmsContext *)self personTypes];
  v15 = [v4 personTypes];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_121;
  }

  v37 = [(FLOWSchemaFLOWSmsContext *)self personTypes];
  if (v37)
  {
    v38 = v37;
    v39 = [(FLOWSchemaFLOWSmsContext *)self personTypes];
    v40 = [v4 personTypes];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v14 = [(FLOWSchemaFLOWSmsContext *)self readMessageTypes];
  v15 = [v4 readMessageTypes];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_121;
  }

  v42 = [(FLOWSchemaFLOWSmsContext *)self readMessageTypes];
  if (v42)
  {
    v43 = v42;
    v44 = [(FLOWSchemaFLOWSmsContext *)self readMessageTypes];
    v45 = [v4 readMessageTypes];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v14 = [(FLOWSchemaFLOWSmsContext *)self isMultiLinguals];
  v15 = [v4 isMultiLinguals];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_121;
  }

  v47 = [(FLOWSchemaFLOWSmsContext *)self isMultiLinguals];
  if (v47)
  {
    v48 = v47;
    v49 = [(FLOWSchemaFLOWSmsContext *)self isMultiLinguals];
    v50 = [v4 isMultiLinguals];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v14 = [(FLOWSchemaFLOWSmsContext *)self isReadables];
  v15 = [v4 isReadables];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_121;
  }

  v52 = [(FLOWSchemaFLOWSmsContext *)self isReadables];
  if (v52)
  {
    v53 = v52;
    v54 = [(FLOWSchemaFLOWSmsContext *)self isReadables];
    v55 = [v4 isReadables];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v14 = [(FLOWSchemaFLOWSmsContext *)self isGroupMessages];
  v15 = [v4 isGroupMessages];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_121;
  }

  v57 = [(FLOWSchemaFLOWSmsContext *)self isGroupMessages];
  if (v57)
  {
    v58 = v57;
    v59 = [(FLOWSchemaFLOWSmsContext *)self isGroupMessages];
    v60 = [v4 isGroupMessages];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v14 = [(FLOWSchemaFLOWSmsContext *)self languageConfidenceMatrix];
  v15 = [v4 languageConfidenceMatrix];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_121;
  }

  v62 = [(FLOWSchemaFLOWSmsContext *)self languageConfidenceMatrix];
  if (v62)
  {
    v63 = v62;
    v64 = [(FLOWSchemaFLOWSmsContext *)self languageConfidenceMatrix];
    v65 = [v4 languageConfidenceMatrix];
    v66 = [v64 isEqual:v65];

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
  v69 = v4[88];
  if (v68 != ((v69 >> 3) & 1))
  {
    goto LABEL_122;
  }

  if (v68)
  {
    isSenderShortCode = self->_isSenderShortCode;
    if (isSenderShortCode != [v4 isSenderShortCode])
    {
      goto LABEL_122;
    }

    v67 = self->_has;
    v69 = v4[88];
  }

  v71 = (*&v67 >> 4) & 1;
  if (v71 != ((v69 >> 4) & 1))
  {
    goto LABEL_122;
  }

  if (v71)
  {
    isLongMessage = self->_isLongMessage;
    if (isLongMessage != [v4 isLongMessage])
    {
      goto LABEL_122;
    }

    v67 = self->_has;
    v69 = v4[88];
  }

  v73 = (*&v67 >> 5) & 1;
  if (v73 != ((v69 >> 5) & 1))
  {
    goto LABEL_122;
  }

  if (v73)
  {
    isReply = self->_isReply;
    if (isReply != [v4 isReply])
    {
      goto LABEL_122;
    }

    v67 = self->_has;
    v69 = v4[88];
  }

  v75 = (*&v67 >> 6) & 1;
  if (v75 != ((v69 >> 6) & 1))
  {
    goto LABEL_122;
  }

  if (v75)
  {
    appendingActionReadMessagesCount = self->_appendingActionReadMessagesCount;
    if (appendingActionReadMessagesCount != [v4 appendingActionReadMessagesCount])
    {
      goto LABEL_122;
    }
  }

  v14 = [(FLOWSchemaFLOWSmsContext *)self isSenderShortCodeLists];
  v15 = [v4 isSenderShortCodeLists];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_121;
  }

  v77 = [(FLOWSchemaFLOWSmsContext *)self isSenderShortCodeLists];
  if (v77)
  {
    v78 = v77;
    v79 = [(FLOWSchemaFLOWSmsContext *)self isSenderShortCodeLists];
    v80 = [v4 isSenderShortCodeLists];
    v81 = [v79 isEqual:v80];

    if (!v81)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v14 = [(FLOWSchemaFLOWSmsContext *)self isLongMessageLists];
  v15 = [v4 isLongMessageLists];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_121;
  }

  v82 = [(FLOWSchemaFLOWSmsContext *)self isLongMessageLists];
  if (v82)
  {
    v83 = v82;
    v84 = [(FLOWSchemaFLOWSmsContext *)self isLongMessageLists];
    v85 = [v4 isLongMessageLists];
    v86 = [v84 isEqual:v85];

    if (!v86)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v14 = [(FLOWSchemaFLOWSmsContext *)self richAttachmentIntelligenceFeatureUsage];
  v15 = [v4 richAttachmentIntelligenceFeatureUsage];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_121;
  }

  v87 = [(FLOWSchemaFLOWSmsContext *)self richAttachmentIntelligenceFeatureUsage];
  if (v87)
  {
    v88 = v87;
    v89 = [(FLOWSchemaFLOWSmsContext *)self richAttachmentIntelligenceFeatureUsage];
    v90 = [v4 richAttachmentIntelligenceFeatureUsage];
    v91 = [v89 isEqual:v90];

    if (!v91)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v14 = [(FLOWSchemaFLOWSmsContext *)self messageDurationsInSeconds];
  v15 = [v4 messageDurationsInSeconds];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_121;
  }

  v92 = [(FLOWSchemaFLOWSmsContext *)self messageDurationsInSeconds];
  if (v92)
  {
    v93 = v92;
    v94 = [(FLOWSchemaFLOWSmsContext *)self messageDurationsInSeconds];
    v95 = [v4 messageDurationsInSeconds];
    v96 = [v94 isEqual:v95];

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
  v99 = v4[88];
  if (v98 != ((v99 >> 7) & 1))
  {
    goto LABEL_122;
  }

  if (v98)
  {
    userPersona = self->_userPersona;
    if (userPersona != [v4 userPersona])
    {
      goto LABEL_122;
    }

    v97 = self->_has;
    v99 = v4[88];
  }

  v101 = (*&v97 >> 8) & 1;
  if (v101 != ((v99 >> 8) & 1))
  {
    goto LABEL_122;
  }

  if (v101)
  {
    isSummarized = self->_isSummarized;
    if (isSummarized != [v4 isSummarized])
    {
      goto LABEL_122;
    }

    v97 = self->_has;
    v99 = v4[88];
  }

  v103 = (*&v97 >> 9) & 1;
  if (v103 != ((v99 >> 9) & 1))
  {
    goto LABEL_122;
  }

  if (v103)
  {
    summarySourceType = self->_summarySourceType;
    if (summarySourceType != [v4 summarySourceType])
    {
      goto LABEL_122;
    }
  }

  v14 = [(FLOWSchemaFLOWSmsContext *)self contact];
  v15 = [v4 contact];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_121;
  }

  v105 = [(FLOWSchemaFLOWSmsContext *)self contact];
  if (v105)
  {
    v106 = v105;
    v107 = [(FLOWSchemaFLOWSmsContext *)self contact];
    v108 = [v4 contact];
    v109 = [v107 isEqual:v108];

    if (!v109)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v14 = [(FLOWSchemaFLOWSmsContext *)self tapback];
  v15 = [v4 tapback];
  if ((v14 != 0) == (v15 == 0))
  {
LABEL_121:

    goto LABEL_122;
  }

  v110 = [(FLOWSchemaFLOWSmsContext *)self tapback];
  if (!v110)
  {

LABEL_125:
    v115 = 1;
    goto LABEL_123;
  }

  v111 = v110;
  v112 = [(FLOWSchemaFLOWSmsContext *)self tapback];
  v113 = [v4 tapback];
  v114 = [v112 isEqual:v113];

  if (v114)
  {
    goto LABEL_125;
  }

LABEL_122:
  v115 = 0;
LABEL_123:

  return v115;
}

- (void)writeTo:(id)a3
{
  v112 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v11 = [(FLOWSchemaFLOWSmsContext *)self textMessageLength];

  if (v11)
  {
    v12 = [(FLOWSchemaFLOWSmsContext *)self textMessageLength];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(FLOWSchemaFLOWSmsContext *)self textContext];

  if (v13)
  {
    v14 = [(FLOWSchemaFLOWSmsContext *)self textContext];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(FLOWSchemaFLOWSmsContext *)self audioContext];

  if (v15)
  {
    v16 = [(FLOWSchemaFLOWSmsContext *)self audioContext];
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

  v42 = [(FLOWSchemaFLOWSmsContext *)self languageConfidenceMatrix];

  if (v42)
  {
    v43 = [(FLOWSchemaFLOWSmsContext *)self languageConfidenceMatrix];
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

  v55 = [(FLOWSchemaFLOWSmsContext *)self richAttachmentIntelligenceFeatureUsage];

  if (v55)
  {
    v56 = [(FLOWSchemaFLOWSmsContext *)self richAttachmentIntelligenceFeatureUsage];
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
  v63 = [(FLOWSchemaFLOWSmsContext *)self contact];

  if (v63)
  {
    v64 = [(FLOWSchemaFLOWSmsContext *)self contact];
    PBDataWriterWriteSubmessage();
  }

  v65 = [(FLOWSchemaFLOWSmsContext *)self tapback];

  if (v65)
  {
    v66 = [(FLOWSchemaFLOWSmsContext *)self tapback];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasSummarySourceType:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsSummarized:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasUserPersona:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (unint64_t)messageDurationsInSecondsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_messageDurationsInSeconds objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (void)addMessageDurationsInSeconds:(unint64_t)a3
{
  messageDurationsInSeconds = self->_messageDurationsInSeconds;
  if (!messageDurationsInSeconds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_messageDurationsInSeconds;
    self->_messageDurationsInSeconds = v6;

    messageDurationsInSeconds = self->_messageDurationsInSeconds;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(NSArray *)messageDurationsInSeconds addObject:v8];
}

- (BOOL)isLongMessageListAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_isLongMessageLists objectAtIndexedSubscript:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)addIsLongMessageList:(BOOL)a3
{
  v3 = a3;
  isLongMessageLists = self->_isLongMessageLists;
  if (!isLongMessageLists)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_isLongMessageLists;
    self->_isLongMessageLists = v6;

    isLongMessageLists = self->_isLongMessageLists;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(NSArray *)isLongMessageLists addObject:v8];
}

- (BOOL)isSenderShortCodeListAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_isSenderShortCodeLists objectAtIndexedSubscript:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)addIsSenderShortCodeList:(BOOL)a3
{
  v3 = a3;
  isSenderShortCodeLists = self->_isSenderShortCodeLists;
  if (!isSenderShortCodeLists)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_isSenderShortCodeLists;
    self->_isSenderShortCodeLists = v6;

    isSenderShortCodeLists = self->_isSenderShortCodeLists;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(NSArray *)isSenderShortCodeLists addObject:v8];
}

- (void)setHasAppendingActionReadMessagesCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasIsReply:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasIsLongMessage:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasIsSenderShortCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (BOOL)isGroupMessageAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_isGroupMessages objectAtIndexedSubscript:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)addIsGroupMessage:(BOOL)a3
{
  v3 = a3;
  isGroupMessages = self->_isGroupMessages;
  if (!isGroupMessages)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_isGroupMessages;
    self->_isGroupMessages = v6;

    isGroupMessages = self->_isGroupMessages;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(NSArray *)isGroupMessages addObject:v8];
}

- (BOOL)isReadableAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_isReadables objectAtIndexedSubscript:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)addIsReadable:(BOOL)a3
{
  v3 = a3;
  isReadables = self->_isReadables;
  if (!isReadables)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_isReadables;
    self->_isReadables = v6;

    isReadables = self->_isReadables;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(NSArray *)isReadables addObject:v8];
}

- (BOOL)isMultiLingualAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_isMultiLinguals objectAtIndexedSubscript:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)addIsMultiLingual:(BOOL)a3
{
  v3 = a3;
  isMultiLinguals = self->_isMultiLinguals;
  if (!isMultiLinguals)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_isMultiLinguals;
    self->_isMultiLinguals = v6;

    isMultiLinguals = self->_isMultiLinguals;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(NSArray *)isMultiLinguals addObject:v8];
}

- (int)readMessageTypeAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_readMessageTypes objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addReadMessageType:(int)a3
{
  v3 = *&a3;
  readMessageTypes = self->_readMessageTypes;
  if (!readMessageTypes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_readMessageTypes;
    self->_readMessageTypes = v6;

    readMessageTypes = self->_readMessageTypes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)readMessageTypes addObject:v8];
}

- (int)personTypeAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_personTypes objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addPersonType:(int)a3
{
  v3 = *&a3;
  personTypes = self->_personTypes;
  if (!personTypes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_personTypes;
    self->_personTypes = v6;

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

- (void)setAudioContext:(id)a3
{
  v4 = a3;
  textContext = self->_textContext;
  self->_textContext = 0;

  v6 = 9;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichMessagecontext = v6;
  audioContext = self->_audioContext;
  self->_audioContext = v4;
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

- (void)setTextContext:(id)a3
{
  v4 = a3;
  audioContext = self->_audioContext;
  self->_audioContext = 0;

  self->_whichMessagecontext = 8 * (v4 != 0);
  textContext = self->_textContext;
  self->_textContext = v4;
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

- (void)setTextMessageLength:(id)a3
{
  self->_messageDurationMs = 0;
  v3 = 7;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichMessagesize = v3;
  objc_storeStrong(&self->_textMessageLength, a3);
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

- (void)setMessageDurationMs:(unsigned int)a3
{
  textMessageLength = self->_textMessageLength;
  self->_textMessageLength = 0;

  self->_whichMessagesize = 6;
  self->_messageDurationMs = a3;
}

- (int)recipientTypeAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_recipientTypes objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addRecipientType:(int)a3
{
  v3 = *&a3;
  recipientTypes = self->_recipientTypes;
  if (!recipientTypes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_recipientTypes;
    self->_recipientTypes = v6;

    recipientTypes = self->_recipientTypes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)recipientTypes addObject:v8];
}

- (void)setHasKeyboardUsed:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasEmojiUsed:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = FLOWSchemaFLOWSmsContext;
  v5 = [(SISchemaInstrumentationMessage *)&v28 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWSmsContext *)self textMessageLength];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWSchemaFLOWSmsContext *)self deleteTextMessageLength];
  }

  v9 = [(FLOWSchemaFLOWSmsContext *)self textContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(FLOWSchemaFLOWSmsContext *)self deleteTextContext];
  }

  v12 = [(FLOWSchemaFLOWSmsContext *)self audioContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(FLOWSchemaFLOWSmsContext *)self deleteAudioContext];
  }

  v15 = [(FLOWSchemaFLOWSmsContext *)self languageConfidenceMatrix];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(FLOWSchemaFLOWSmsContext *)self deleteLanguageConfidenceMatrix];
  }

  v18 = [(FLOWSchemaFLOWSmsContext *)self richAttachmentIntelligenceFeatureUsage];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(FLOWSchemaFLOWSmsContext *)self deleteRichAttachmentIntelligenceFeatureUsage];
  }

  v21 = [(FLOWSchemaFLOWSmsContext *)self contact];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(FLOWSchemaFLOWSmsContext *)self deleteContact];
  }

  v24 = [(FLOWSchemaFLOWSmsContext *)self tapback];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
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