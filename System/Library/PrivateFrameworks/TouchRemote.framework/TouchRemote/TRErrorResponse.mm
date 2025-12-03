@interface TRErrorResponse
- (TRErrorResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRErrorResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = TRErrorResponse;
  [(TRMessage *)&v6 encodeWithCoder:coderCopy];
  error = self->_error;
  if (error)
  {
    [coderCopy encodeObject:error forKey:@"TRConnectionMessages_e"];
  }
}

- (TRErrorResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRErrorResponse;
  v5 = [(TRMessage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TRConnectionMessages_e"];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"error:%@", self->_error];
  v4 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TRErrorResponse;
  v5 = [(TRMessage *)&v8 description];
  v6 = [v4 stringWithFormat:@"%@ %@", v5, v3];

  return v6;
}

@end