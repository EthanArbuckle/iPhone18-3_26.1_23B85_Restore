@interface TRHandshakeResponse
- (TRHandshakeResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRHandshakeResponse

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TRHandshakeResponse;
  v4 = a3;
  [(TRMessage *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_protocolVersion forKey:{@"TRHandshakeMessages_pV", v5.receiver, v5.super_class}];
}

- (TRHandshakeResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TRHandshakeResponse;
  v5 = [(TRMessage *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_protocolVersion = [v4 decodeIntegerForKey:@"TRHandshakeMessages_pV"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"protocolVersion:%ld", self->_protocolVersion];
  v4 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TRHandshakeResponse;
  v5 = [(TRMessage *)&v8 description];
  v6 = [v4 stringWithFormat:@"%@ %@", v5, v3];

  return v6;
}

@end