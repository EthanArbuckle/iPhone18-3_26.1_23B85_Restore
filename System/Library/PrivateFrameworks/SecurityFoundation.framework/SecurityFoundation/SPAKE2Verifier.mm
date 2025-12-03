@interface SPAKE2Verifier
+ (id)generateCodeWithError:(id *)error;
- (BOOL)hasKey;
- (BOOL)isVerified;
- (BOOL)keyMatchesWith:(id)with;
- (BOOL)processMsg1:(id)msg1 error:(id *)error;
- (BOOL)processMsg2:(id)msg2 error:(id *)error;
- (SPAKE2Verifier)initWithSalt:(id)salt code:(id)code error:(id *)error;
- (id)decryptMessage:(id)message error:(id *)error;
- (id)encryptMessage:(id)message error:(id *)error;
- (id)getCode;
- (id)getKey;
- (id)getMsg1WithError:(id *)error;
- (id)getMsg2WithError:(id *)error;
- (id)testGetW0;
- (id)testGetW1;
@end

@implementation SPAKE2Verifier

+ (id)generateCodeWithError:(id *)error
{
  v4 = SecPasswordCreateWithRandomDigits();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else if (error)
  {
    *error = 0;
  }

  return v5;
}

- (SPAKE2Verifier)initWithSalt:(id)salt code:(id)code error:(id *)error
{
  saltCopy = salt;
  codeCopy = code;
  v19.receiver = self;
  v19.super_class = SPAKE2Verifier;
  v10 = [(SPAKE2Verifier *)&v19 init];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = [SPAKE2Common alloc];
  v12 = ccrng();
  v13 = [(SPAKE2Common *)v11 initWithSalt:saltCopy code:codeCopy rng:v12 cp:ccspake_cp_256()];
  [(SPAKE2Verifier *)v10 setCommon:v13];

  common = [(SPAKE2Verifier *)v10 common];
  LODWORD(v12) = [common generateStateWithError:error];

  if (!v12)
  {
    goto LABEL_5;
  }

  common2 = [(SPAKE2Verifier *)v10 common];
  v16 = [common2 setupVerifier:error];

  if (v16)
  {
LABEL_4:
    v17 = v10;
  }

  else
  {
LABEL_5:
    v17 = 0;
  }

  return v17;
}

- (id)getCode
{
  common = [(SPAKE2Verifier *)self common];
  code = [common code];

  return code;
}

- (id)getMsg1WithError:(id *)error
{
  common = [(SPAKE2Verifier *)self common];
  v5 = [common getMsg1WithError:error];

  return v5;
}

- (BOOL)processMsg1:(id)msg1 error:(id *)error
{
  msg1Copy = msg1;
  common = [(SPAKE2Verifier *)self common];
  LOBYTE(error) = [common processMsg1:msg1Copy error:error];

  return error;
}

- (id)getMsg2WithError:(id *)error
{
  common = [(SPAKE2Verifier *)self common];
  v5 = [common getMsg2WithError:error];

  return v5;
}

- (BOOL)processMsg2:(id)msg2 error:(id *)error
{
  msg2Copy = msg2;
  common = [(SPAKE2Verifier *)self common];
  LOBYTE(error) = [common processMsg2Orig:msg2Copy error:error];

  return error;
}

- (BOOL)isVerified
{
  common = [(SPAKE2Verifier *)self common];
  isVerified = [common isVerified];

  return isVerified;
}

- (id)getKey
{
  common = [(SPAKE2Verifier *)self common];
  getSessionKey = [common getSessionKey];

  return getSessionKey;
}

- (id)encryptMessage:(id)message error:(id *)error
{
  messageCopy = message;
  common = [(SPAKE2Verifier *)self common];
  v8 = [common encryptMessage:messageCopy error:error];

  return v8;
}

- (id)decryptMessage:(id)message error:(id *)error
{
  messageCopy = message;
  common = [(SPAKE2Verifier *)self common];
  v8 = [common decryptMessage:messageCopy error:error];

  return v8;
}

- (id)testGetW0
{
  common = [(SPAKE2Verifier *)self common];
  v3 = [common w0];

  return v3;
}

- (id)testGetW1
{
  common = [(SPAKE2Verifier *)self common];
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
    common = [(SPAKE2Verifier *)self common];
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
  common = [(SPAKE2Verifier *)self common];
  session_key = [common session_key];
  v4 = session_key != 0;

  return v4;
}

@end