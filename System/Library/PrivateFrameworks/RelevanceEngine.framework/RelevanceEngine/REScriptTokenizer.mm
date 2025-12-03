@interface REScriptTokenizer
- (BOOL)_matchTokenStart:(void *)start body:(void *)body value:(id *)value;
- (REScriptTokenizer)initWithScriptBuffer:(id)buffer;
- (REScriptTokenizerDelegate)delegate;
- (id)_readMultilineComment;
- (id)_readSingleComment;
- (void)_consumeWhitespace;
- (void)_popChar;
- (void)next;
@end

@implementation REScriptTokenizer

- (REScriptTokenizer)initWithScriptBuffer:(id)buffer
{
  bufferCopy = buffer;
  v10.receiver = self;
  v10.super_class = REScriptTokenizer;
  v6 = [(REScriptTokenizer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_buffer, buffer);
    currentToken = v7->_currentToken;
    v7->_currentToken = 0;

    [(REScriptTokenizer *)v7 _consumeWhitespace];
    [(REScriptTokenizer *)v7 next];
  }

  return v7;
}

- (void)next
{
  line = self->_line;
  column = self->_column;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__4;
  v52 = __Block_byref_object_dispose__4;
  v53 = &stru_283B97458;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __25__REScriptTokenizer_next__block_invoke;
  v43[3] = &unk_2785FA800;
  v43[4] = &v48;
  v43[5] = &v44;
  v5 = MEMORY[0x22AABC5E0](v43, a2);
  if ([(REScriptTokenizer *)self _hasChar])
  {
    v6 = v49;
    obj = v49[5];
    v7 = [(REScriptTokenizer *)self _matchTokenStart:REIsPreprocessStartCharacter body:REIsAlphaCharacter value:&obj];
    objc_storeStrong(v6 + 5, obj);
    if (v7)
    {
      v8 = v45;
      v9 = 2;
LABEL_4:
      v8[3] = v9;
      goto LABEL_34;
    }

    v10 = v49;
    v41 = v49[5];
    v11 = [(REScriptTokenizer *)self _matchTokenStart:REIsIdentifierStartCharacter body:REIsIdentifierCharacter value:&v41];
    objc_storeStrong(v10 + 5, v41);
    if (v11)
    {
      v45[3] = 6;
      v12 = v49[5];
      if (REKeywordTokenForString_onceToken != -1)
      {
        [REScriptTokenizer next];
      }

      v13 = [REKeywordTokenForString_KeywordTokenMap objectForKeyedSubscript:v12];
      v14 = v13;
      if (v13)
      {
        unsignedIntegerValue = [v13 unsignedIntegerValue];
LABEL_10:
        v16 = unsignedIntegerValue;

        v45[3] = v16;
        goto LABEL_34;
      }

LABEL_20:

      goto LABEL_34;
    }

    if ([(REScriptTokenizer *)self _peekChar]== 47)
    {
      [(REScriptTokenizer *)self _popChar];
      if ([(REScriptTokenizer *)self _hasChar])
      {
        if ([(REScriptTokenizer *)self _peekChar]== 47)
        {
          v45[3] = 7;
          [(REScriptTokenizer *)self _popChar];
          _readSingleComment = [(REScriptTokenizer *)self _readSingleComment];
          goto LABEL_32;
        }

        if ([(REScriptTokenizer *)self _peekChar]== 42)
        {
          v45[3] = 8;
          [(REScriptTokenizer *)self _popChar];
          _readSingleComment = [(REScriptTokenizer *)self _readMultilineComment];
          goto LABEL_32;
        }
      }

      v30 = v49[5];
      v49[5] = @"/";

      v5[2](v5);
      goto LABEL_34;
    }

    v18 = v49;
    v40 = v49[5];
    v19 = [(REScriptTokenizer *)self _matchTokenStart:REIsNumericCharacter body:REIsNumericCharacter value:&v40];
    objc_storeStrong(v18 + 5, v40);
    if (!v19)
    {
      if ([(REScriptTokenizer *)self _peekChar]!= 34)
      {
        _peekChar = [(REScriptTokenizer *)self _peekChar];
        if (RELoadControlCharacterMap_onceToken != -1)
        {
          [REScriptTokenizer next];
        }

        if ([REControlCharacterSet characterIsMember:_peekChar])
        {
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", -[REScriptTokenizer _peekChar](self, "_peekChar")];
          v27 = v49[5];
          v49[5] = v26;

          [(REScriptTokenizer *)self _popChar];
          v12 = v49[5];
          if (RELoadControlCharacterMap_onceToken != -1)
          {
            [REScriptTokenizer next];
          }

          v28 = [REControlTokenMap objectForKeyedSubscript:v12];
          v14 = v28;
          if (v28)
          {
            unsignedIntegerValue = [v28 unsignedIntegerValue];
            goto LABEL_10;
          }
        }

        else
        {
          v34 = v49;
          v38 = v49[5];
          v35 = [(REScriptTokenizer *)self _matchTokenStart:REIsOperatorCharacter body:REIsOperatorCharacter value:&v38];
          objc_storeStrong(v34 + 5, v38);
          if (v35)
          {
            v5[2](v5);
            goto LABEL_34;
          }

          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", -[REScriptTokenizer _peekChar](self, "_peekChar")];
          v37 = v49[5];
          v49[5] = v36;

          [(REScriptTokenizer *)self _popChar];
        }

        v8 = v45;
        v9 = 1;
        goto LABEL_4;
      }

      v45[3] = 5;
      [(REScriptTokenizer *)self _popChar];
      _readSingleComment = [(REScriptTokenizer *)self _readString];
LABEL_32:
      v29 = v49[5];
      v49[5] = _readSingleComment;

      goto LABEL_34;
    }

    v45[3] = 3;
    if ([(REScriptTokenizer *)self _hasChar]&& [(REScriptTokenizer *)self _peekChar]== 46)
    {
      v45[3] = 4;
      [(REScriptTokenizer *)self _popChar];
      v20 = [v49[5] stringByAppendingString:@"."];
      v21 = v49[5];
      v49[5] = v20;

      v39 = &stru_283B97458;
      v22 = [(REScriptTokenizer *)self _matchTokenStart:REIsNumericCharacter body:REIsNumericCharacter value:&v39];
      v12 = v39;
      if (v22)
      {
        v23 = [v49[5] stringByAppendingString:v12];
        v24 = v49[5];
        v49[5] = v23;
      }

      goto LABEL_20;
    }
  }

LABEL_34:
  v31 = [REScriptToken alloc];
  v32 = [(REScriptToken *)v31 initWithValue:v49[5] type:v45[3] line:line column:column];
  currentToken = self->_currentToken;
  self->_currentToken = v32;

  [(REScriptTokenizer *)self _validateToken];
  [(REScriptTokenizer *)self _consumeWhitespace];

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
}

void __25__REScriptTokenizer_next__block_invoke(uint64_t a1)
{
  v2 = RELoadOperatorCharacterMap_onceToken;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v2 != -1)
  {
    __25__REScriptTokenizer_next__block_invoke_cold_1();
  }

  v4 = [REOperatorTokenMap objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
}

- (id)_readSingleComment
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:@"//"];
  if ([(REScriptTokenizer *)self _hasChar])
  {
    do
    {
      _peekChar = [(REScriptTokenizer *)self _peekChar];
      if (_peekChar == 10)
      {
        break;
      }

      if (_peekChar == 13)
      {
        break;
      }

      [v3 appendFormat:@"%c", -[REScriptTokenizer _peekChar](self, "_peekChar")];
      [(REScriptTokenizer *)self _popChar];
    }

    while ([(REScriptTokenizer *)self _hasChar]);
  }

  v5 = [v3 copy];

  return v5;
}

- (id)_readMultilineComment
{
        if (v6)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      v14 = self->_currentToken;
      v25 = @"REErrorTokenKey";
      v26[0] = v14;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v9 = 200;
    }

    v15 = RECreateErrorWithCodeAndUseInfo(v9, v8);
  }

  if (v15)
  {
    delegate = [(REScriptTokenizer *)self delegate];
    [delegate tokenizer:self didEncouterTokenError:v15];
  }

LABEL_23:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_consumeWhitespace
{
  if ([(REScriptTokenizer *)self _hasChar])
  {
    do
    {
      _peekChar = [(REScriptTokenizer *)self _peekChar];
      if ((_peekChar - 9) >= 5 && _peekChar != 32)
      {
        break;
      }

      [(REScriptTokenizer *)self _popChar];
    }

    while ([(REScriptTokenizer *)self _hasChar]);
  }
}

- (void)_popChar
{
  ++self->_column;
  _peekChar = [(REScriptTokenizer *)self _peekChar];
  v4 = _peekChar;
  if (_peekChar == 10 || _peekChar == 13)
  {
    buffer = self->_buffer;
    p_buffer = &self->_buffer;
    p_buffer[2] = (p_buffer[2] + 1);
    p_buffer[3] = 0;
    [(REScriptBuffer *)buffer next];
    if (v4 != 13 || [(REScriptBuffer *)*p_buffer current]!= 10)
    {
      return;
    }
  }

  else
  {
    p_buffer = &self->_buffer;
  }

  v7 = *p_buffer;

  [(REScriptBuffer *)v7 next];
}

- (BOOL)_matchTokenStart:(void *)start body:(void *)body value:(id *)value
{
  _hasChar = [(REScriptTokenizer *)self _hasChar];
  LOBYTE(v10) = 0;
  if (body)
  {
    if (start)
    {
      if (_hasChar)
      {
        _peekChar = [(REScriptTokenizer *)self _peekChar];
        v10 = (start)();
        if (v10)
        {
          string = [MEMORY[0x277CCAB68] string];
          [string appendFormat:@"%c", _peekChar];
          [(REScriptTokenizer *)self _popChar];
          if ([(REScriptTokenizer *)self _hasChar])
          {
            _peekChar2 = [(REScriptTokenizer *)self _peekChar];
            if ((body)())
            {
              do
              {
                [string appendFormat:@"%c", _peekChar2];
                [(REScriptTokenizer *)self _popChar];
                if (![(REScriptTokenizer *)self _hasChar])
                {
                  break;
                }

                _peekChar2 = [(REScriptTokenizer *)self _peekChar];
              }

              while (((body)() & 1) != 0);
            }
          }

          if (value)
          {
            *value = [string copy];
          }

          LOBYTE(v10) = 1;
        }
      }
    }
  }

  return v10;
}

- (REScriptTokenizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end