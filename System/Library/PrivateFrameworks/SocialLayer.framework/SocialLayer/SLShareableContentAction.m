@interface SLShareableContentAction
+ (id)actionWithBSAction:(id)a3;
- (NSString)sceneIdentifier;
- (SLShareableContentAction)initWithAction:(id)a3;
- (SLShareableContentAction)initWithCoder:(id)a3;
- (SLShareableContentAction)initWithInfo:(id)a3 responseHandler:(id)a4;
- (SLShareableContentAction)initWithSceneIdentifier:(id)a3 responseHandler:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)failWithError:(id)a3;
- (void)fulfillWithResponse:(id)a3;
@end

@implementation SLShareableContentAction

+ (id)actionWithBSAction:(id)a3
{
  v3 = a3;
  v4 = [v3 info];
  v5 = [v4 objectForSetting:30295];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = NSClassFromString(v5), [(objc_class *)v6 isSubclassOfClass:objc_opt_class()]) && [(objc_class *)v6 instancesRespondToSelector:sel_initWithAction_])
  {
    v7 = [[v6 alloc] initWithAction:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SLShareableContentAction)initWithAction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SLShareableContentAction;
  v6 = [(SLShareableContentAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, a3);
  }

  return v7;
}

- (SLShareableContentAction)initWithInfo:(id)a3 responseHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CF0C80];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  [v9 applySettings:v8];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v9 setObject:v11 forSetting:30295];

  v12 = MEMORY[0x277CF0B60];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__SLShareableContentAction_initWithInfo_responseHandler___block_invoke;
  v18[3] = &unk_278926D88;
  v19 = v6;
  v13 = v6;
  v14 = [v12 responderWithHandler:v18];
  v15 = [objc_alloc(MEMORY[0x277CF0B58]) initWithInfo:v9 responder:v14];
  v16 = [(SLShareableContentAction *)self initWithAction:v15];

  return v16;
}

void __57__SLShareableContentAction_initWithInfo_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(a1 + 32);
    v7 = [v3 error];

    (*(v5 + 16))(v5, 0, v7);
  }

  else
  {
    v6 = [v3 info];

    v7 = [v6 objectForSetting:2];

    (*(*(a1 + 32) + 16))(*(a1 + 32), v7, 0);
  }
}

- (SLShareableContentAction)initWithSceneIdentifier:(id)a3 responseHandler:(id)a4
{
  v6 = MEMORY[0x277CF0C80];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setObject:v8 forSetting:1];

  v10 = [(SLShareableContentAction *)self initWithInfo:v9 responseHandler:v7];
  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(SLShareableContentAction *)self sceneIdentifier];
  [v3 appendFormat:@" sceneIdentifier=%@", v4];

  [v3 appendString:@">"];
  v5 = [v3 copy];

  return v5;
}

- (NSString)sceneIdentifier
{
  p_sceneIdentifier = &self->_sceneIdentifier;
  sceneIdentifier = self->_sceneIdentifier;
  if (!sceneIdentifier)
  {
    v5 = [(SLShareableContentAction *)self action];
    v6 = [v5 info];
    v7 = [v6 objectForSetting:1];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(p_sceneIdentifier, v7);
    }

    sceneIdentifier = *p_sceneIdentifier;
  }

  return sceneIdentifier;
}

- (void)fulfillWithResponse:(id)a3
{
  v4 = MEMORY[0x277CF0C80];
  v5 = a3;
  v8 = objc_alloc_init(v4);
  [v8 setObject:v5 forSetting:2];

  v6 = [(SLShareableContentAction *)self action];
  v7 = [MEMORY[0x277CF0B68] responseWithInfo:v8];
  [v6 sendResponse:v7];
}

- (void)failWithError:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
  }

  v6 = v5;
  v7 = [(SLShareableContentAction *)self action];
  v8 = [MEMORY[0x277CF0B68] responseForError:v6];
  [v7 sendResponse:v8];
}

- (SLShareableContentAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLShareableContentAction *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_sceneIdentifier);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    sceneIdentifier = v5->_sceneIdentifier;
    v5->_sceneIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(SLShareableContentAction *)self sceneIdentifier];
  v5 = NSStringFromSelector(sel_sceneIdentifier);
  [v4 encodeObject:v6 forKey:v5];
}

@end