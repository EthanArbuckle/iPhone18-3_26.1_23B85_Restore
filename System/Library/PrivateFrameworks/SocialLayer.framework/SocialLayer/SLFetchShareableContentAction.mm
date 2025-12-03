@interface SLFetchShareableContentAction
- (NSString)requestedTypeIdentifier;
- (SLFetchShareableContentAction)initWithCoder:(id)coder;
- (SLFetchShareableContentAction)initWithSceneIdentifier:(id)identifier requestedTypeIdentifier:(id)typeIdentifier requestedItemProviderIndex:(int64_t)index responseHandler:(id)handler;
- (int64_t)requestedItemProviderIndex;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLFetchShareableContentAction

- (SLFetchShareableContentAction)initWithSceneIdentifier:(id)identifier requestedTypeIdentifier:(id)typeIdentifier requestedItemProviderIndex:(int64_t)index responseHandler:(id)handler
{
  v10 = MEMORY[0x277CF0C80];
  handlerCopy = handler;
  typeIdentifierCopy = typeIdentifier;
  identifierCopy = identifier;
  v14 = objc_alloc_init(v10);
  [v14 setObject:identifierCopy forSetting:1];

  [v14 setObject:typeIdentifierCopy forSetting:3];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  [v14 setObject:v15 forSetting:4];

  v16 = [(SLShareableContentAction *)self initWithInfo:v14 responseHandler:handlerCopy];
  return v16;
}

- (NSString)requestedTypeIdentifier
{
  requestedTypeIdentifier = self->_requestedTypeIdentifier;
  if (!requestedTypeIdentifier)
  {
    action = [(SLShareableContentAction *)self action];
    info = [action info];
    v6 = [info objectForSetting:3];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_requestedTypeIdentifier, v6);
    }

    requestedTypeIdentifier = self->_requestedTypeIdentifier;
  }

  return requestedTypeIdentifier;
}

- (int64_t)requestedItemProviderIndex
{
  action = [(SLShareableContentAction *)self action];
  info = [action info];
  v5 = [info objectForSetting:4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    requestedItemProviderIndex = [v5 integerValue];
    self->_requestedItemProviderIndex = requestedItemProviderIndex;
  }

  else
  {
    requestedItemProviderIndex = self->_requestedItemProviderIndex;
  }

  return requestedItemProviderIndex;
}

- (SLFetchShareableContentAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SLFetchShareableContentAction;
  v5 = [(SLShareableContentAction *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_requestedTypeIdentifier);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    requestedTypeIdentifier = v5->_requestedTypeIdentifier;
    v5->_requestedTypeIdentifier = v8;

    v10 = NSStringFromSelector(sel_requestedItemProviderIndex);
    v5->_requestedItemProviderIndex = [coderCopy decodeIntegerForKey:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  requestedTypeIdentifier = [(SLFetchShareableContentAction *)self requestedTypeIdentifier];
  v6 = NSStringFromSelector(sel_requestedTypeIdentifier);
  [coderCopy encodeObject:requestedTypeIdentifier forKey:v6];

  requestedItemProviderIndex = [(SLFetchShareableContentAction *)self requestedItemProviderIndex];
  v8 = NSStringFromSelector(sel_requestedItemProviderIndex);
  [coderCopy encodeInteger:requestedItemProviderIndex forKey:v8];

  v9.receiver = self;
  v9.super_class = SLFetchShareableContentAction;
  [(SLShareableContentAction *)&v9 encodeWithCoder:coderCopy];
}

@end