@interface _UIOServerAction
- (_UIOServerAction)initWithOriginContext:(id)context info:(id)info responder:(id)responder;
- (_UIOServerActionOriginContext)originContext;
- (void)performActionFromConnection:(id)connection;
@end

@implementation _UIOServerAction

- (_UIOServerAction)initWithOriginContext:(id)context info:(id)info responder:(id)responder
{
  v24 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  infoCopy = info;
  responderCopy = responder;
  if (contextCopy)
  {
    if (infoCopy)
    {
LABEL_3:
      v11 = [infoCopy mutableCopy];
      goto LABEL_6;
    }
  }

  else
  {
    contextCopy = +[_UIOServerActionOriginContext defaultOriginContext];
    if (infoCopy)
    {
      goto LABEL_3;
    }
  }

  v11 = objc_alloc_init(MEMORY[0x1E698E700]);
LABEL_6:
  v12 = v11;
  v21 = 0;
  v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:contextCopy requiringSecureCoding:1 error:&v21];
  v14 = v21;
  if (v14)
  {
    v15 = UIOLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v14 localizedDescription];
      *buf = 138412290;
      v23 = localizedDescription;
      _os_log_error_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Error encoding origin context data: %@", buf, 0xCu);
    }
  }

  else
  {
    [v12 setObject:v13 forSetting:512];
  }

  v20.receiver = self;
  v20.super_class = _UIOServerAction;
  v16 = [(_UIOServerAction *)&v20 initWithInfo:v12 responder:responderCopy];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_originContext, contextCopy);
  }

  return v17;
}

- (_UIOServerActionOriginContext)originContext
{
  v15 = *MEMORY[0x1E69E9840];
  originContext = self->_originContext;
  if (!originContext)
  {
    info = [(_UIOServerAction *)self info];
    v5 = [info objectForSetting:512];

    v12 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v12];
    v7 = v12;
    v8 = self->_originContext;
    self->_originContext = v6;

    if (v7)
    {
      v9 = UIOLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v7 localizedDescription];
        *buf = 138412290;
        v14 = localizedDescription;
        _os_log_error_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Error decoding origin context data: %@", buf, 0xCu);
      }
    }

    originContext = self->_originContext;
  }

  return originContext;
}

- (void)performActionFromConnection:(id)connection
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIOServerAction.m" lineNumber:62 description:{@"_UIOServerAction subclass <%@: %p> did not override -performActionFromConnection:", v6, self}];
}

@end