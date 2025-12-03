@interface PDCApplicationEnvironmentMonitoringHandle
- (PDCApplicationEnvironmentMonitoring)delegate;
- (PDCApplicationEnvironmentMonitoringHandle)initWithWorkspace:(id)workspace delegate:(id)delegate queue:(id)queue;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)invalidate;
@end

@implementation PDCApplicationEnvironmentMonitoringHandle

- (PDCApplicationEnvironmentMonitoringHandle)initWithWorkspace:(id)workspace delegate:(id)delegate queue:(id)queue
{
  workspaceCopy = workspace;
  delegateCopy = delegate;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = PDCApplicationEnvironmentMonitoringHandle;
  v12 = [(PDCApplicationEnvironmentMonitoringHandle *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workspace, workspace);
    [(PDCApplicationEnvironmentMonitoringHandle *)v13 setDelegate:delegateCopy];
    objc_storeStrong(&v13->_queue, queue);
    v14 = v13;
  }

  return v13;
}

- (void)invalidate
{
  [(PDCApplicationEnvironmentMonitoringHandle *)self setDelegate:0];
  workspace = self->_workspace;

  [(LSApplicationWorkspace *)workspace removeObserver:self];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v28 = *MEMORY[0x277D85DE8];
  uninstallCopy = uninstall;
  delegate = [(PDCApplicationEnvironmentMonitoringHandle *)self delegate];
  if (delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      array = [MEMORY[0x277CBEB18] array];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v18 = uninstallCopy;
      v7 = uninstallCopy;
      v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v24;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v23 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v12;
              bundleIdentifier = [v13 bundleIdentifier];
              [array addObject:bundleIdentifier];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v9);
      }

      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__PDCApplicationEnvironmentMonitoringHandle_applicationsDidUninstall___block_invoke;
      block[3] = &unk_279AA1E08;
      v20 = array;
      selfCopy = self;
      v22 = delegate;
      v16 = array;
      dispatch_async(queue, block);

      uninstallCopy = v18;
    }
  }

  else
  {
    [(PDCApplicationEnvironmentMonitoringHandle *)self invalidate];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __70__PDCApplicationEnvironmentMonitoringHandle_applicationsDidUninstall___block_invoke(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v10 + 1) + 8 * v6);
      v8 = [a1[5] delegate];

      if (!v8)
      {
        break;
      }

      [a1[6] applicationDidUninstall:v7];
      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (PDCApplicationEnvironmentMonitoring)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end