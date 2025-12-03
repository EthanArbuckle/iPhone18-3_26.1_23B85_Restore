@interface _RKResponse
- (BOOL)isEqual:(id)equal;
- (_RKResponse)initWithSpeechAct:(id)act headword:(id)headword text:(id)text;
- (id)description;
- (unint64_t)hash;
- (unint64_t)type;
@end

@implementation _RKResponse

- (_RKResponse)initWithSpeechAct:(id)act headword:(id)headword text:(id)text
{
  actCopy = act;
  headwordCopy = headword;
  textCopy = text;
  v15.receiver = self;
  v15.super_class = _RKResponse;
  v12 = [(_RKResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_speechAct, act);
    objc_storeStrong(&v13->_headword, headword);
    objc_storeStrong(&v13->_text, text);
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      text = [(_RKResponse *)self text];
      text2 = [(_RKResponse *)v5 text];
      if ([text isEqualToString:text2])
      {
        type = [(_RKResponse *)self type];
        v9 = type == [(_RKResponse *)v5 type];
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
  text = [(_RKResponse *)self text];
  v4 = [text hash];
  type = [(_RKResponse *)self type];

  return type ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  text = [(_RKResponse *)self text];
  v5 = [v3 stringWithFormat:@"{'%@', %lu}", text, -[_RKResponse type](self, "type")];

  return v5;
}

- (unint64_t)type
{
  if (type_onceToken != -1)
  {
    [_RKResponse type];
  }

  v3 = type_sSpeechActResponseType;
  speechAct = [(_RKResponse *)self speechAct];
  v5 = [v3 objectForKeyedSubscript:speechAct];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end