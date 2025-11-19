@interface NanoPhoneVoicemailBody
- (BOOL)isEqual:(id)a3;
- (NanoPhoneVoicemailBody)initWithAudioMessage:(id)a3 voicemailNumber:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NanoPhoneVoicemailBody

- (NanoPhoneVoicemailBody)initWithAudioMessage:(id)a3 voicemailNumber:(unint64_t)a4
{
  v6 = [a3 audioData];
  if (v6)
  {
    v11.receiver = self;
    v11.super_class = NanoPhoneVoicemailBody;
    v7 = [(NanoPhoneVoicemailBody *)&v11 init];
    v8 = v7;
    if (v7)
    {
      [(NanoPhoneVoicemailBody *)v7 setVoicemailNumber:a4];
      [(NanoPhoneVoicemailBody *)v8 setVoicemailRecording:v6];
    }

    self = v8;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NanoPhoneVoicemailBody;
  v4 = [(NanoPhoneVoicemailBody *)&v8 description];
  v5 = [(NanoPhoneVoicemailBody *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_voicemailNumber];
  [v3 setObject:v4 forKey:@"voicemailNumber"];

  voicemailRecording = self->_voicemailRecording;
  if (voicemailRecording)
  {
    [v3 setObject:voicemailRecording forKey:@"voicemailRecording"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  voicemailNumber = self->_voicemailNumber;
  v6 = v4;
  PBDataWriterWriteInt64Field();
  if (self->_voicemailRecording)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 1) = self->_voicemailNumber;
  voicemailRecording = self->_voicemailRecording;
  if (voicemailRecording)
  {
    [a3 setVoicemailRecording:voicemailRecording];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_voicemailNumber;
  v6 = [(NSData *)self->_voicemailRecording copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_voicemailNumber == v4[1])
  {
    voicemailRecording = self->_voicemailRecording;
    if (voicemailRecording | v4[2])
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

- (void)mergeFrom:(id)a3
{
  self->_voicemailNumber = *(a3 + 1);
  if (*(a3 + 2))
  {
    [(NanoPhoneVoicemailBody *)self setVoicemailRecording:?];
  }
}

@end