@interface SPAKE2Prover
- (BOOL)hasKey;
- (BOOL)isVerified;
- (BOOL)keyMatchesWith:(id)a3;
- (BOOL)processMsg1:(id)a3 error:(id *)a4;
- (BOOL)processMsg2:(id)a3 error:(id *)a4;
- (SPAKE2Prover)initWithSalt:(id)a3 code:(id)a4 error:(id *)a5;
- (SPAKE2Prover)initWithSalt:(id)a3 code:(id)a4 rng:(ccrng_state *)a5 error:(id *)a6;
- (id)decryptMessage:(id)a3 error:(id *)a4;
- (id)encryptMessage:(id)a3 error:(id *)a4;
- (id)getKey;
- (id)getMsg1WithError:(id *)a3;
- (id)getMsg2WithError:(id *)a3;
- (id)testGetW0;
- (id)testGetW1;
@end

@implementation SPAKE2Prover

- (SPAKE2Prover)initWithSalt:(id)a3 code:(id)a4 rng:(ccrng_state *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v20.receiver = self;
  v20.super_class = SPAKE2Prover;
  v12 = [(SPAKE2Prover *)&v20 init];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = [[SPAKE2Common alloc] initWithSalt:v10 code:v11 rng:a5 cp:ccspake_cp_256()];
  [(SPAKE2Prover *)v12 setCommon:v13];

  v14 = [(SPAKE2Prover *)v12 common];
  v15 = [v14 generateStateWithError:a6];

  if (!v15)
  {
    goto LABEL_5;
  }

  v16 = [(SPAKE2Prover *)v12 common];
  v17 = [v16 setupProver:a6];

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

- (SPAKE2Prover)initWithSalt:(id)a3 code:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SPAKE2Prover *)self initWithSalt:v9 code:v8 rng:ccrng() error:a5];

  return v10;
}

- (id)getMsg1WithError:(id *)a3
{
  v4 = [(SPAKE2Prover *)self common];
  v5 = [v4 getMsg1WithError:a3];

  return v5;
}

- (BOOL)processMsg1:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SPAKE2Prover *)self common];
  LOBYTE(a4) = [v7 processMsg1:v6 error:a4];

  return a4;
}

- (id)getMsg2WithError:(id *)a3
{
  v4 = [(SPAKE2Prover *)self common];
  v5 = [v4 getMsg2WithError:a3];

  return v5;
}

- (BOOL)processMsg2:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SPAKE2Prover *)self common];
  LOBYTE(a4) = [v7 processMsg2Orig:v6 error:a4];

  return a4;
}

- (BOOL)isVerified
{
  v2 = [(SPAKE2Prover *)self common];
  v3 = [v2 isVerified];

  return v3;
}

- (id)getKey
{
  v2 = [(SPAKE2Prover *)self common];
  v3 = [v2 getSessionKey];

  return v3;
}

- (id)encryptMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SPAKE2Prover *)self common];
  v8 = [v7 encryptMessage:v6 error:a4];

  return v8;
}

- (id)decryptMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SPAKE2Prover *)self common];
  v8 = [v7 decryptMessage:v6 error:a4];

  return v8;
}

- (id)testGetW0
{
  v2 = [(SPAKE2Prover *)self common];
  v3 = [v2 w0];

  return v3;
}

- (id)testGetW1
{
  v2 = [(SPAKE2Prover *)self common];
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
    v6 = [(SPAKE2Prover *)self common];
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
  v2 = [(SPAKE2Prover *)self common];
  v3 = [v2 session_key];
  v4 = v3 != 0;

  return v4;
}

@end