@interface SBKPushValueTransaction
- (SBKPushValueTransaction)initWithStoreBagContext:(id)context clientItemPayloadPair:(id)pair clientItemVersionAnchor:(id)anchor;
- (id)_resolveConflictBetweenClientPayloadPair:(id)pair andServerPayloadPair:(id)payloadPair;
- (id)clampsKey;
- (id)description;
- (void)processDataInResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation SBKPushValueTransaction

- (id)_resolveConflictBetweenClientPayloadPair:(id)pair andServerPayloadPair:(id)payloadPair
{
  pairCopy = pair;
  payloadPairCopy = payloadPair;
  [payloadPairCopy timestamp];
  v8 = v7;
  [pairCopy timestamp];
  if (v8 >= v9)
  {
    v10 = payloadPairCopy;
  }

  else
  {
    v10 = pairCopy;
  }

  v11 = v10;

  return v10;
}

- (void)processDataInResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  isRechedulable = self->_isRechedulable;
  self->_isRechedulable = 0;
  v21 = responseCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    conflictItemValuePayload = [v21 conflictItemValuePayload];

    if (conflictItemValuePayload)
    {
      clientItemPayloadPair = self->_clientItemPayloadPair;
      v11 = objc_opt_class();
      conflictItemKey = [v21 conflictItemKey];
      conflictItemValuePayload2 = [v21 conflictItemValuePayload];
      v14 = SBKKeyValuePayloadPairWithPreferredClass(v11, conflictItemKey, conflictItemValuePayload2);

      v15 = [(SBKPushValueTransaction *)self _resolveConflictBetweenClientPayloadPair:self->_clientItemPayloadPair andServerPayloadPair:v14];
      requestItemPayloadPair = self->_requestItemPayloadPair;
      self->_requestItemPayloadPair = v15;

      conflictItemVersionAnchor = [v21 conflictItemVersionAnchor];
      requestItemVersionAnchor = self->_requestItemVersionAnchor;
      self->_requestItemVersionAnchor = conflictItemVersionAnchor;

      handlerCopy[2](handlerCopy, isRechedulable);
      goto LABEL_6;
    }

    self->_success = [v21 isSuccess];
    objc_storeStrong(&self->_resultItemPayloadPair, self->_requestItemPayloadPair);
    objc_storeStrong(&self->_resultItemVersionAnchor, self->_requestItemVersionAnchor);
    domainVersion = [v21 domainVersion];
    resultDomainVersion = self->_resultDomainVersion;
    self->_resultDomainVersion = domainVersion;
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_6:
}

- (id)clampsKey
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  kvsKey = [(SBKKeyValuePayloadPair *)self->_clientItemPayloadPair kvsKey];
  v7 = [v3 stringWithFormat:@"%@-%@", v5, kvsKey];

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

  clientItemVersionAnchor = [MEMORY[0x277CCACA8] stringWithFormat:@"[client: payload-pair=%@, anchor=%@]", self->_clientItemPayloadPair, clientItemVersionAnchor];
  resultItemPayloadPair = self->_resultItemPayloadPair;
  resultItemVersionAnchor = self->_resultItemVersionAnchor;
  if (!resultItemVersionAnchor)
  {
    resultItemVersionAnchor = @"*unversioned*";
  }

  resultItemVersionAnchor = [MEMORY[0x277CCACA8] stringWithFormat:@"[result: payload-pair=%@, anchor=%@]", self->_resultItemPayloadPair, resultItemVersionAnchor];
  requestItemPayloadPair = self->_requestItemPayloadPair;
  requestItemVersionAnchor = self->_requestItemVersionAnchor;
  if (!requestItemVersionAnchor)
  {
    requestItemVersionAnchor = @"*unversioned*";
  }

  requestItemVersionAnchor = [MEMORY[0x277CCACA8] stringWithFormat:@"[request: payload-pair=%@, anchor=%@]", self->_requestItemPayloadPair, requestItemVersionAnchor];
  v12 = MEMORY[0x277CCACA8];
  v17.receiver = self;
  v17.super_class = SBKPushValueTransaction;
  v13 = [(SBKPushValueTransaction *)&v17 description];
  domain = [(SBKTransaction *)self domain];
  v15 = [v12 stringWithFormat:@"%@ domain = %@, PUT: %@, %@, %@", v13, domain, clientItemVersionAnchor, requestItemVersionAnchor, resultItemVersionAnchor];

  return v15;
}

- (SBKPushValueTransaction)initWithStoreBagContext:(id)context clientItemPayloadPair:(id)pair clientItemVersionAnchor:(id)anchor
{
  pairCopy = pair;
  anchorCopy = anchor;
  contextCopy = context;
  domain = [contextCopy domain];
  pushKeyValueRequestURL = [contextCopy pushKeyValueRequestURL];

  v16.receiver = self;
  v16.super_class = SBKPushValueTransaction;
  v14 = [(SBKTransaction *)&v16 initWithDomain:domain requestURL:pushKeyValueRequestURL];

  if (v14)
  {
    objc_storeStrong(&v14->_clientItemPayloadPair, pair);
    objc_storeStrong(&v14->_clientItemVersionAnchor, anchor);
    objc_storeStrong(&v14->_requestItemPayloadPair, pair);
    objc_storeStrong(&v14->_requestItemVersionAnchor, anchor);
    v14->_isRechedulable = 1;
  }

  return v14;
}

@end