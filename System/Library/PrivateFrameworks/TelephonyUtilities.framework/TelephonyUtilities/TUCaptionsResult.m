@interface TUCaptionsResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCaptionsResult:(id)a3;
- (TUCaptionsResult)initWithAVCCaptionsResult:(id)a3;
- (TUCaptionsResult)initWithCoder:(id)a3;
- (TUCaptionsResult)initWithText:(id)a3 utteranceComplete:(BOOL)a4 tokens:(id)a5 utteranceNumber:(unsigned int)a6 updateNumber:(unsigned int)a7 utteranceStartTimestamp:(double)a8 utteranceDuration:(double)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUCaptionsResult

- (TUCaptionsResult)initWithAVCCaptionsResult:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = TUCaptionsResult;
  v5 = [(TUCaptionsResult *)&v38 init];
  if (v5)
  {
    v5->_utteranceComplete = [v4 utteranceComplete];
    v6 = [v4 text];
    v7 = [v6 copy];
    text = v5->_text;
    v5->_text = v7;

    v5->_utteranceNumber = [v4 utteranceNumber];
    v5->_updateNumber = [v4 updateNumber];
    [v4 utteranceStartTimestamp];
    v5->_utteranceStartTimestamp = v9;
    [v4 utteranceDuration];
    v5->_utteranceDuration = v10;
    v11 = [v4 tokens];
    v12 = [v11 count];

    if (v12)
    {
      v13 = MEMORY[0x1E695DF70];
      v14 = [v4 tokens];
      v15 = [v13 arrayWithCapacity:{objc_msgSend(v14, "count")}];
    }

    else
    {
      v15 = 0;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = v4;
    v16 = [v4 tokens];
    v17 = [v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v34 + 1) + 8 * v20);
          v22 = [TUCaption alloc];
          v23 = [v21 text];
          [v21 confidence];
          v25 = v24;
          v26 = [v21 range];
          v28 = [(TUCaption *)v22 initWithText:v23 confidence:v26 range:v27, v25];

          [v15 addObject:v28];
          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v18);
    }

    v29 = [v15 copy];
    tokens = v5->_tokens;
    v5->_tokens = v29;

    v4 = v33;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (TUCaptionsResult)initWithText:(id)a3 utteranceComplete:(BOOL)a4 tokens:(id)a5 utteranceNumber:(unsigned int)a6 updateNumber:(unsigned int)a7 utteranceStartTimestamp:(double)a8 utteranceDuration:(double)a9
{
  v47 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a5;
  v45.receiver = self;
  v45.super_class = TUCaptionsResult;
  v18 = [(TUCaptionsResult *)&v45 init];
  v19 = v18;
  if (v18)
  {
    v18->_utteranceComplete = a4;
    v20 = [v16 copy];
    text = v19->_text;
    v19->_text = v20;

    v19->_utteranceNumber = a6;
    v19->_updateNumber = a7;
    v19->_utteranceStartTimestamp = a8;
    v19->_utteranceDuration = a9;
    if ([v17 count])
    {
      v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v17, "count")}];
    }

    else
    {
      v22 = 0;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = v17;
    v23 = v17;
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
          v30 = [v28 text];
          [v28 confidence];
          v32 = v31;
          v33 = [v28 range];
          v35 = [(TUCaption *)v29 initWithText:v30 confidence:v33 range:v34, v32];

          [v22 addObject:v35];
        }

        v25 = [v23 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v25);
    }

    v36 = [v22 copy];
    tokens = v19->_tokens;
    v19->_tokens = v36;

    v17 = v40;
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
  v6 = [(TUCaptionsResult *)self tokens];
  [v3 appendFormat:@" tokens=%@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  v6 = NSStringFromSelector(sel_text);
  [v5 encodeObject:text forKey:v6];

  utteranceComplete = self->_utteranceComplete;
  v8 = NSStringFromSelector(sel_utteranceComplete);
  [v5 encodeBool:utteranceComplete forKey:v8];

  utteranceNumber = self->_utteranceNumber;
  v10 = NSStringFromSelector(sel_utteranceNumber);
  [v5 encodeInt32:utteranceNumber forKey:v10];

  updateNumber = self->_updateNumber;
  v12 = NSStringFromSelector(sel_updateNumber);
  [v5 encodeInt32:updateNumber forKey:v12];

  tokens = self->_tokens;
  v14 = NSStringFromSelector(sel_tokens);
  [v5 encodeObject:tokens forKey:v14];

  utteranceDuration = self->_utteranceDuration;
  v16 = NSStringFromSelector(sel_utteranceDuration);
  [v5 encodeDouble:v16 forKey:utteranceDuration];

  utteranceStartTimestamp = self->_utteranceStartTimestamp;
  v18 = NSStringFromSelector(sel_utteranceStartTimestamp);
  [v5 encodeDouble:v18 forKey:utteranceStartTimestamp];
}

- (TUCaptionsResult)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = TUCaptionsResult;
  v5 = [(TUCaptionsResult *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_text);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    text = v5->_text;
    v5->_text = v8;

    v10 = NSStringFromSelector(sel_utteranceComplete);
    v5->_utteranceComplete = [v4 decodeBoolForKey:v10];

    v11 = NSStringFromSelector(sel_updateNumber);
    v5->_updateNumber = [v4 decodeInt32ForKey:v11];

    v12 = NSStringFromSelector(sel_utteranceNumber);
    v5->_utteranceNumber = [v4 decodeInt32ForKey:v12];

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_tokens);
    v15 = [v4 decodeArrayOfObjectsOfClass:v13 forKey:v14];
    tokens = v5->_tokens;
    v5->_tokens = v15;

    v17 = NSStringFromSelector(sel_utteranceDuration);
    [v4 decodeDoubleForKey:v17];
    v5->_utteranceDuration = v18;

    v19 = NSStringFromSelector(sel_utteranceStartTimestamp);
    [v4 decodeDoubleForKey:v19];
    v5->_utteranceStartTimestamp = v20;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(TUCaptionsResult *)self text];
  v4 = [v3 hash];
  v5 = v4 ^ [(TUCaptionsResult *)self utteranceNumber];
  v6 = v5 ^ [(TUCaptionsResult *)self utteranceComplete];
  [(TUCaptionsResult *)self utteranceDuration];
  v8 = v6 ^ v7;
  [(TUCaptionsResult *)self utteranceStartTimestamp];
  v10 = v9;
  v11 = [(TUCaptionsResult *)self tokens];
  v12 = v8 ^ v10 ^ [v11 hash];
  v13 = [(TUCaptionsResult *)self updateNumber];

  return v12 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCaptionsResult *)self isEqualToCaptionsResult:v4];
  }

  return v5;
}

- (BOOL)isEqualToCaptionsResult:(id)a3
{
  v4 = a3;
  text = self->_text;
  v6 = [v4 text];
  if (TUObjectsAreEqualOrNil(text, v6) && (utteranceNumber = self->_utteranceNumber, utteranceNumber == [v4 utteranceNumber]) && (utteranceComplete = self->_utteranceComplete, utteranceComplete == objc_msgSend(v4, "utteranceComplete")) && (utteranceDuration = self->_utteranceDuration, objc_msgSend(v4, "utteranceDuration"), utteranceDuration == v10) && (utteranceStartTimestamp = self->_utteranceStartTimestamp, objc_msgSend(v4, "utteranceStartTimestamp"), utteranceStartTimestamp == v12) && (updateNumber = self->_updateNumber, updateNumber == objc_msgSend(v4, "updateNumber")))
  {
    tokens = self->_tokens;
    v15 = [v4 tokens];
    v16 = [(NSArray *)tokens isEqualToArray:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUCaptionsResult allocWithZone:a3];
  v5 = [(TUCaptionsResult *)self text];
  v6 = [(TUCaptionsResult *)self utteranceComplete];
  v7 = [(TUCaptionsResult *)self tokens];
  v8 = [(TUCaptionsResult *)self utteranceNumber];
  v9 = [(TUCaptionsResult *)self updateNumber];
  [(TUCaptionsResult *)self utteranceStartTimestamp];
  v11 = v10;
  [(TUCaptionsResult *)self utteranceDuration];
  v13 = [(TUCaptionsResult *)v4 initWithText:v5 utteranceComplete:v6 tokens:v7 utteranceNumber:v8 updateNumber:v9 utteranceStartTimestamp:v11 utteranceDuration:v12];

  return v13;
}

@end