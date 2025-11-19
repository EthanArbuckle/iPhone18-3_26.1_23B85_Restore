@interface SRUIFSpeechRecognitionHypothesis
- (SRUIFSpeechRecognitionHypothesis)initWithUserUtterance:(id)a3 backingAceObject:(id)a4 isFinal:(BOOL)a5;
- (id)description;
@end

@implementation SRUIFSpeechRecognitionHypothesis

- (SRUIFSpeechRecognitionHypothesis)initWithUserUtterance:(id)a3 backingAceObject:(id)a4 isFinal:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SRUIFSpeechRecognitionHypothesis;
  v11 = [(SRUIFSpeechRecognitionHypothesis *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_userUtterance, a3);
    v12->_final = a5;
    objc_storeStrong(&v12->_backingAceObject, a4);
  }

  return v12;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@ %p:", objc_opt_class(), self];
  [v3 appendString:@" userUtterance="];
  v4 = [(SRUIFSpeechRecognitionHypothesis *)self userUtterance];
  v5 = [v4 description];
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