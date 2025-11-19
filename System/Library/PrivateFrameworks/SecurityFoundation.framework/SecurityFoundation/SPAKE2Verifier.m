@interface SPAKE2Verifier
+ (id)generateCodeWithError:(id *)a3;
- (BOOL)hasKey;
- (BOOL)isVerified;
- (BOOL)keyMatchesWith:(id)a3;
- (BOOL)processMsg1:(id)a3 error:(id *)a4;
- (BOOL)processMsg2:(id)a3 error:(id *)a4;
- (SPAKE2Verifier)initWithSalt:(id)a3 code:(id)a4 error:(id *)a5;
- (id)decryptMessage:(id)a3 error:(id *)a4;
- (id)encryptMessage:(id)a3 error:(id *)a4;
- (id)getCode;
- (id)getKey;
- (id)getMsg1WithError:(id *)a3;
- (id)getMsg2WithError:(id *)a3;
- (id)testGetW0;
- (id)testGetW1;
@end

@implementation SPAKE2Verifier

+ (id)generateCodeWithError:(id *)a3
{
  v4 = SecPasswordCreateWithRandomDigits();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else if (a3)
  {
    *a3 = 0;
  }

  return v5;
}

- (SPAKE2Verifier)initWithSalt:(id)a3 code:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = SPAKE2Verifier;
  v10 = [(SPAKE2Verifier *)&v19 init];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = [SPAKE2Common alloc];
  v12 = ccrng();
  v13 = [(SPAKE2Common *)v11 initWithSalt:v8 code:v9 rng:v12 cp:ccspake_cp_256()];
  [(SPAKE2Verifier *)v10 setCommon:v13];

  v14 = [(SPAKE2Verifier *)v10 common];
  LODWORD(v12) = [v14 generateStateWithError:a5];

  if (!v12)
  {
    goto LABEL_5;
  }

  v15 = [(SPAKE2Verifier *)v10 common];
  v16 = [v15 setupVerifier:a5];

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
  v2 = [(SPAKE2Verifier *)self common];
  v3 = [v2 code];

  return v3;
}

- (id)getMsg1WithError:(id *)a3
{
  v4 = [(SPAKE2Verifier *)self common];
  v5 = [v4 getMsg1WithError:a3];

  return v5;
}

- (BOOL)processMsg1:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SPAKE2Verifier *)self common];
  LOBYTE(a4) = [v7 processMsg1:v6 error:a4];

  return a4;
}

- (id)getMsg2WithError:(id *)a3
{
  v4 = [(SPAKE2Verifier *)self common];
  v5 = [v4 getMsg2WithError:a3];

  return v5;
}

- (BOOL)processMsg2:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SPAKE2Verifier *)self common];
  LOBYTE(a4) = [v7 processMsg2Orig:v6 error:a4];

  return a4;
}

- (BOOL)isVerified
{
  v2 = [(SPAKE2Verifier *)self common];
  v3 = [v2 isVerified];

  return v3;
}

- (id)getKey
{
  v2 = [(SPAKE2Verifier *)self common];
  v3 = [v2 getSessionKey];

  return v3;
}

- (id)encryptMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SPAKE2Verifier *)self common];
  v8 = [v7 encryptMessage:v6 error:a4];

  return v8;
}

- (id)decryptMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SPAKE2Verifier *)self common];
  v8 = [v7 decryptMessage:v6 error:a4];

  return v8;
}

- (id)testGetW0
{
  v2 = [(SPAKE2Verifier *)self common];
  v3 = [v2 w0];

  return v3;
}

- (id)testGetW1
{
  v2 = [(SPAKE2Verifier *)self common];
  v3 = [v2 w1];

  return v3;
}

- (BOOL)keyMatchesWith:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SPAKE2Verifier *)self common];
    v7 = [v6 session_key];
    v8 = [v7 keyData];
    v9 = [v5 common];

    v10 = [v9 session_key];
    v11 = [v10 keyData];
    v12 = [v8 isEqualToData:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)hasKey
{
  v2 = [(SPAKE2Verifier *)self common];
  v3 = [v2 session_key];
  v4 = v3 != 0;

  return v4;
}

@end