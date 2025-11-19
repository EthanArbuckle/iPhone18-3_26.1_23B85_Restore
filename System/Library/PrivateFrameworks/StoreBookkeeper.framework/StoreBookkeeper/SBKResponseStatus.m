@interface SBKResponseStatus
+ (id)responseStatusForStatusCodeNumber:(id)a3;
- (NSError)requestError;
- (SBKResponseStatus)initWithStatus:(int64_t)a3 isRecoverable:(BOOL)a4 isError:(BOOL)a5 consoleDescription:(id)a6 shouldFileRadar:(BOOL)a7;
@end

@implementation SBKResponseStatus

- (NSError)requestError
{
  if ([(SBKResponseStatus *)self isSuccess])
  {
    v3 = 0;
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    consoleDescription = self->_consoleDescription;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_statusCode];
    v7 = v6;
    if (self->_shouldFileRadar)
    {
      v8 = @" Please enable logging and file a bug.";
    }

    else
    {
      v8 = &stru_287C9CB50;
    }

    v9 = [v4 stringWithFormat:@"%@ (status = %@)%@", consoleDescription, v6, v8];

    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v9, *MEMORY[0x277CCA450], 0}];
    v3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SBKBookkeeperRequestErrorDomain" code:self->_statusCode userInfo:v10];
  }

  return v3;
}

- (SBKResponseStatus)initWithStatus:(int64_t)a3 isRecoverable:(BOOL)a4 isError:(BOOL)a5 consoleDescription:(id)a6 shouldFileRadar:(BOOL)a7
{
  v13 = a6;
  v17.receiver = self;
  v17.super_class = SBKResponseStatus;
  v14 = [(SBKResponseStatus *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_statusCode = a3;
    v14->_isRecoverable = a4;
    v14->_isError = a5;
    objc_storeStrong(&v14->_consoleDescription, a6);
    v15->_shouldFileRadar = a7;
  }

  return v15;
}

+ (id)responseStatusForStatusCodeNumber:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (responseStatusForStatusCodeNumber__onceToken == -1)
  {
    if (v3)
    {
LABEL_3:
      v5 = [v4 integerValue];
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&responseStatusForStatusCodeNumber__onceToken, &__block_literal_global_2240);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v5 = -1;
LABEL_6:
  v6 = responseStatusForStatusCodeNumber____statusInfo;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {
    v8 = [responseStatusForStatusCodeNumber____statusInfo objectForKey:&unk_287CA2750];
  }

  return v8;
}

void __55__SBKResponseStatus_responseStatusForStatusCodeNumber___block_invoke()
{
  v16[12] = *MEMORY[0x277D85DE8];
  v15[0] = &unk_287CA2768;
  v14 = [[SBKResponseStatus alloc] initWithStatus:0 isRecoverable:1 isError:0 consoleDescription:@"Success" shouldFileRadar:0];
  v16[0] = v14;
  v15[1] = &unk_287CA2780;
  v13 = [[SBKResponseStatus alloc] initWithStatus:-1 isRecoverable:0 isError:1 consoleDescription:@"Unknown server initialization error" shouldFileRadar:1];
  v16[1] = v13;
  v15[2] = &unk_287CA2798;
  v0 = [[SBKResponseStatus alloc] initWithStatus:-2 isRecoverable:0 isError:1 consoleDescription:@"The request format was invalid shouldFileRadar:or referenced an invalid domain", 1];
  v16[2] = v0;
  v15[3] = &unk_287CA27B0;
  v1 = [[SBKResponseStatus alloc] initWithStatus:-3 isRecoverable:0 isError:1 consoleDescription:@"An unspecified server-side error (type 1) was encountered" shouldFileRadar:1];
  v16[3] = v1;
  v15[4] = &unk_287CA27C8;
  v2 = [[SBKResponseStatus alloc] initWithStatus:-4 isRecoverable:0 isError:1 consoleDescription:@"The request requires an authenticated weak-token" shouldFileRadar:0];
  v16[4] = v2;
  v15[5] = &unk_287CA27E0;
  v3 = [[SBKResponseStatus alloc] initWithStatus:1197 isRecoverable:0 isError:1 consoleDescription:@"The request deniend (punted - server too busy)" shouldFileRadar:0];
  v16[5] = v3;
  v15[6] = &unk_287CA27F8;
  v4 = [[SBKResponseStatus alloc] initWithStatus:1195 isRecoverable:0 isError:1 consoleDescription:@"The request denied (too many recent request)" shouldFileRadar:0];
  v16[6] = v4;
  v15[7] = &unk_287CA2750;
  v5 = [[SBKResponseStatus alloc] initWithStatus:-9999 isRecoverable:0 isError:1 consoleDescription:@"Unknown status" shouldFileRadar:1];
  v16[7] = v5;
  v15[8] = &unk_287CA2810;
  v6 = [[SBKResponseStatus alloc] initWithStatus:1199 isRecoverable:0 isError:1 consoleDescription:@"An unspecified server-side error (type 2) was encountered" shouldFileRadar:1];
  v16[8] = v6;
  v15[9] = &unk_287CA2828;
  v7 = [[SBKResponseStatus alloc] initWithStatus:1101 isRecoverable:0 isError:1 consoleDescription:@"The client's user agent is not supported" shouldFileRadar:1];
  v16[9] = v7;
  v15[10] = &unk_287CA2840;
  v8 = [[SBKResponseStatus alloc] initWithStatus:1198 isRecoverable:0 isError:1 consoleDescription:@"The putAll had a version mismatch" shouldFileRadar:0];
  v16[10] = v8;
  v15[11] = &unk_287CA2858;
  v9 = [[SBKResponseStatus alloc] initWithStatus:1196 isRecoverable:0 isError:1 consoleDescription:@"The domain specified in the request is locked" shouldFileRadar:1];
  v16[11] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:12];
  v11 = responseStatusForStatusCodeNumber____statusInfo;
  responseStatusForStatusCodeNumber____statusInfo = v10;

  v12 = *MEMORY[0x277D85DE8];
}

@end