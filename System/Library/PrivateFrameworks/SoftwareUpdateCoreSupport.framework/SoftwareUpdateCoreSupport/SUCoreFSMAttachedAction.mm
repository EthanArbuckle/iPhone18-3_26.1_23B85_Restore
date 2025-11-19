@interface SUCoreFSMAttachedAction
- (SUCoreFSMAttachedAction)initWithAction:(id)a3 usingDelegate:(id)a4 withInfoClass:(Class)a5;
- (id)actionDelegate;
- (id)description;
@end

@implementation SUCoreFSMAttachedAction

- (id)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (SUCoreFSMAttachedAction)initWithAction:(id)a3 usingDelegate:(id)a4 withInfoClass:(Class)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SUCoreFSMAttachedAction;
  v11 = [(SUCoreFSMAttachedAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_fsmAction, a3);
    objc_storeWeak(&v12->_actionDelegate, v10);
    objc_storeStrong(&v12->_eventInfoClass, a5);
  }

  return v12;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SUCoreFSMAttachedAction *)self fsmAction];
  v5 = [(SUCoreFSMAttachedAction *)self actionDelegate];
  v6 = [v3 initWithFormat:@"action(%@), delegate(%@), class(%@)", v4, v5, -[SUCoreFSMAttachedAction eventInfoClass](self, "eventInfoClass")];

  return v6;
}

@end