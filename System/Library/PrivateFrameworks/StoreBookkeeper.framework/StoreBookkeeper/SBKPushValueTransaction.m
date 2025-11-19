@interface SBKPushValueTransaction
- (SBKPushValueTransaction)initWithStoreBagContext:(id)a3 clientItemPayloadPair:(id)a4 clientItemVersionAnchor:(id)a5;
- (id)_resolveConflictBetweenClientPayloadPair:(id)a3 andServerPayloadPair:(id)a4;
- (id)clampsKey;
- (id)description;
- (void)processDataInResponse:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation SBKPushValueTransaction

- (id)_resolveConflictBetweenClientPayloadPair:(id)a3 andServerPayloadPair:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 timestamp];
  v8 = v7;
  [v5 timestamp];
  if (v8 >= v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  return v10;
}

- (void)processDataInResponse:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  isRechedulable = self->_isRechedulable;
  self->_isRechedulable = 0;
  v21 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v21 conflictItemValuePayload];

    if (v9)
    {
      clientItemPayloadPair = self->_clientItemPayloadPair;
      v11 = objc_opt_class();
      v12 = [v21 conflictItemKey];
      v13 = [v21 conflictItemValuePayload];
      v14 = SBKKeyValuePayloadPairWithPreferredClass(v11, v12, v13);

      v15 = [(SBKPushValueTransaction *)self _resolveConflictBetweenClientPayloadPair:self->_clientItemPayloadPair andServerPayloadPair:v14];
      requestItemPayloadPair = self->_requestItemPayloadPair;
      self->_requestItemPayloadPair = v15;

      v17 = [v21 conflictItemVersionAnchor];
      requestItemVersionAnchor = self->_requestItemVersionAnchor;
      self->_requestItemVersionAnchor = v17;

      v7[2](v7, isRechedulable);
      goto LABEL_6;
    }

    self->_success = [v21 isSuccess];
    objc_storeStrong(&self->_resultItemPayloadPair, self->_requestItemPayloadPair);
    objc_storeStrong(&self->_resultItemVersionAnchor, self->_requestItemVersionAnchor);
    v19 = [v21 domainVersion];
    resultDomainVersion = self->_resultDomainVersion;
    self->_resultDomainVersion = v19;
  }

  v7[2](v7, 0);
LABEL_6:
}

- (id)clampsKey
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SBKKeyValuePayloadPair *)self->_clientItemPayloadPair kvsKey];
  v7 = [v3 stringWithFormat:@"%@-%@", v5, v6];

  return v7;
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
  requestItemPayloadPair = self->_requestItemPayloadPair;
  requestItemVersionAnchor = self->_requestItemVersionAnchor;
  if (!requestItemVersionAnchor)
  {
    requestItemVersionAnchor = @"*unversioned*";
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"[request: payload-pair=%@, anchor=%@]", self->_requestItemPayloadPair, requestItemVersionAnchor];
  v12 = MEMORY[0x277CCACA8];
  v17.receiver = self;
  v17.super_class = SBKPushValueTransaction;
  v13 = [(SBKPushValueTransaction *)&v17 description];
  v14 = [(SBKTransaction *)self domain];
  v15 = [v12 stringWithFormat:@"%@ domain = %@, PUT: %@, %@, %@", v13, v14, v5, v11, v8];

  return v15;
}

- (SBKPushValueTransaction)initWithStoreBagContext:(id)a3 clientItemPayloadPair:(id)a4 clientItemVersionAnchor:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [v11 domain];
  v13 = [v11 pushKeyValueRequestURL];

  v16.receiver = self;
  v16.super_class = SBKPushValueTransaction;
  v14 = [(SBKTransaction *)&v16 initWithDomain:v12 requestURL:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_clientItemPayloadPair, a4);
    objc_storeStrong(&v14->_clientItemVersionAnchor, a5);
    objc_storeStrong(&v14->_requestItemPayloadPair, a4);
    objc_storeStrong(&v14->_requestItemVersionAnchor, a5);
    v14->_isRechedulable = 1;
  }

  return v14;
}

@end