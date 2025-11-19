@interface _RKResponse
- (BOOL)isEqual:(id)a3;
- (_RKResponse)initWithSpeechAct:(id)a3 headword:(id)a4 text:(id)a5;
- (id)description;
- (unint64_t)hash;
- (unint64_t)type;
@end

@implementation _RKResponse

- (_RKResponse)initWithSpeechAct:(id)a3 headword:(id)a4 text:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _RKResponse;
  v12 = [(_RKResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_speechAct, a3);
    objc_storeStrong(&v13->_headword, a4);
    objc_storeStrong(&v13->_text, a5);
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_RKResponse *)self text];
      v7 = [(_RKResponse *)v5 text];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(_RKResponse *)self type];
        v9 = v8 == [(_RKResponse *)v5 type];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(_RKResponse *)self text];
  v4 = [v3 hash];
  v5 = [(_RKResponse *)self type];

  return v5 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_RKResponse *)self text];
  v5 = [v3 stringWithFormat:@"{'%@', %lu}", v4, -[_RKResponse type](self, "type")];

  return v5;
}

- (unint64_t)type
{
  if (type_onceToken != -1)
  {
    [_RKResponse type];
  }

  v3 = type_sSpeechActResponseType;
  v4 = [(_RKResponse *)self speechAct];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

  return v6;
}

@end