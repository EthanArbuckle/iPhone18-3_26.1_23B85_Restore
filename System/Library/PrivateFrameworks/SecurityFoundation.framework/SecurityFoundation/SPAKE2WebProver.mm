@interface SPAKE2WebProver
- (BOOL)hasKey;
- (BOOL)isVerified;
- (BOOL)keyMatchesWith:(id)with;
- (BOOL)processMsg1:(id)msg1 error:(id *)error;
- (BOOL)processMsg2:(id)msg2 error:(id *)error;
- (SPAKE2WebProver)initWithSalt:(id)salt code:(id)code error:(id *)error;
- (SPAKE2WebProver)initWithSalt:(id)salt code:(id)code rng:(ccrng_state *)rng error:(id *)error;
- (id)_decodeBase64:(id)base64 withKey:(id)key error:(id *)error;
- (id)_decodeBinary:(id)binary withKey:(id)key error:(id *)error;
- (id)_encodeBase64:(id)base64 withKey:(id)key error:(id *)error;
- (id)_encodeBinary:(id)binary withKey:(id)key error:(id *)error;
- (id)decryptMessageInBase64:(id)base64 error:(id *)error;
- (id)decryptMessageInBinary:(id)binary error:(id *)error;
- (id)encryptMessageAsBase64:(id)base64 error:(id *)error;
- (id)encryptMessageAsBinary:(id)binary error:(id *)error;
- (id)getKey;
- (id)getMsg1WithError:(id *)error;
- (id)getMsg2WithError:(id *)error;
- (id)testGetW0;
- (id)testGetW1;
@end

@implementation SPAKE2WebProver

- (SPAKE2WebProver)initWithSalt:(id)salt code:(id)code rng:(ccrng_state *)rng error:(id *)error
{
  saltCopy = salt;
  codeCopy = code;
  v20.receiver = self;
  v20.super_class = SPAKE2WebProver;
  v12 = [(SPAKE2WebProver *)&v20 init];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = [[SPAKE2Common alloc] initWithSalt:saltCopy code:codeCopy rng:rng cp:ccspake_cp_256_rfc()];
  [(SPAKE2WebProver *)v12 setCommon:v13];

  common = [(SPAKE2WebProver *)v12 common];
  v15 = [common generateStateWithError:error];

  if (!v15)
  {
    goto LABEL_5;
  }

  common2 = [(SPAKE2WebProver *)v12 common];
  v17 = [common2 setupRFCProver:error];

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

- (SPAKE2WebProver)initWithSalt:(id)salt code:(id)code error:(id *)error
{
  codeCopy = code;
  saltCopy = salt;
  v10 = [(SPAKE2WebProver *)self initWithSalt:saltCopy code:codeCopy rng:ccrng() error:error];

  return v10;
}

- (id)getMsg1WithError:(id *)error
{
  common = [(SPAKE2WebProver *)self common];
  v5 = [common getMsg1WithError:error];

  return v5;
}

- (BOOL)processMsg1:(id)msg1 error:(id *)error
{
  msg1Copy = msg1;
  common = [(SPAKE2WebProver *)self common];
  LOBYTE(error) = [common processMsg1:msg1Copy error:error];

  return error;
}

- (id)getMsg2WithError:(id *)error
{
  common = [(SPAKE2WebProver *)self common];
  v5 = [common getMsg2WithError:error];

  return v5;
}

- (BOOL)processMsg2:(id)msg2 error:(id *)error
{
  msg2Copy = msg2;
  common = [(SPAKE2WebProver *)self common];
  LOBYTE(error) = [common processMsg2Web:msg2Copy error:error];

  return error;
}

- (BOOL)isVerified
{
  common = [(SPAKE2WebProver *)self common];
  isVerified = [common isVerified];

  return isVerified;
}

- (id)getKey
{
  common = [(SPAKE2WebProver *)self common];
  getRawSessionKey = [common getRawSessionKey];

  return getRawSessionKey;
}

- (id)encryptMessageAsBinary:(id)binary error:(id *)error
{
  binaryCopy = binary;
  common = [(SPAKE2WebProver *)self common];
  v8 = [common _encryptMessageAsBinary:binaryCopy info:@"webProver" error:error];

  return v8;
}

- (id)decryptMessageInBinary:(id)binary error:(id *)error
{
  binaryCopy = binary;
  common = [(SPAKE2WebProver *)self common];
  v8 = [common _decryptMessageInBinary:binaryCopy info:@"webVerifier" error:error];

  return v8;
}

- (id)encryptMessageAsBase64:(id)base64 error:(id *)error
{
  base64Copy = base64;
  common = [(SPAKE2WebProver *)self common];
  v8 = [common _encryptMessageAsBase64:base64Copy info:@"webProver" error:error];

  return v8;
}

- (id)decryptMessageInBase64:(id)base64 error:(id *)error
{
  base64Copy = base64;
  common = [(SPAKE2WebProver *)self common];
  v8 = [common _decryptMessageInBase64:base64Copy info:@"webVerifier" error:error];

  return v8;
}

- (id)_encodeBinary:(id)binary withKey:(id)key error:(id *)error
{
  keyCopy = key;
  binaryCopy = binary;
  common = [(SPAKE2WebProver *)self common];
  v11 = [common _encodeBinary:binaryCopy withKey:keyCopy info:@"webProver" error:error];

  return v11;
}

- (id)_decodeBinary:(id)binary withKey:(id)key error:(id *)error
{
  keyCopy = key;
  binaryCopy = binary;
  common = [(SPAKE2WebProver *)self common];
  v11 = [common _decodeBinary:binaryCopy withKey:keyCopy info:@"webVerifier" error:error];

  return v11;
}

- (id)_encodeBase64:(id)base64 withKey:(id)key error:(id *)error
{
  keyCopy = key;
  base64Copy = base64;
  common = [(SPAKE2WebProver *)self common];
  v11 = [common _encodeBase64:base64Copy withKey:keyCopy info:@"webProver" error:error];

  return v11;
}

- (id)_decodeBase64:(id)base64 withKey:(id)key error:(id *)error
{
  keyCopy = key;
  base64Copy = base64;
  common = [(SPAKE2WebProver *)self common];
  v11 = [common _decodeBase64:base64Copy withKey:keyCopy info:@"webVerifier" error:error];

  return v11;
}

- (id)testGetW0
{
  common = [(SPAKE2WebProver *)self common];
  v3 = [common w0];

  return v3;
}

- (id)testGetW1
{
  common = [(SPAKE2WebProver *)self common];
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
    common = [(SPAKE2WebProver *)self common];
    raw_session_key = [common raw_session_key];
    common2 = [v5 common];

    raw_session_key2 = [common2 raw_session_key];
    v10 = [raw_session_key isEqualToData:raw_session_key2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasKey
{
  common = [(SPAKE2WebProver *)self common];
  raw_session_key = [common raw_session_key];
  v4 = raw_session_key != 0;

  return v4;
}

@end