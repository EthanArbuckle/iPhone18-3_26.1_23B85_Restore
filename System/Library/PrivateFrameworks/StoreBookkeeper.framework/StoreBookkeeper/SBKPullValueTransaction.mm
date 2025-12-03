@interface SBKPullValueTransaction
- (SBKPullValueTransaction)initWithStoreBagContext:(id)context requestedKey:(id)key clientItemPayloadPair:(id)pair clientItemVersionAnchor:(id)anchor;
- (id)clampsKey;
- (id)description;
- (void)processDataInResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation SBKPullValueTransaction

- (void)processDataInResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    itemValuePayload = [responseCopy itemValuePayload];

    if (itemValuePayload)
    {
      clientItemPayloadPair = self->_clientItemPayloadPair;
      v9 = objc_opt_class();
      itemKey = [responseCopy itemKey];
      itemValuePayload2 = [responseCopy itemValuePayload];
      v12 = SBKKeyValuePayloadPairWithPreferredClass(v9, itemKey, itemValuePayload2);
      resultItemPayloadPair = self->_resultItemPayloadPair;
      self->_resultItemPayloadPair = v12;

      itemVersion = [responseCopy itemVersion];
    }

    else
    {
      objc_storeStrong(&self->_resultItemPayloadPair, self->_clientItemPayloadPair);
      itemVersion = self->_clientItemVersionAnchor;
    }

    resultItemVersionAnchor = self->_resultItemVersionAnchor;
    self->_resultItemVersionAnchor = itemVersion;

    self->_success = [responseCopy isSuccess];
    domainVersion = [responseCopy domainVersion];
    resultDomainVersion = self->_resultDomainVersion;
    self->_resultDomainVersion = domainVersion;
  }

  handlerCopy[2](handlerCopy, 0);
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

  clientItemVersionAnchor = [MEMORY[0x277CCACA8] stringWithFormat:@"[client: payload-pair=%@, anchor=%@]", self->_clientItemPayloadPair, clientItemVersionAnchor];
  resultItemPayloadPair = self->_resultItemPayloadPair;
  resultItemVersionAnchor = self->_resultItemVersionAnchor;
  if (!resultItemVersionAnchor)
  {
    resultItemVersionAnchor = @"*unversioned*";
  }

  resultItemVersionAnchor = [MEMORY[0x277CCACA8] stringWithFormat:@"[result: payload-pair=%@, anchor=%@]", self->_resultItemPayloadPair, resultItemVersionAnchor];
  v9 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = SBKPullValueTransaction;
  v10 = [(SBKPullValueTransaction *)&v14 description];
  domain = [(SBKTransaction *)self domain];
  v12 = [v9 stringWithFormat:@"%@ domain = %@, GET: key='%@', %@, %@", v10, domain, self->_requestedKey, clientItemVersionAnchor, resultItemVersionAnchor];

  return v12;
}

- (SBKPullValueTransaction)initWithStoreBagContext:(id)context requestedKey:(id)key clientItemPayloadPair:(id)pair clientItemVersionAnchor:(id)anchor
{
  keyCopy = key;
  pairCopy = pair;
  anchorCopy = anchor;
  contextCopy = context;
  domain = [contextCopy domain];
  pullKeyValueRequestURL = [contextCopy pullKeyValueRequestURL];

  v19.receiver = self;
  v19.super_class = SBKPullValueTransaction;
  v17 = [(SBKTransaction *)&v19 initWithDomain:domain requestURL:pullKeyValueRequestURL];

  if (v17)
  {
    objc_storeStrong(&v17->_requestedKey, key);
    objc_storeStrong(&v17->_clientItemPayloadPair, pair);
    objc_storeStrong(&v17->_clientItemVersionAnchor, anchor);
  }

  return v17;
}

@end