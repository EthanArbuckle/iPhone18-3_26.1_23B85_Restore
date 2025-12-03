@interface WFSiriSpeakTextRequest
- (WFSiriSpeakTextRequest)initWithCoder:(id)coder;
- (WFSiriSpeakTextRequest)initWithUtterance:(id)utterance;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriSpeakTextRequest

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFSiriSpeakTextRequest;
  coderCopy = coder;
  [(WFSiriActionRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFSiriSpeakTextRequest *)self utterance:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"utterance"];
}

- (WFSiriSpeakTextRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFSiriSpeakTextRequest;
  v5 = [(WFSiriActionRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"utterance"];
    utterance = v5->_utterance;
    v5->_utterance = v6;

    v8 = v5;
  }

  return v5;
}

- (WFSiriSpeakTextRequest)initWithUtterance:(id)utterance
{
  utteranceCopy = utterance;
  v10.receiver = self;
  v10.super_class = WFSiriSpeakTextRequest;
  v6 = [(WFSiriActionRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_utterance, utterance);
    v8 = v7;
  }

  return v7;
}

@end