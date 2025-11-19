@interface SBFWebClipSanitationReport
- (SBFWebClipSanitationReport)initWithWebClip:(id)a3 result:(int64_t)a4 error:(id)a5;
- (id)description;
@end

@implementation SBFWebClipSanitationReport

- (SBFWebClipSanitationReport)initWithWebClip:(id)a3 result:(int64_t)a4 error:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = SBFWebClipSanitationReport;
  v11 = [(SBFWebClipSanitationReport *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_webClip, a3);
    v13 = [v10 copy];
    error = v12->_error;
    v12->_error = v13;

    v12->_result = a4;
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_webClip withName:@"webClip"];
  v5 = self->_result;
  if (v5 > 2)
  {
    v6 = @"(Unknown SBFWebClipSanitizationResult)";
  }

  else
  {
    v6 = off_1E8080640[v5];
  }

  v7 = [v3 appendObject:v6 withName:@"result"];
  error = self->_error;
  if (error)
  {
    v9 = [v3 appendObject:error withName:@"error"];
    v10 = [(NSError *)self->_error code];
    if (v10 > 2)
    {
      v11 = @"(Unknown SBFWebClipSanitizationError)";
    }

    else
    {
      v11 = off_1E8080658[v10];
    }

    v12 = [v3 appendObject:v11 withName:@"errorCode"];
  }

  v13 = [v3 build];

  return v13;
}

@end