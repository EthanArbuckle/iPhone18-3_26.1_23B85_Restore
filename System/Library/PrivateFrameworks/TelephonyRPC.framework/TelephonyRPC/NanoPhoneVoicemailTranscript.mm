@interface NanoPhoneVoicemailTranscript
- (BOOL)isEqual:(id)equal;
- (NanoPhoneVoicemailTranscript)initWithTranscriptMessage:(id)message voicemailNumber:(unint64_t)number;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NanoPhoneVoicemailTranscript

- (NanoPhoneVoicemailTranscript)initWithTranscriptMessage:(id)message voicemailNumber:(unint64_t)number
{
  transcriptionData = [message transcriptionData];
  if (transcriptionData)
  {
    v7 = MEMORY[0x277CCAAC8];
    v8 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v19 = 0;
    v9 = [v7 unarchivedObjectOfClasses:v8 fromData:transcriptionData error:&v19];
    v10 = v19;

    if (v10 || !v9)
    {
      v15 = nph_general_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [NanoPhoneVoicemailTranscript(NanoPhone) initWithTranscriptMessage:v10 voicemailNumber:v15];
      }

      selfCopy = 0;
    }

    else
    {
      v18.receiver = self;
      v18.super_class = NanoPhoneVoicemailTranscript;
      v11 = [(NanoPhoneVoicemailTranscript *)&v18 init];
      v12 = v11;
      if (v11)
      {
        [(NanoPhoneVoicemailTranscript *)v11 setVoicemailNumber:number];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __85__NanoPhoneVoicemailTranscript_NanoPhone__initWithTranscriptMessage_voicemailNumber___block_invoke;
        v17[3] = &unk_279D96028;
        v17[4] = v9;
        v13 = __85__NanoPhoneVoicemailTranscript_NanoPhone__initWithTranscriptMessage_voicemailNumber___block_invoke(v17);
        [(NanoPhoneVoicemailTranscript *)v12 setTranscriptionString:v13];
      }

      self = v12;
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

id __85__NanoPhoneVoicemailTranscript_NanoPhone__initWithTranscriptMessage_voicemailNumber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) confidenceRating];
  if (v2 > 3 || v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) transcriptionString];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NanoPhoneVoicemailTranscript;
  v4 = [(NanoPhoneVoicemailTranscript *)&v8 description];
  dictionaryRepresentation = [(NanoPhoneVoicemailTranscript *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_voicemailNumber];
  [dictionary setObject:v4 forKey:@"voicemailNumber"];

  transcriptionString = self->_transcriptionString;
  if (transcriptionString)
  {
    [dictionary setObject:transcriptionString forKey:@"transcriptionString"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  voicemailNumber = self->_voicemailNumber;
  v6 = toCopy;
  PBDataWriterWriteInt64Field();
  if (self->_transcriptionString)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  *(to + 1) = self->_voicemailNumber;
  transcriptionString = self->_transcriptionString;
  if (transcriptionString)
  {
    [to setTranscriptionString:transcriptionString];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_voicemailNumber;
  v6 = [(NSString *)self->_transcriptionString copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_voicemailNumber == equalCopy[1])
  {
    transcriptionString = self->_transcriptionString;
    if (transcriptionString | equalCopy[2])
    {
      v6 = [(NSString *)transcriptionString isEqual:?];
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
    [(NanoPhoneVoicemailTranscript *)self setTranscriptionString:?];
  }
}

@end