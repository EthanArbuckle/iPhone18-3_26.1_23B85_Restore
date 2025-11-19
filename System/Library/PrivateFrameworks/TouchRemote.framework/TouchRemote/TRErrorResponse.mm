@interface TRErrorResponse
- (TRErrorResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRErrorResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TRErrorResponse;
  [(TRMessage *)&v6 encodeWithCoder:v4];
  error = self->_error;
  if (error)
  {
    [v4 encodeObject:error forKey:@"TRConnectionMessages_e"];
  }
}

- (TRErrorResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRErrorResponse;
  v5 = [(TRMessage *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TRConnectionMessages_e"];
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