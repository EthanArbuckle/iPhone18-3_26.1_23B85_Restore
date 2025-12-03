@interface PearlAutoBugCapture
- (BOOL)sendSignature:(id)signature withDuration:(double)duration;
- (id)getSubtypeForReason:(unint64_t)reason;
- (id)getTypeForReason:(unint64_t)reason;
@end

@implementation PearlAutoBugCapture

- (id)getTypeForReason:(unint64_t)reason
{
  if (reason - 1 >= 9)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = PearlAutoBugCapture;
    v5 = [(BiometricAutoBugCapture *)&v7 getTypeForReason:?];
  }

  else
  {
    v5 = off_29EE54AF8[reason - 1];
  }

  return v5;
}

- (id)getSubtypeForReason:(unint64_t)reason
{
  if (reason - 1 >= 9)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = PearlAutoBugCapture;
    v5 = [(BiometricAutoBugCapture *)&v7 getSubtypeForReason:?];
  }

  else
  {
    v5 = off_29EE54B40[reason - 1];
  }

  return v5;
}

- (BOOL)sendSignature:(id)signature withDuration:(double)duration
{
  signatureCopy = signature;
  v7 = [signatureCopy objectForKey:@"type"];
  v8 = [v7 isEqualToString:@"FrameTiming"];

  if (v8 && [(BiometricAutoBugCapture *)self serialLogEnabled])
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PearlAutoBugCapture;
    v9 = [(BiometricAutoBugCapture *)&v11 sendSignature:signatureCopy withDuration:duration];
  }

  return v9;
}

@end