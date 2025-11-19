@interface WFActionUserInterfaceListener
- (WFActionUserInterfaceListener)initWithUserInterfaceType:(id)a3 actionClassName:(id)a4 classNamesByType:(id)a5 attribution:(id)a6;
@end

@implementation WFActionUserInterfaceListener

- (WFActionUserInterfaceListener)initWithUserInterfaceType:(id)a3 actionClassName:(id)a4 classNamesByType:(id)a5 attribution:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = NSClassFromString(v11);
  if (v14)
  {
    v15 = [(objc_class *)v14 userInterfaceXPCInterface];
    v16 = [v12 objectForKeyedSubscript:v10];
    v17 = v16;
    if (v16)
    {
      v18 = NSClassFromString(v16);
      if (v18)
      {
        v19 = [[v18 alloc] initWithUserInterfaceType:v10 attribution:v13];
        v27.receiver = self;
        v27.super_class = WFActionUserInterfaceListener;
        v20 = [(WFSingleConnectionXPCListener *)&v27 initWithExportedObject:v19 exportedInterface:v15];
        self = v20;
        if (v20)
        {
          objc_storeStrong(&v20->_actionInterface, v19);
          self = self;
          v21 = self;
LABEL_15:

          goto LABEL_16;
        }

LABEL_14:
        v21 = 0;
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
      v31 = v10;
      v32 = 2114;
      v33 = v11;
      v22 = "%s No user interface of type %{public}@ for action: %{public}@";
      v23 = v19;
      v24 = OS_LOG_TYPE_ERROR;
      v25 = 32;
    }

    _os_log_impl(&dword_274AD4000, v23, v24, v22, buf, v25);
    goto LABEL_14;
  }

  v15 = getWFDialogLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v29 = "[WFActionUserInterfaceListener initWithUserInterfaceType:actionClassName:classNamesByType:attribution:]";
    v30 = 2114;
    v31 = v11;
    _os_log_impl(&dword_274AD4000, v15, OS_LOG_TYPE_FAULT, "%s Action class not loaded: %{public}@", buf, 0x16u);
  }

  v21 = 0;
LABEL_16:

  return v21;
}

@end