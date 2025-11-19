@interface PearlAutoBugCapture
- (BOOL)sendSignature:(id)a3 withDuration:(double)a4;
- (id)getSubtypeForReason:(unint64_t)a3;
- (id)getTypeForReason:(unint64_t)a3;
@end

@implementation PearlAutoBugCapture

- (id)getTypeForReason:(unint64_t)a3
{
  if (a3 - 1 >= 9)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = PearlAutoBugCapture;
    v5 = [(BiometricAutoBugCapture *)&v7 getTypeForReason:?];
  }

  else
  {
    v5 = off_29EE54AF8[a3 - 1];
  }

  return v5;
}

- (id)getSubtypeForReason:(unint64_t)a3
{
  if (a3 - 1 >= 9)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = PearlAutoBugCapture;
    v5 = [(BiometricAutoBugCapture *)&v7 getSubtypeForReason:?];
  }

  else
  {
    v5 = off_29EE54B40[a3 - 1];
  }

  return v5;
}

- (BOOL)sendSignature:(id)a3 withDuration:(double)a4
{
  v6 = a3;
  v7 = [v6 objectForKey:@"type"];
  v8 = [v7 isEqualToString:@"FrameTiming"];

  if (v8 && [(BiometricAutoBugCapture *)self serialLogEnabled])
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PearlAutoBugCapture;
    v9 = [(BiometricAutoBugCapture *)&v11 sendSignature:v6 withDuration:a4];
  }

  return v9;
}

@end