@interface TUCaptionsResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCaptionsResult:(id)result;
- (TUCaptionsResult)initWithAVCCaptionsResult:(id)result;
- (TUCaptionsResult)initWithCoder:(id)coder;
- (TUCaptionsResult)initWithText:(id)text utteranceComplete:(BOOL)complete tokens:(id)tokens utteranceNumber:(unsigned int)number updateNumber:(unsigned int)updateNumber utteranceStartTimestamp:(double)timestamp utteranceDuration:(double)duration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUCaptionsResult

- (TUCaptionsResult)initWithAVCCaptionsResult:(id)result
{
  v40 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v38.receiver = self;
  v38.super_class = TUCaptionsResult;
  v5 = [(TUCaptionsResult *)&v38 init];
  if (v5)
  {
    v5->_utteranceComplete = [resultCopy utteranceComplete];
    text = [resultCopy text];
    v7 = [text copy];
    text = v5->_text;
    v5->_text = v7;

    v5->_utteranceNumber = [resultCopy utteranceNumber];
    v5->_updateNumber = [resultCopy updateNumber];
    [resultCopy utteranceStartTimestamp];
    v5->_utteranceStartTimestamp = v9;
    [resultCopy utteranceDuration];
    v5->_utteranceDuration = v10;
    tokens = [resultCopy tokens];
    v12 = [tokens count];

    if (v12)
    {
      v13 = MEMORY[0x1E695DF70];
      tokens2 = [resultCopy tokens];
      v15 = [v13 arrayWithCapacity:{objc_msgSend(tokens2, "count")}];
    }

    else
    {
      v15 = 0;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = resultCopy;
    tokens3 = [resultCopy tokens];
    v17 = [tokens3 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        v20 = 0;
        do
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(tokens3);
          }

          v21 = *(*(&v34 + 1) + 8 * v20);
          v22 = [TUCaption alloc];
          text2 = [v21 text];
          [v21 confidence];
          v25 = v24;
          range = [v21 range];
          v28 = [(TUCaption *)v22 initWithText:text2 confidence:range range:v27, v25];

          [v15 addObject:v28];
          ++v20;
        }

        while (v18 != v20);
        v18 = [tokens3 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v18);
    }

    v29 = [v15 copy];
    tokens = v5->_tokens;
    v5->_tokens = v29;

    resultCopy = v33;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (TUCaptionsResult)initWithText:(id)text utteranceComplete:(BOOL)complete tokens:(id)tokens utteranceNumber:(unsigned int)number updateNumber:(unsigned int)updateNumber utteranceStartTimestamp:(double)timestamp utteranceDuration:(double)duration
{
  v47 = *MEMORY[0x1E69E9840];
  textCopy = text;
  tokensCopy = tokens;
  v45.receiver = self;
  v45.super_class = TUCaptionsResult;
  v18 = [(TUCaptionsResult *)&v45 init];
  v19 = v18;
  if (v18)
  {
    v18->_utteranceComplete = complete;
    v20 = [textCopy copy];
    text = v19->_text;
    v19->_text = v20;

    v19->_utteranceNumber = number;
    v19->_updateNumber = updateNumber;
    v19->_utteranceStartTimestamp = timestamp;
    v19->_utteranceDuration = duration;
    if ([tokensCopy count])
    {
      v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(tokensCopy, "count")}];
    }

    else
    {
      v22 = 0;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = tokensCopy;
    v23 = tokensCopy;
    v24 = [v23 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v42;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v41 + 1) + 8 * i);
          v29 = [TUCaption alloc];
          text = [v28 text];
          [v28 confidence];
          v32 = v31;
          range = [v28 range];
          v35 = [(TUCaption *)v29 initWithText:text confidence:range range:v34, v32];

          [v22 addObject:v35];
        }

        v25 = [v23 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v25);
    }

    v36 = [v22 copy];
    tokens = v19->_tokens;
    v19->_tokens = v36;

    tokensCopy = v40;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" utteranceComplete=%d", -[TUCaptionsResult utteranceComplete](self, "utteranceComplete")];
  [v3 appendFormat:@" utteranceNumber=%d", -[TUCaptionsResult utteranceNumber](self, "utteranceNumber")];
  [v3 appendFormat:@" updateNumber=%d", -[TUCaptionsResult updateNumber](self, "updateNumber")];
  [(TUCaptionsResult *)self utteranceStartTimestamp];
  [v3 appendFormat:@" utteranceStartTimestamp=%f", v4];
  [(TUCaptionsResult *)self utteranceDuration];
  [v3 appendFormat:@" utteranceDuration=%f", v5];
  tokens = [(TUCaptionsResult *)self tokens];
  [v3 appendFormat:@" tokens=%@", tokens];

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_text);
  [coderCopy encodeObject:text forKey:v6];

  utteranceComplete = self->_utteranceComplete;
  v8 = NSStringFromSelector(sel_utteranceComplete);
  [coderCopy encodeBool:utteranceComplete forKey:v8];

  utteranceNumber = self->_utteranceNumber;
  v10 = NSStringFromSelector(sel_utteranceNumber);
  [coderCopy encodeInt32:utteranceNumber forKey:v10];

  updateNumber = self->_updateNumber;
  v12 = NSStringFromSelector(sel_updateNumber);
  [coderCopy encodeInt32:updateNumber forKey:v12];

  tokens = self->_tokens;
  v14 = NSStringFromSelector(sel_tokens);
  [coderCopy encodeObject:tokens forKey:v14];

  utteranceDuration = self->_utteranceDuration;
  v16 = NSStringFromSelector(sel_utteranceDuration);
  [coderCopy encodeDouble:v16 forKey:utteranceDuration];

  utteranceStartTimestamp = self->_utteranceStartTimestamp;
  v18 = NSStringFromSelector(sel_utteranceStartTimestamp);
  [coderCopy encodeDouble:v18 forKey:utteranceStartTimestamp];
}

- (TUCaptionsResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = TUCaptionsResult;
  v5 = [(TUCaptionsResult *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_text);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    text = v5->_text;
    v5->_text = v8;

    v10 = NSStringFromSelector(sel_utteranceComplete);
    v5->_utteranceComplete = [coderCopy decodeBoolForKey:v10];

    v11 = NSStringFromSelector(sel_updateNumber);
    v5->_updateNumber = [coderCopy decodeInt32ForKey:v11];

    v12 = NSStringFromSelector(sel_utteranceNumber);
    v5->_utteranceNumber = [coderCopy decodeInt32ForKey:v12];

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_tokens);
    v15 = [coderCopy decodeArrayOfObjectsOfClass:v13 forKey:v14];
    tokens = v5->_tokens;
    v5->_tokens = v15;

    v17 = NSStringFromSelector(sel_utteranceDuration);
    [coderCopy decodeDoubleForKey:v17];
    v5->_utteranceDuration = v18;

    v19 = NSStringFromSelector(sel_utteranceStartTimestamp);
    [coderCopy decodeDoubleForKey:v19];
    v5->_utteranceStartTimestamp = v20;
  }

  return v5;
}

- (unint64_t)hash
{
  text = [(TUCaptionsResult *)self text];
  v4 = [text hash];
  v5 = v4 ^ [(TUCaptionsResult *)self utteranceNumber];
  v6 = v5 ^ [(TUCaptionsResult *)self utteranceComplete];
  [(TUCaptionsResult *)self utteranceDuration];
  v8 = v6 ^ v7;
  [(TUCaptionsResult *)self utteranceStartTimestamp];
  v10 = v9;
  tokens = [(TUCaptionsResult *)self tokens];
  v12 = v8 ^ v10 ^ [tokens hash];
  updateNumber = [(TUCaptionsResult *)self updateNumber];

  return v12 ^ updateNumber;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCaptionsResult *)self isEqualToCaptionsResult:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCaptionsResult:(id)result
{
  resultCopy = result;
  text = self->_text;
  text = [resultCopy text];
  if (TUObjectsAreEqualOrNil(text, text) && (utteranceNumber = self->_utteranceNumber, utteranceNumber == [resultCopy utteranceNumber]) && (utteranceComplete = self->_utteranceComplete, utteranceComplete == objc_msgSend(resultCopy, "utteranceComplete")) && (utteranceDuration = self->_utteranceDuration, objc_msgSend(resultCopy, "utteranceDuration"), utteranceDuration == v10) && (utteranceStartTimestamp = self->_utteranceStartTimestamp, objc_msgSend(resultCopy, "utteranceStartTimestamp"), utteranceStartTimestamp == v12) && (updateNumber = self->_updateNumber, updateNumber == objc_msgSend(resultCopy, "updateNumber")))
  {
    tokens = self->_tokens;
    tokens = [resultCopy tokens];
    v16 = [(NSArray *)tokens isEqualToArray:tokens];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUCaptionsResult allocWithZone:zone];
  text = [(TUCaptionsResult *)self text];
  utteranceComplete = [(TUCaptionsResult *)self utteranceComplete];
  tokens = [(TUCaptionsResult *)self tokens];
  utteranceNumber = [(TUCaptionsResult *)self utteranceNumber];
  updateNumber = [(TUCaptionsResult *)self updateNumber];
  [(TUCaptionsResult *)self utteranceStartTimestamp];
  v11 = v10;
  [(TUCaptionsResult *)self utteranceDuration];
  v13 = [(TUCaptionsResult *)v4 initWithText:text utteranceComplete:utteranceComplete tokens:tokens utteranceNumber:utteranceNumber updateNumber:updateNumber utteranceStartTimestamp:v11 utteranceDuration:v12];

  return v13;
}

@end