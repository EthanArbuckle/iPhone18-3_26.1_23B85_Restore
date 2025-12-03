@interface CSDConversationABTestConfiguration
- (CSDConversationABTestConfiguration)initWithGroupUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_generateABTestConfiguration;
@end

@implementation CSDConversationABTestConfiguration

- (CSDConversationABTestConfiguration)initWithGroupUUID:(id)d
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = CSDConversationABTestConfiguration;
  v6 = [(CSDConversationABTestConfiguration *)&v15 init];
  if (v6)
  {
    v7 = objc_alloc_init(CSDSharedConversationServerBag);
    serverBag = v6->_serverBag;
    v6->_serverBag = v7;

    objc_storeStrong(&v6->_groupUUID, d);
    serverBag = [(CSDConversationABTestConfiguration *)v6 serverBag];
    v6->_authTagSampleRate = [serverBag uPlusOneAuthTagSampleRate];

    serverBag2 = [(CSDConversationABTestConfiguration *)v6 serverBag];
    v6->_TLESampleRate = [serverBag2 groupFaceTimeTLESampleRate];

    serverBag3 = [(CSDConversationABTestConfiguration *)v6 serverBag];
    v6->_isShortMKIEnabled = [serverBag3 isShortMKIEnabled];

    serverBag4 = [(CSDConversationABTestConfiguration *)v6 serverBag];
    v6->_isTLEUPlusOneEnabled = [serverBag4 isTLEUPlusOneEnabled];

    serverBag5 = [(CSDConversationABTestConfiguration *)v6 serverBag];
    v6->_TLEUPlusOneSampleRate = [serverBag5 uPlusOneTLESampleRate];

    [(CSDConversationABTestConfiguration *)v6 _generateABTestConfiguration];
  }

  return v6;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  groupUUID = [(CSDConversationABTestConfiguration *)self groupUUID];
  [v3 appendFormat:@" groupUUID=%@", groupUUID];

  if ([(CSDConversationABTestConfiguration *)self isShortMKIEnabled])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@" isShortMKIEnabled=%@", v5];
  if ([(CSDConversationABTestConfiguration *)self isAuthTagEnabled])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@" isAuthTagEnabled=%@", v6];
  if ([(CSDConversationABTestConfiguration *)self isTLEEnabled])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@" isTLEEnabled=%@", v7];
  [v3 appendFormat:@" TLESampleRate=%lu", -[CSDConversationABTestConfiguration TLESampleRate](self, "TLESampleRate")];
  [v3 appendFormat:@" authTagSampleRate=%lu", -[CSDConversationABTestConfiguration authTagSampleRate](self, "authTagSampleRate")];
  if ([(CSDConversationABTestConfiguration *)self isTLEUPlusOneEnabled])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@" isTLEUPlusOneEnabled=%@", v8];
  [v3 appendFormat:@" TLEUPlusOneSampleRate=%lu", -[CSDConversationABTestConfiguration TLEUPlusOneSampleRate](self, "TLEUPlusOneSampleRate")];
  [v3 appendString:@">"];
  v9 = [v3 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  groupUUID = [(CSDConversationABTestConfiguration *)self groupUUID];
  v6 = v4[3];
  v4[3] = groupUUID;

  *(v4 + 8) = [(CSDConversationABTestConfiguration *)self isShortMKIEnabled];
  *(v4 + 9) = [(CSDConversationABTestConfiguration *)self isAuthTagEnabled];
  *(v4 + 10) = [(CSDConversationABTestConfiguration *)self isTLEEnabled];
  v4[5] = [(CSDConversationABTestConfiguration *)self TLESampleRate];
  v4[4] = [(CSDConversationABTestConfiguration *)self authTagSampleRate];
  *(v4 + 11) = [(CSDConversationABTestConfiguration *)self isTLEUPlusOneEnabled];
  v4[6] = [(CSDConversationABTestConfiguration *)self TLEUPlusOneSampleRate];
  return v4;
}

- (void)_generateABTestConfiguration
{
  groupUUID = [(CSDConversationABTestConfiguration *)self groupUUID];
  v4 = [groupUUID hash];

  if ([(CSDConversationABTestConfiguration *)self isShortMKIEnabled])
  {
    v5 = [(CSDConversationABTestConfiguration *)self authTagSampleRate]== 100 || [(CSDConversationABTestConfiguration *)self authTagSampleRate]>= v4 % 0x64;
  }

  else
  {
    v5 = 0;
  }

  [(CSDConversationABTestConfiguration *)self setIsAuthTagEnabled:v5];
  if ([(CSDConversationABTestConfiguration *)self isShortMKIEnabled])
  {
    v6 = [(CSDConversationABTestConfiguration *)self TLESampleRate]== 100 || [(CSDConversationABTestConfiguration *)self TLESampleRate]>= v4 % 0x64;
  }

  else
  {
    v6 = 0;
  }

  [(CSDConversationABTestConfiguration *)self setIsTLEEnabled:v6];
  if ([(CSDConversationABTestConfiguration *)self isTLEEnabled])
  {
    v7 = [(CSDConversationABTestConfiguration *)self TLEUPlusOneSampleRate]== 100 || [(CSDConversationABTestConfiguration *)self TLEUPlusOneSampleRate]>= v4 % 0x64;
  }

  else
  {
    v7 = 0;
  }

  [(CSDConversationABTestConfiguration *)self setIsTLEUPlusOneEnabled:v7];
  if (![(CSDConversationABTestConfiguration *)self isTLEEnabled]&& ![(CSDConversationABTestConfiguration *)self isAuthTagEnabled]&& [(CSDConversationABTestConfiguration *)self isShortMKIEnabled])
  {
    [(CSDConversationABTestConfiguration *)self setIsShortMKIEnabled:0];
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "set isShortMKIEnabled to NO since both isTLEEnabled and isAuthTagEnabled are false", &v18, 2u);
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"YES";
    if ([(CSDConversationABTestConfiguration *)self isTLEEnabled])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    if ([(CSDConversationABTestConfiguration *)self isShortMKIEnabled])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    if ([(CSDConversationABTestConfiguration *)self isAuthTagEnabled])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    if (![(CSDConversationABTestConfiguration *)self isTLEUPlusOneEnabled])
    {
      v10 = @"NO";
    }

    v14 = v4;
    authTagSampleRate = [(CSDConversationABTestConfiguration *)self authTagSampleRate];
    tLESampleRate = [(CSDConversationABTestConfiguration *)self TLESampleRate];
    tLEUPlusOneSampleRate = [(CSDConversationABTestConfiguration *)self TLEUPlusOneSampleRate];
    v18 = 138414082;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v10;
    v26 = 2048;
    v27 = v14;
    v28 = 2048;
    v29 = authTagSampleRate;
    v30 = 2048;
    v31 = tLESampleRate;
    v32 = 2048;
    v33 = tLEUPlusOneSampleRate;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "isTLEEnabled: %@, isShortMKIEnabled: %@, isAuthTagEnabled: %@, isTLEUPlusOneEnabled: %@, hashValue: %lu, authTagSampleRate: %lu, TLESampleRate: %lu, TLEUPlusOneSampleRate: %lu", &v18, 0x52u);
  }
}

@end