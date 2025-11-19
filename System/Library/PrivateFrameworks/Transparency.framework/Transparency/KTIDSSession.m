@interface KTIDSSession
- (BOOL)markAsVerified:(id *)a3;
- (BOOL)markContactAsVerified:(id)a3 error:(id *)a4;
- (KTIDSSession)init;
- (KTIDSSession)initWithCoder:(id)a3;
- (NSData)jsonObject;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTIDSSession

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(KTIDSSession *)self state];
  v5 = [(KTIDSSession *)self peerHandle];
  v6 = [(KTIDSSession *)self peerAccountIdentity];
  v7 = [v6 publicAccountIdentity];
  v8 = [(KTIDSSession *)self sasCode];
  if (v8)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [(KTIDSSession *)self peerDisconnected];
  v11 = @"connected";
  if (v10)
  {
    v11 = @"disconnected";
  }

  v12 = [v3 stringWithFormat:@"<KTIDSSession: state: %@ handle: %@ peerIdentity: %@ sasCode: %@ %@>", v4, v5, v7, v9, v11];

  return v12;
}

- (KTIDSSession)init
{
  v7.receiver = self;
  v7.super_class = KTIDSSession;
  v2 = [(KTIDSSession *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:16];
    if (SecRandomCopyBytes(0, 0x10uLL, [v3 mutableBytes]))
    {
      abort();
    }

    v4 = [v3 kt_hexString];
    [(KTIDSSession *)v2 setSessionID:v4];

    [(KTIDSSession *)v2 setState:kTransparencyStaticKeyStateInit];
    v5 = v2;
  }

  return v2;
}

- (BOOL)markAsVerified:(id *)a3
{
  v5 = [(KTIDSSession *)self contactIdentifier];

  if (v5)
  {
    v6 = [(KTIDSSession *)self contactIdentifier];
    v7 = [(KTIDSSession *)self markContactAsVerified:v6 error:a3];
  }

  else
  {
    v8 = [TransparencyError errorWithDomain:@"TransparencyErrorDecode" code:-297 description:@"Static key have not contact identifier, can't mark as verified"];
    v6 = v8;
    if (a3)
    {
      v9 = v8;
      v7 = 0;
      *a3 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)markContactAsVerified:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(KTIDSSession *)self state];
    if ([v7 isEqual:kTransparencyStaticKeyStateCodeAvailable])
    {
      v8 = [(KTIDSSession *)self sasCode];

      if (v8)
      {
        v9 = 1;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v10 = @"Static key exchange not complete, can't mark as verified";
    v11 = -295;
  }

  else
  {
    v10 = @"Static key have not contact identifier, can't mark as verified";
    v11 = -297;
  }

  v12 = [TransparencyError errorWithDomain:@"TransparencyErrorDecode" code:v11 description:v10];
  if (a4)
  {
    v12 = v12;
    *a4 = v12;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  v4 = [(KTIDSSession *)self state];
  [v16 encodeObject:v4 forKey:@"state"];

  v5 = [(KTIDSSession *)self sessionID];
  [v16 encodeObject:v5 forKey:@"sessionID"];

  v6 = [(KTIDSSession *)self sessionExpire];

  if (v6)
  {
    v7 = [(KTIDSSession *)self sessionExpire];
    [v16 encodeObject:v7 forKey:@"sessionExpire"];
  }

  v8 = [(KTIDSSession *)self peerHandle];

  if (v8)
  {
    v9 = [(KTIDSSession *)self peerHandle];
    [v16 encodeObject:v9 forKey:@"peerHandle"];
  }

  v10 = [(KTIDSSession *)self contactIdentifier];

  if (v10)
  {
    v11 = [(KTIDSSession *)self contactIdentifier];
    [v16 encodeObject:v11 forKey:@"contactIdentifier"];
  }

  v12 = [(KTIDSSession *)self peerAccountIdentity];

  if (v12)
  {
    v13 = [(KTIDSSession *)self peerAccountIdentity];
    [v16 encodeObject:v13 forKey:@"peerAccountIdentity"];
  }

  v14 = [(KTIDSSession *)self sasCode];

  if (v14)
  {
    v15 = [(KTIDSSession *)self sasCode];
    [v16 encodeObject:v15 forKey:@"sasCode"];
  }

  [v16 encodeBool:-[KTIDSSession peerDisconnected](self forKey:{"peerDisconnected"), @"disconnected"}];
}

- (KTIDSSession)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = KTIDSSession;
  v5 = [(KTIDSSession *)&v15 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
  [(KTIDSSession *)v5 setState:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
  [(KTIDSSession *)v5 setSessionID:v7];

  v8 = [(KTIDSSession *)v5 state];
  if (v8)
  {
    v9 = [(KTIDSSession *)v5 sessionID];

    if (v9)
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionExpire"];
      [(KTIDSSession *)v5 setSessionExpire:v10];

      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerHandle"];
      [(KTIDSSession *)v5 setPeerHandle:v11];

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerAccountIdentity"];
      [(KTIDSSession *)v5 setPeerAccountIdentity:v12];

      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sasCode"];
      [(KTIDSSession *)v5 setSasCode:v13];

      -[KTIDSSession setPeerDisconnected:](v5, "setPeerDisconnected:", [v4 decodeBoolForKey:@"disconnected"]);
      v8 = v5;
      goto LABEL_6;
    }

LABEL_5:
    v8 = 0;
  }

LABEL_6:

  return v8;
}

- (NSData)jsonObject
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(KTIDSSession *)self sessionID];
  [v3 setObject:v4 forKeyedSubscript:@"sessionID"];

  v5 = [(KTIDSSession *)self state];
  [v3 setObject:v5 forKeyedSubscript:@"state"];

  v6 = [(KTIDSSession *)self sessionExpire];
  [v3 setObject:v6 forKeyedSubscript:@"expire"];

  v7 = [(KTIDSSession *)self peerHandle];
  [v3 setObject:v7 forKeyedSubscript:@"peerHandle"];

  v8 = [(KTIDSSession *)self contactIdentifier];
  [v3 setObject:v8 forKeyedSubscript:@"contactIdentifier"];

  v9 = [(KTIDSSession *)self peerAccountIdentity];
  v10 = [v9 publicAccountIdentity];
  [v3 setObject:v10 forKeyedSubscript:@"peerAccountIdentity"];

  v11 = [(KTIDSSession *)self sasCode];
  [v3 setObject:v11 forKeyedSubscript:@"sasCode"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTIDSSession peerDisconnected](self, "peerDisconnected")}];
  [v3 setObject:v12 forKeyedSubscript:@"disconnected"];

  v13 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:1 error:0];

  return v13;
}

@end