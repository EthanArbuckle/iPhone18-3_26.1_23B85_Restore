@interface WLSRPServer
- (BOOL)didReceiveClientPublicKey_A:(id)a3 proofOfMatch_M:(id)a4;
- (BOOL)isHmacData:(id)a3 validForData:(id)a4;
- (WLSRPServer)initWithUsername:(id)a3 password:(id)a4;
- (void)dealloc;
@end

@implementation WLSRPServer

- (WLSRPServer)initWithUsername:(id)a3 password:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = WLSRPServer;
  v8 = [(WLSRPServer *)&v20 init];
  if (v8)
  {
    SRP6a_server_method();
    v9 = SRP_new();
    v8->_session = v9;
    if (v9)
    {
      [v6 UTF8String];
      if (!SRP_set_username() && !CCRandomGenerateBytes(bytes, 0x10uLL))
      {
        v10 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:16];
        salt_s = v8->_salt_s;
        v8->_salt_s = v10;

        session = v8->_session;
        if (!SRP_set_params())
        {
          v13 = v8->_session;
          [v7 UTF8String];
          if (!SRP_set_auth_password())
          {
            v14 = v8->_session;
            if (!SRP_gen_pub())
            {
              v18 = [MEMORY[0x277CBEA90] dataWithBytes:MEMORY[0] length:MEMORY[8]];
              serverPublicKey_B = v8->_serverPublicKey_B;
              v8->_serverPublicKey_B = v18;

              cstr_free();
              goto LABEL_10;
            }
          }
        }
      }

      v15 = v8->_session;
      SRP_free();
      v8->_session = 0;
    }

    v8 = 0;
  }

LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)dealloc
{
  session = self->_session;
  SRP_free();
  self->_session = 0;
  v4.receiver = self;
  v4.super_class = WLSRPServer;
  [(WLSRPServer *)&v4 dealloc];
}

- (BOOL)didReceiveClientPublicKey_A:(id)a3 proofOfMatch_M:(id)a4
{
  v6 = a4;
  session = self->_session;
  v8 = a3;
  v9 = a3;
  [v9 bytes];
  [v9 length];

  if (SRP_compute_key())
  {
    v10 = 0;
  }

  else
  {
    v10 = MEMORY[8] != 0;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  _WLLog();

  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:MEMORY[0] length:{MEMORY[8], v20}];
  sharedKey_K = self->_sharedKey_K;
  self->_sharedKey_K = v11;

  v21 = [(NSData *)self->_sharedKey_K wl_hexEncodedString];
  _WLLog();

  cstr_free();
  v13 = self->_session;
  [v6 bytes];
  [v6 length];
  LODWORD(v13) = SRP_verify();
  v22 = [MEMORY[0x277CCABB0] numberWithBool:v13 == 0];
  _WLLog();

  if (!v13)
  {
    v16 = self->_session;
    v17 = SRP_respond();
    v14 = v17 == 0;
    v23 = [MEMORY[0x277CCABB0] numberWithBool:{v14, v22}];
    _WLLog();

    if (!v17)
    {
      v18 = [MEMORY[0x277CBEA90] dataWithBytes:MEMORY[0] length:{MEMORY[8], v23}];
      hashOfProofOfMatch_HAMK = self->_hashOfProofOfMatch_HAMK;
      self->_hashOfProofOfMatch_HAMK = v18;

      cstr_free();
    }
  }

  else
  {
LABEL_6:
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (BOOL)isHmacData:(id)a3 validForData:(id)a4
{
  v6 = a3;
  v7 = [(WLSRPServer *)self hmacDataForData:a4];
  v10 = [v6 wl_hexEncodedString];
  _WLLog();

  v11 = [v7 wl_hexEncodedString];
  _WLLog();

  v8 = [v7 isEqualToData:{v6, v11}];
  return v8;
}

@end