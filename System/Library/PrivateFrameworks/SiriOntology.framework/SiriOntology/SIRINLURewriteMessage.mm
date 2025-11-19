@interface SIRINLURewriteMessage
- (SIRINLURewriteMessage)initWithCoder:(id)a3;
- (SIRINLURewriteMessage)initWithType:(int)a3 utterance:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLURewriteMessage

- (SIRINLURewriteMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SIRINLURewriteMessage;
  v5 = [(SIRINLURewriteMessage *)&v9 init];
  if (v5)
  {
    v5->_rewriteType = [v4 decodeIntForKey:@"rewriteType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewrittenUtterance"];
    rewrittenUtterance = v5->_rewrittenUtterance;
    v5->_rewrittenUtterance = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  rewriteType = self->_rewriteType;
  v5 = a3;
  [v5 encodeInt:rewriteType forKey:@"rewriteType"];
  [v5 encodeObject:self->_rewrittenUtterance forKey:@"rewrittenUtterance"];
}

- (SIRINLURewriteMessage)initWithType:(int)a3 utterance:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SIRINLURewriteMessage;
  v8 = [(SIRINLURewriteMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_rewriteType = a3;
    objc_storeStrong(&v8->_rewrittenUtterance, a4);
  }

  return v9;
}

@end