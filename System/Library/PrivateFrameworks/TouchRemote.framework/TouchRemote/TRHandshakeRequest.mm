@interface TRHandshakeRequest
- (TRHandshakeRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRHandshakeRequest

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TRHandshakeRequest;
  coderCopy = coder;
  [(TRMessage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_protocolVersion forKey:{@"TRHandshakeMessages_pV", v5.receiver, v5.super_class}];
}

- (TRHandshakeRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TRHandshakeRequest;
  v5 = [(TRMessage *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_protocolVersion = [coderCopy decodeIntegerForKey:@"TRHandshakeMessages_pV"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"protocolVersion:%ld", self->_protocolVersion];
  v4 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TRHandshakeRequest;
  v5 = [(TRMessage *)&v8 description];
  v6 = [v4 stringWithFormat:@"%@ %@", v5, v3];

  return v6;
}

@end