@interface NanoPhoneVoicemailMeta(Wrapper)
- (id)dictionaryRepresentation;
@end

@implementation NanoPhoneVoicemailMeta(Wrapper)

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_voicemailNumber];
  [v3 setObject:v4 forKey:@"voicemailNumber"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_identifier];
    [v3 setObject:v18 forKey:@"identifier"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_remoteUID];
  [v3 setObject:v19 forKey:@"remoteUID"];

  if (*&self->_has)
  {
LABEL_4:
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
    [v3 setObject:v6 forKey:@"date"];
  }

LABEL_5:
  sender = self->_sender;
  if (sender)
  {
    [v3 setObject:sender forKey:@"sender"];
  }

  callbackNumber = self->_callbackNumber;
  if (callbackNumber)
  {
    [v3 setObject:callbackNumber forKey:@"callbackNumber"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_duration];
    [v3 setObject:v9 forKey:@"duration"];
  }

  dataPath = self->_dataPath;
  if (dataPath)
  {
    [v3 setObject:dataPath forKey:@"dataPath"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_flags];
    [v3 setObject:v11 forKey:@"flags"];
  }

  if (self->_voicemailBody)
  {
    [v3 setObject:@"YES" forKey:@"voicemailBody"];
  }

  v12 = [(NanoPhoneVoicemailTranscript *)self->_voicemailTranscript transcriptionString];

  if (v12)
  {
    v13 = MEMORY[0x277CCABB0];
    v14 = [(NanoPhoneVoicemailTranscript *)self->_voicemailTranscript transcriptionString];
    v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "length")}];
    [v3 setObject:v15 forKey:@"voicemailTranscriptString.length"];
  }

  receiverDestinationID = self->_receiverDestinationID;
  if (receiverDestinationID)
  {
    [v3 setObject:receiverDestinationID forKey:@"receiverDestinationID"];
  }

  return v3;
}

@end