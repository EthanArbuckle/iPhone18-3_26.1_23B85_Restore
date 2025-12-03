@interface NanoPhoneVoicemailBody
- (BOOL)isEqual:(id)equal;
- (NanoPhoneVoicemailBody)initWithAudioMessage:(id)message voicemailNumber:(unint64_t)number;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NanoPhoneVoicemailBody

- (NanoPhoneVoicemailBody)initWithAudioMessage:(id)message voicemailNumber:(unint64_t)number
{
  audioData = [message audioData];
  if (audioData)
  {
    v11.receiver = self;
    v11.super_class = NanoPhoneVoicemailBody;
    v7 = [(NanoPhoneVoicemailBody *)&v11 init];
    v8 = v7;
    if (v7)
    {
      [(NanoPhoneVoicemailBody *)v7 setVoicemailNumber:number];
      [(NanoPhoneVoicemailBody *)v8 setVoicemailRecording:audioData];
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NanoPhoneVoicemailBody;
  v4 = [(NanoPhoneVoicemailBody *)&v8 description];
  dictionaryRepresentation = [(NanoPhoneVoicemailBody *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_voicemailNumber];
  [dictionary setObject:v4 forKey:@"voicemailNumber"];

  voicemailRecording = self->_voicemailRecording;
  if (voicemailRecording)
  {
    [dictionary setObject:voicemailRecording forKey:@"voicemailRecording"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  voicemailNumber = self->_voicemailNumber;
  v6 = toCopy;
  PBDataWriterWriteInt64Field();
  if (self->_voicemailRecording)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  *(to + 1) = self->_voicemailNumber;
  voicemailRecording = self->_voicemailRecording;
  if (voicemailRecording)
  {
    [to setVoicemailRecording:voicemailRecording];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_voicemailNumber;
  v6 = [(NSData *)self->_voicemailRecording copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_voicemailNumber == equalCopy[1])
  {
    voicemailRecording = self->_voicemailRecording;
    if (voicemailRecording | equalCopy[2])
    {
      v6 = [(NSData *)voicemailRecording isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  self->_voicemailNumber = *(from + 1);
  if (*(from + 2))
  {
    [(NanoPhoneVoicemailBody *)self setVoicemailRecording:?];
  }
}

@end