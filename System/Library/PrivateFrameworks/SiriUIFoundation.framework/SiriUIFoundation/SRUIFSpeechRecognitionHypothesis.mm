@interface SRUIFSpeechRecognitionHypothesis
- (SRUIFSpeechRecognitionHypothesis)initWithUserUtterance:(id)utterance backingAceObject:(id)object isFinal:(BOOL)final;
- (id)description;
@end

@implementation SRUIFSpeechRecognitionHypothesis

- (SRUIFSpeechRecognitionHypothesis)initWithUserUtterance:(id)utterance backingAceObject:(id)object isFinal:(BOOL)final
{
  utteranceCopy = utterance;
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = SRUIFSpeechRecognitionHypothesis;
  v11 = [(SRUIFSpeechRecognitionHypothesis *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_userUtterance, utterance);
    v12->_final = final;
    objc_storeStrong(&v12->_backingAceObject, object);
  }

  return v12;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@ %p:", objc_opt_class(), self];
  [v3 appendString:@" userUtterance="];
  userUtterance = [(SRUIFSpeechRecognitionHypothesis *)self userUtterance];
  v5 = [userUtterance description];
  [v3 appendString:v5];

  [v3 appendString:@"; isFinal="];
  if ([(SRUIFSpeechRecognitionHypothesis *)self isFinal])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendString:v6];
  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

@end