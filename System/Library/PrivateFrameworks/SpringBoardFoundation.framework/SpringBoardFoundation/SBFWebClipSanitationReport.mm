@interface SBFWebClipSanitationReport
- (SBFWebClipSanitationReport)initWithWebClip:(id)clip result:(int64_t)result error:(id)error;
- (id)description;
@end

@implementation SBFWebClipSanitationReport

- (SBFWebClipSanitationReport)initWithWebClip:(id)clip result:(int64_t)result error:(id)error
{
  clipCopy = clip;
  errorCopy = error;
  v16.receiver = self;
  v16.super_class = SBFWebClipSanitationReport;
  v11 = [(SBFWebClipSanitationReport *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_webClip, clip);
    v13 = [errorCopy copy];
    error = v12->_error;
    v12->_error = v13;

    v12->_result = result;
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
    code = [(NSError *)self->_error code];
    if (code > 2)
    {
      v11 = @"(Unknown SBFWebClipSanitizationError)";
    }

    else
    {
      v11 = off_1E8080658[code];
    }

    v12 = [v3 appendObject:v11 withName:@"errorCode"];
  }

  build = [v3 build];

  return build;
}

@end