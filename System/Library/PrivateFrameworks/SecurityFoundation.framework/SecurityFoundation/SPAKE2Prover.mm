@interface SPAKE2Prover
- (BOOL)hasKey;
- (BOOL)isVerified;
- (BOOL)keyMatchesWith:(id)with;
- (BOOL)processMsg1:(id)msg1 error:(id *)error;
- (BOOL)processMsg2:(id)msg2 error:(id *)error;
- (SPAKE2Prover)initWithSalt:(id)salt code:(id)code error:(id *)error;
- (SPAKE2Prover)initWithSalt:(id)salt code:(id)code rng:(ccrng_state *)rng error:(id *)error;
- (id)decryptMessage:(id)message error:(id *)error;
- (id)encryptMessage:(id)message error:(id *)error;
- (id)getKey;
- (id)getMsg1WithError:(id *)error;
- (id)getMsg2WithError:(id *)error;
- (id)testGetW0;
- (id)testGetW1;
@end

@implementation SPAKE2Prover

- (SPAKE2Prover)initWithSalt:(id)salt code:(id)code rng:(ccrng_state *)rng error:(id *)error
{
  saltCopy = salt;
  codeCopy = code;
  v20.receiver = self;
  v20.super_class = SPAKE2Prover;
  v12 = [(SPAKE2Prover *)&v20 init];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = [[SPAKE2Common alloc] initWithSalt:saltCopy code:codeCopy rng:rng cp:ccspake_cp_256()];
  [(SPAKE2Prover *)v12 setCommon:v13];

  common = [(SPAKE2Prover *)v12 common];
  v15 = [common generateStateWithError:error];

  if (!v15)
  {
    goto LABEL_5;
  }

  common2 = [(SPAKE2Prover *)v12 common];
  v17 = [common2 setupProver:error];

  if (v17)
  {
LABEL_4:
    v18 = v12;
  }

  else
  {
LABEL_5:
    v18 = 0;
  }

  return v18;
}

- (SPAKE2Prover)initWithSalt:(id)salt code:(id)code error:(id *)error
{
  codeCopy = code;
  saltCopy = salt;
  v10 = [(SPAKE2Prover *)self initWithSalt:saltCopy code:codeCopy rng:ccrng() error:error];

  return v10;
}

- (id)getMsg1WithError:(id *)error
{
  common = [(SPAKE2Prover *)self common];
  v5 = [common getMsg1WithError:error];

  return v5;
}

- (BOOL)processMsg1:(id)msg1 error:(id *)error
{
  msg1Copy = msg1;
  common = [(SPAKE2Prover *)self common];
  LOBYTE(error) = [common processMsg1:msg1Copy error:error];

  return error;
}

- (id)getMsg2WithError:(id *)error
{
  common = [(SPAKE2Prover *)self common];
  v5 = [common getMsg2WithError:error];

  return v5;
}

- (BOOL)processMsg2:(id)msg2 error:(id *)error
{
  msg2Copy = msg2;
  common = [(SPAKE2Prover *)self common];
  LOBYTE(error) = [common processMsg2Orig:msg2Copy error:error];

  return error;
}

- (BOOL)isVerified
{
  common = [(SPAKE2Prover *)self common];
  isVerified = [common isVerified];

  return isVerified;
}

- (id)getKey
{
  common = [(SPAKE2Prover *)self common];
  getSessionKey = [common getSessionKey];

  return getSessionKey;
}

- (id)encryptMessage:(id)message error:(id *)error
{
  messageCopy = message;
  common = [(SPAKE2Prover *)self common];
  v8 = [common encryptMessage:messageCopy error:error];

  return v8;
}

- (id)decryptMessage:(id)message error:(id *)error
{
  messageCopy = message;
  common = [(SPAKE2Prover *)self common];
  v8 = [common decryptMessage:messageCopy error:error];

  return v8;
}

- (id)testGetW0
{
  common = [(SPAKE2Prover *)self common];
  v3 = [common w0];

  return v3;
}

- (id)testGetW1
{
  common = [(SPAKE2Prover *)self common];
  v3 = [common w1];

  return v3;
}

- (BOOL)keyMatchesWith:(id)with
{
  withCopy = with;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = withCopy;
    common = [(SPAKE2Prover *)self common];
    session_key = [common session_key];
    keyData = [session_key keyData];
    common2 = [v5 common];

    session_key2 = [common2 session_key];
    keyData2 = [session_key2 keyData];
    v12 = [keyData isEqualToData:keyData2];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)hasKey
{
  common = [(SPAKE2Prover *)self common];
  session_key = [common session_key];
  v4 = session_key != 0;

  return v4;
}

@end