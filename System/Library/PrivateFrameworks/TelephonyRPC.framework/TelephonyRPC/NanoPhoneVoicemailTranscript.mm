@interface NanoPhoneVoicemailTranscript
- (BOOL)isEqual:(id)a3;
- (NanoPhoneVoicemailTranscript)initWithTranscriptMessage:(id)a3 voicemailNumber:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NanoPhoneVoicemailTranscript

- (NanoPhoneVoicemailTranscript)initWithTranscriptMessage:(id)a3 voicemailNumber:(unint64_t)a4
{
  v6 = [a3 transcriptionData];
  if (v6)
  {
    v7 = MEMORY[0x277CCAAC8];
    v8 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v19 = 0;
    v9 = [v7 unarchivedObjectOfClasses:v8 fromData:v6 error:&v19];
    v10 = v19;

    if (v10 || !v9)
    {
      v15 = nph_general_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [NanoPhoneVoicemailTranscript(NanoPhone) initWithTranscriptMessage:v10 voicemailNumber:v15];
      }

      v14 = 0;
    }

    else
    {
      v18.receiver = self;
      v18.super_class = NanoPhoneVoicemailTranscript;
      v11 = [(NanoPhoneVoicemailTranscript *)&v18 init];
      v12 = v11;
      if (v11)
      {
        [(NanoPhoneVoicemailTranscript *)v11 setVoicemailNumber:a4];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __85__NanoPhoneVoicemailTranscript_NanoPhone__initWithTranscriptMessage_voicemailNumber___block_invoke;
        v17[3] = &unk_279D96028;
        v17[4] = v9;
        v13 = __85__NanoPhoneVoicemailTranscript_NanoPhone__initWithTranscriptMessage_voicemailNumber___block_invoke(v17);
        [(NanoPhoneVoicemailTranscript *)v12 setTranscriptionString:v13];
      }

      self = v12;
      v14 = self;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
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
  v5 = [(NanoPhoneVoicemailTranscript *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_voicemailNumber];
  [v3 setObject:v4 forKey:@"voicemailNumber"];

  transcriptionString = self->_transcriptionString;
  if (transcriptionString)
  {
    [v3 setObject:transcriptionString forKey:@"transcriptionString"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  voicemailNumber = self->_voicemailNumber;
  v6 = v4;
  PBDataWriterWriteInt64Field();
  if (self->_transcriptionString)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 1) = self->_voicemailNumber;
  transcriptionString = self->_transcriptionString;
  if (transcriptionString)
  {
    [a3 setTranscriptionString:transcriptionString];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_voicemailNumber;
  v6 = [(NSString *)self->_transcriptionString copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_voicemailNumber == v4[1])
  {
    transcriptionString = self->_transcriptionString;
    if (transcriptionString | v4[2])
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

- (void)mergeFrom:(id)a3
{
  self->_voicemailNumber = *(a3 + 1);
  if (*(a3 + 2))
  {
    [(NanoPhoneVoicemailTranscript *)self setTranscriptionString:?];
  }
}

@end