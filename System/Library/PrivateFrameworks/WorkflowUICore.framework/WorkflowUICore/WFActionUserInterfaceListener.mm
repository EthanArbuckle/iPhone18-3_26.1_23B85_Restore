@interface WFActionUserInterfaceListener
- (WFActionUserInterfaceListener)initWithUserInterfaceType:(id)type actionClassName:(id)name classNamesByType:(id)byType attribution:(id)attribution;
@end

@implementation WFActionUserInterfaceListener

- (WFActionUserInterfaceListener)initWithUserInterfaceType:(id)type actionClassName:(id)name classNamesByType:(id)byType attribution:(id)attribution
{
  v34 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  nameCopy = name;
  byTypeCopy = byType;
  attributionCopy = attribution;
  v14 = NSClassFromString(nameCopy);
  if (v14)
  {
    userInterfaceXPCInterface = [(objc_class *)v14 userInterfaceXPCInterface];
    v16 = [byTypeCopy objectForKeyedSubscript:typeCopy];
    v17 = v16;
    if (v16)
    {
      v18 = NSClassFromString(v16);
      if (v18)
      {
        v19 = [[v18 alloc] initWithUserInterfaceType:typeCopy attribution:attributionCopy];
        v27.receiver = self;
        v27.super_class = WFActionUserInterfaceListener;
        v20 = [(WFSingleConnectionXPCListener *)&v27 initWithExportedObject:v19 exportedInterface:userInterfaceXPCInterface];
        self = v20;
        if (v20)
        {
          objc_storeStrong(&v20->_actionInterface, v19);
          self = self;
          selfCopy = self;
LABEL_15:

          goto LABEL_16;
        }

LABEL_14:
        selfCopy = 0;
        goto LABEL_15;
      }

      v19 = getWFDialogLogObject();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_14;
      }

      *buf = 136315394;
      v29 = "[WFActionUserInterfaceListener initWithUserInterfaceType:actionClassName:classNamesByType:attribution:]";
      v30 = 2114;
      v31 = v17;
      v22 = "%s No interface class found with name: %{public}@";
      v23 = v19;
      v24 = OS_LOG_TYPE_FAULT;
      v25 = 22;
    }

    else
    {
      v19 = getWFDialogLogObject();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 136315650;
      v29 = "[WFActionUserInterfaceListener initWithUserInterfaceType:actionClassName:classNamesByType:attribution:]";
      v30 = 2114;
      v31 = typeCopy;
      v32 = 2114;
      v33 = nameCopy;
      v22 = "%s No user interface of type %{public}@ for action: %{public}@";
      v23 = v19;
      v24 = OS_LOG_TYPE_ERROR;
      v25 = 32;
    }

    _os_log_impl(&dword_274AD4000, v23, v24, v22, buf, v25);
    goto LABEL_14;
  }

  userInterfaceXPCInterface = getWFDialogLogObject();
  if (os_log_type_enabled(userInterfaceXPCInterface, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v29 = "[WFActionUserInterfaceListener initWithUserInterfaceType:actionClassName:classNamesByType:attribution:]";
    v30 = 2114;
    v31 = nameCopy;
    _os_log_impl(&dword_274AD4000, userInterfaceXPCInterface, OS_LOG_TYPE_FAULT, "%s Action class not loaded: %{public}@", buf, 0x16u);
  }

  selfCopy = 0;
LABEL_16:

  return selfCopy;
}

@end