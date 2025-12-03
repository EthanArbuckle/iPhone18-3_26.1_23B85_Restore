@interface KTIDSSession
- (BOOL)markAsVerified:(id *)verified;
- (BOOL)markContactAsVerified:(id)verified error:(id *)error;
- (KTIDSSession)init;
- (KTIDSSession)initWithCoder:(id)coder;
- (NSData)jsonObject;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTIDSSession

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  state = [(KTIDSSession *)self state];
  peerHandle = [(KTIDSSession *)self peerHandle];
  peerAccountIdentity = [(KTIDSSession *)self peerAccountIdentity];
  publicAccountIdentity = [peerAccountIdentity publicAccountIdentity];
  sasCode = [(KTIDSSession *)self sasCode];
  if (sasCode)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  peerDisconnected = [(KTIDSSession *)self peerDisconnected];
  v11 = @"connected";
  if (peerDisconnected)
  {
    v11 = @"disconnected";
  }

  v12 = [v3 stringWithFormat:@"<KTIDSSession: state: %@ handle: %@ peerIdentity: %@ sasCode: %@ %@>", state, peerHandle, publicAccountIdentity, v9, v11];

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

    kt_hexString = [v3 kt_hexString];
    [(KTIDSSession *)v2 setSessionID:kt_hexString];

    [(KTIDSSession *)v2 setState:kTransparencyStaticKeyStateInit];
    v5 = v2;
  }

  return v2;
}

- (BOOL)markAsVerified:(id *)verified
{
  contactIdentifier = [(KTIDSSession *)self contactIdentifier];

  if (contactIdentifier)
  {
    contactIdentifier2 = [(KTIDSSession *)self contactIdentifier];
    v7 = [(KTIDSSession *)self markContactAsVerified:contactIdentifier2 error:verified];
  }

  else
  {
    v8 = [TransparencyError errorWithDomain:@"TransparencyErrorDecode" code:-297 description:@"Static key have not contact identifier, can't mark as verified"];
    contactIdentifier2 = v8;
    if (verified)
    {
      v9 = v8;
      v7 = 0;
      *verified = contactIdentifier2;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)markContactAsVerified:(id)verified error:(id *)error
{
  verifiedCopy = verified;
  if (verifiedCopy)
  {
    state = [(KTIDSSession *)self state];
    if ([state isEqual:kTransparencyStaticKeyStateCodeAvailable])
    {
      sasCode = [(KTIDSSession *)self sasCode];

      if (sasCode)
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
  if (error)
  {
    v12 = v12;
    *error = v12;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  state = [(KTIDSSession *)self state];
  [coderCopy encodeObject:state forKey:@"state"];

  sessionID = [(KTIDSSession *)self sessionID];
  [coderCopy encodeObject:sessionID forKey:@"sessionID"];

  sessionExpire = [(KTIDSSession *)self sessionExpire];

  if (sessionExpire)
  {
    sessionExpire2 = [(KTIDSSession *)self sessionExpire];
    [coderCopy encodeObject:sessionExpire2 forKey:@"sessionExpire"];
  }

  peerHandle = [(KTIDSSession *)self peerHandle];

  if (peerHandle)
  {
    peerHandle2 = [(KTIDSSession *)self peerHandle];
    [coderCopy encodeObject:peerHandle2 forKey:@"peerHandle"];
  }

  contactIdentifier = [(KTIDSSession *)self contactIdentifier];

  if (contactIdentifier)
  {
    contactIdentifier2 = [(KTIDSSession *)self contactIdentifier];
    [coderCopy encodeObject:contactIdentifier2 forKey:@"contactIdentifier"];
  }

  peerAccountIdentity = [(KTIDSSession *)self peerAccountIdentity];

  if (peerAccountIdentity)
  {
    peerAccountIdentity2 = [(KTIDSSession *)self peerAccountIdentity];
    [coderCopy encodeObject:peerAccountIdentity2 forKey:@"peerAccountIdentity"];
  }

  sasCode = [(KTIDSSession *)self sasCode];

  if (sasCode)
  {
    sasCode2 = [(KTIDSSession *)self sasCode];
    [coderCopy encodeObject:sasCode2 forKey:@"sasCode"];
  }

  [coderCopy encodeBool:-[KTIDSSession peerDisconnected](self forKey:{"peerDisconnected"), @"disconnected"}];
}

- (KTIDSSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = KTIDSSession;
  v5 = [(KTIDSSession *)&v15 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
  [(KTIDSSession *)v5 setState:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
  [(KTIDSSession *)v5 setSessionID:v7];

  state = [(KTIDSSession *)v5 state];
  if (state)
  {
    sessionID = [(KTIDSSession *)v5 sessionID];

    if (sessionID)
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionExpire"];
      [(KTIDSSession *)v5 setSessionExpire:v10];

      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerHandle"];
      [(KTIDSSession *)v5 setPeerHandle:v11];

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerAccountIdentity"];
      [(KTIDSSession *)v5 setPeerAccountIdentity:v12];

      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sasCode"];
      [(KTIDSSession *)v5 setSasCode:v13];

      -[KTIDSSession setPeerDisconnected:](v5, "setPeerDisconnected:", [coderCopy decodeBoolForKey:@"disconnected"]);
      state = v5;
      goto LABEL_6;
    }

LABEL_5:
    state = 0;
  }

LABEL_6:

  return state;
}

- (NSData)jsonObject
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  sessionID = [(KTIDSSession *)self sessionID];
  [dictionary setObject:sessionID forKeyedSubscript:@"sessionID"];

  state = [(KTIDSSession *)self state];
  [dictionary setObject:state forKeyedSubscript:@"state"];

  sessionExpire = [(KTIDSSession *)self sessionExpire];
  [dictionary setObject:sessionExpire forKeyedSubscript:@"expire"];

  peerHandle = [(KTIDSSession *)self peerHandle];
  [dictionary setObject:peerHandle forKeyedSubscript:@"peerHandle"];

  contactIdentifier = [(KTIDSSession *)self contactIdentifier];
  [dictionary setObject:contactIdentifier forKeyedSubscript:@"contactIdentifier"];

  peerAccountIdentity = [(KTIDSSession *)self peerAccountIdentity];
  publicAccountIdentity = [peerAccountIdentity publicAccountIdentity];
  [dictionary setObject:publicAccountIdentity forKeyedSubscript:@"peerAccountIdentity"];

  sasCode = [(KTIDSSession *)self sasCode];
  [dictionary setObject:sasCode forKeyedSubscript:@"sasCode"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTIDSSession peerDisconnected](self, "peerDisconnected")}];
  [dictionary setObject:v12 forKeyedSubscript:@"disconnected"];

  v13 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:1 error:0];

  return v13;
}

@end