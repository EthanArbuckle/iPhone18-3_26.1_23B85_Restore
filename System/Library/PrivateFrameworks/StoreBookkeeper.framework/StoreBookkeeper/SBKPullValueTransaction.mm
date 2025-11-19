@interface SBKPullValueTransaction
- (SBKPullValueTransaction)initWithStoreBagContext:(id)a3 requestedKey:(id)a4 clientItemPayloadPair:(id)a5 clientItemVersionAnchor:(id)a6;
- (id)clampsKey;
- (id)description;
- (void)processDataInResponse:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation SBKPullValueTransaction

- (void)processDataInResponse:(id)a3 withCompletionHandler:(id)a4
{
  v18 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v18 itemValuePayload];

    if (v7)
    {
      clientItemPayloadPair = self->_clientItemPayloadPair;
      v9 = objc_opt_class();
      v10 = [v18 itemKey];
      v11 = [v18 itemValuePayload];
      v12 = SBKKeyValuePayloadPairWithPreferredClass(v9, v10, v11);
      resultItemPayloadPair = self->_resultItemPayloadPair;
      self->_resultItemPayloadPair = v12;

      v14 = [v18 itemVersion];
    }

    else
    {
      objc_storeStrong(&self->_resultItemPayloadPair, self->_clientItemPayloadPair);
      v14 = self->_clientItemVersionAnchor;
    }

    resultItemVersionAnchor = self->_resultItemVersionAnchor;
    self->_resultItemVersionAnchor = v14;

    self->_success = [v18 isSuccess];
    v16 = [v18 domainVersion];
    resultDomainVersion = self->_resultDomainVersion;
    self->_resultDomainVersion = v16;
  }

  v6[2](v6, 0);
}

- (id)clampsKey
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@-%@", v5, self->_requestedKey];

  return v6;
}

- (id)description
{
  clientItemPayloadPair = self->_clientItemPayloadPair;
  clientItemVersionAnchor = self->_clientItemVersionAnchor;
  if (!clientItemVersionAnchor)
  {
    clientItemVersionAnchor = @"*unversioned*";
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[client: payload-pair=%@, anchor=%@]", self->_clientItemPayloadPair, clientItemVersionAnchor];
  resultItemPayloadPair = self->_resultItemPayloadPair;
  resultItemVersionAnchor = self->_resultItemVersionAnchor;
  if (!resultItemVersionAnchor)
  {
    resultItemVersionAnchor = @"*unversioned*";
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"[result: payload-pair=%@, anchor=%@]", self->_resultItemPayloadPair, resultItemVersionAnchor];
  v9 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = SBKPullValueTransaction;
  v10 = [(SBKPullValueTransaction *)&v14 description];
  v11 = [(SBKTransaction *)self domain];
  v12 = [v9 stringWithFormat:@"%@ domain = %@, GET: key='%@', %@, %@", v10, v11, self->_requestedKey, v5, v8];

  return v12;
}

- (SBKPullValueTransaction)initWithStoreBagContext:(id)a3 requestedKey:(id)a4 clientItemPayloadPair:(id)a5 clientItemVersionAnchor:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a3;
  v15 = [v14 domain];
  v16 = [v14 pullKeyValueRequestURL];

  v19.receiver = self;
  v19.super_class = SBKPullValueTransaction;
  v17 = [(SBKTransaction *)&v19 initWithDomain:v15 requestURL:v16];

  if (v17)
  {
    objc_storeStrong(&v17->_requestedKey, a4);
    objc_storeStrong(&v17->_clientItemPayloadPair, a5);
    objc_storeStrong(&v17->_clientItemVersionAnchor, a6);
  }

  return v17;
}

@end