@interface SLFetchShareableContentAction
- (NSString)requestedTypeIdentifier;
- (SLFetchShareableContentAction)initWithCoder:(id)a3;
- (SLFetchShareableContentAction)initWithSceneIdentifier:(id)a3 requestedTypeIdentifier:(id)a4 requestedItemProviderIndex:(int64_t)a5 responseHandler:(id)a6;
- (int64_t)requestedItemProviderIndex;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLFetchShareableContentAction

- (SLFetchShareableContentAction)initWithSceneIdentifier:(id)a3 requestedTypeIdentifier:(id)a4 requestedItemProviderIndex:(int64_t)a5 responseHandler:(id)a6
{
  v10 = MEMORY[0x277CF0C80];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v10);
  [v14 setObject:v13 forSetting:1];

  [v14 setObject:v12 forSetting:3];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  [v14 setObject:v15 forSetting:4];

  v16 = [(SLShareableContentAction *)self initWithInfo:v14 responseHandler:v11];
  return v16;
}

- (NSString)requestedTypeIdentifier
{
  requestedTypeIdentifier = self->_requestedTypeIdentifier;
  if (!requestedTypeIdentifier)
  {
    v4 = [(SLShareableContentAction *)self action];
    v5 = [v4 info];
    v6 = [v5 objectForSetting:3];

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
  v3 = [(SLShareableContentAction *)self action];
  v4 = [v3 info];
  v5 = [v4 objectForSetting:4];

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

- (SLFetchShareableContentAction)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SLFetchShareableContentAction;
  v5 = [(SLShareableContentAction *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_requestedTypeIdentifier);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    requestedTypeIdentifier = v5->_requestedTypeIdentifier;
    v5->_requestedTypeIdentifier = v8;

    v10 = NSStringFromSelector(sel_requestedItemProviderIndex);
    v5->_requestedItemProviderIndex = [v4 decodeIntegerForKey:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLFetchShareableContentAction *)self requestedTypeIdentifier];
  v6 = NSStringFromSelector(sel_requestedTypeIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SLFetchShareableContentAction *)self requestedItemProviderIndex];
  v8 = NSStringFromSelector(sel_requestedItemProviderIndex);
  [v4 encodeInteger:v7 forKey:v8];

  v9.receiver = self;
  v9.super_class = SLFetchShareableContentAction;
  [(SLShareableContentAction *)&v9 encodeWithCoder:v4];
}

@end