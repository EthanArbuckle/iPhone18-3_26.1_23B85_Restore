@interface SIRINLURewriteMessage
- (SIRINLURewriteMessage)initWithCoder:(id)coder;
- (SIRINLURewriteMessage)initWithType:(int)type utterance:(id)utterance;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLURewriteMessage

- (SIRINLURewriteMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SIRINLURewriteMessage;
  v5 = [(SIRINLURewriteMessage *)&v9 init];
  if (v5)
  {
    v5->_rewriteType = [coderCopy decodeIntForKey:@"rewriteType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewrittenUtterance"];
    rewrittenUtterance = v5->_rewrittenUtterance;
    v5->_rewrittenUtterance = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  rewriteType = self->_rewriteType;
  coderCopy = coder;
  [coderCopy encodeInt:rewriteType forKey:@"rewriteType"];
  [coderCopy encodeObject:self->_rewrittenUtterance forKey:@"rewrittenUtterance"];
}

- (SIRINLURewriteMessage)initWithType:(int)type utterance:(id)utterance
{
  utteranceCopy = utterance;
  v11.receiver = self;
  v11.super_class = SIRINLURewriteMessage;
  v8 = [(SIRINLURewriteMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_rewriteType = type;
    objc_storeStrong(&v8->_rewrittenUtterance, utterance);
  }

  return v9;
}

@end