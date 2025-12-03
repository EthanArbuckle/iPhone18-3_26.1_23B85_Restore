@interface SIRINLUINTERNALSSUSSUEncodingResult
- (BOOL)isEqual:(id)equal;
- (float)encodingAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALSSUSSUEncodingResult

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (fromCopy[4])
  {
    [(SIRINLUINTERNALSSUSSUEncodingResult *)self setRequestId:?];
    fromCopy = v8;
  }

  if (fromCopy[5])
  {
    [(SIRINLUINTERNALSSUSSUEncodingResult *)self setSsuEncoderVersion:?];
    fromCopy = v8;
  }

  if (fromCopy[6])
  {
    [(SIRINLUINTERNALSSUSSUEncodingResult *)self setUtterance:?];
    fromCopy = v8;
  }

  encodingsCount = [fromCopy encodingsCount];
  if (encodingsCount)
  {
    v6 = encodingsCount;
    for (i = 0; i != v6; ++i)
    {
      [v8 encodingAtIndex:i];
      [(SIRINLUINTERNALSSUSSUEncodingResult *)self addEncoding:?];
    }
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestId hash];
  v4 = [(NSString *)self->_ssuEncoderVersion hash]^ v3;
  v5 = [(NSString *)self->_utterance hash];
  return v4 ^ v5 ^ PBRepeatedFloatHash();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | equalCopy[4])) || -[NSString isEqual:](requestId, "isEqual:")) && ((ssuEncoderVersion = self->_ssuEncoderVersion, !(ssuEncoderVersion | equalCopy[5])) || -[NSString isEqual:](ssuEncoderVersion, "isEqual:")) && ((utterance = self->_utterance, !(utterance | equalCopy[6])) || -[NSString isEqual:](utterance, "isEqual:")))
  {
    IsEqual = PBRepeatedFloatIsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestId copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_ssuEncoderVersion copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSString *)self->_utterance copyWithZone:zone];
  v11 = v5[6];
  v5[6] = v10;

  PBRepeatedFloatCopy();
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_requestId)
  {
    [toCopy setRequestId:?];
  }

  if (self->_ssuEncoderVersion)
  {
    [toCopy setSsuEncoderVersion:?];
  }

  if (self->_utterance)
  {
    [toCopy setUtterance:?];
  }

  if ([(SIRINLUINTERNALSSUSSUEncodingResult *)self encodingsCount])
  {
    [toCopy clearEncodings];
    encodingsCount = [(SIRINLUINTERNALSSUSSUEncodingResult *)self encodingsCount];
    if (encodingsCount)
    {
      v5 = encodingsCount;
      for (i = 0; i != v5; ++i)
      {
        [(SIRINLUINTERNALSSUSSUEncodingResult *)self encodingAtIndex:i];
        [toCopy addEncoding:?];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_ssuEncoderVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_utterance)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  p_encodings = &self->_encodings;
  if (p_encodings->count)
  {
    v6 = 0;
    do
    {
      v7 = p_encodings->list[v6];
      PBDataWriterWriteFloatField();
      toCopy = v8;
      ++v6;
    }

    while (v6 < p_encodings->count);
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  requestId = self->_requestId;
  if (requestId)
  {
    [dictionary setObject:requestId forKey:@"requestId"];
  }

  ssuEncoderVersion = self->_ssuEncoderVersion;
  if (ssuEncoderVersion)
  {
    [v4 setObject:ssuEncoderVersion forKey:@"ssuEncoderVersion"];
  }

  utterance = self->_utterance;
  if (utterance)
  {
    [v4 setObject:utterance forKey:@"utterance"];
  }

  v8 = PBRepeatedFloatNSArray();
  [v4 setObject:v8 forKey:@"encoding"];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSSUSSUEncodingResult;
  v4 = [(SIRINLUINTERNALSSUSSUEncodingResult *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALSSUSSUEncodingResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (float)encodingAtIndex:(unint64_t)index
{
  p_encodings = &self->_encodings;
  count = self->_encodings.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_encodings->list[index];
}

- (void)dealloc
{
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = SIRINLUINTERNALSSUSSUEncodingResult;
  [(SIRINLUINTERNALSSUSSUEncodingResult *)&v3 dealloc];
}

@end