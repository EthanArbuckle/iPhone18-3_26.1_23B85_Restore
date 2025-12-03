@interface WFSystemShortcutPickerViewControllerCoordinator
- (WFSystemShortcutPickerViewControllerCoordinatorDelegate)delegate;
- (id)createViewControllerWithEditingContext:(int64_t)context;
- (void)smartShortcutPickerViewControllerDidFinishWithSystemActionWithSystemAction:(id)action error:(id)error;
@end

@implementation WFSystemShortcutPickerViewControllerCoordinator

- (WFSystemShortcutPickerViewControllerCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)smartShortcutPickerViewControllerDidFinishWithSystemActionWithSystemAction:(id)action error:(id)error
{
  errorCopy = error;
  actionCopy = action;
  delegate = [(WFSystemShortcutPickerViewControllerCoordinator *)self delegate];
  [delegate smartShortcutPickerViewControllerDidFinishWithSystemAction:actionCopy error:errorCopy];
}

- (id)createViewControllerWithEditingContext:(int64_t)context
{
  v14 = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  if (!WorkflowUILibraryCore_frameworkLibrary)
  {
    v11[1] = MEMORY[0x277D85DD0];
    v11[2] = 3221225472;
    v11[3] = __WorkflowUILibraryCore_block_invoke;
    v11[4] = &__block_descriptor_40_e5_v8__0l;
    v11[5] = v11;
    v12 = xmmword_279EDB780;
    v13 = 0;
    WorkflowUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (WorkflowUILibraryCore_frameworkLibrary)
  {
    v5 = v11[0];
    if (!v11[0])
    {
      goto LABEL_5;
    }
  }

  else
  {
    context = [MEMORY[0x277CCA890] currentHandler];
    self = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WorkflowUILibrary(void)"];
    [context handleFailureInFunction:self file:@"WFSystemShortcutPickerViewControllerCoordinator.m" lineNumber:14 description:{@"%s", v11[0]}];

    __break(1u);
  }

  free(v5);
LABEL_5:
  v6 = objc_alloc_init(NSClassFromString(&cfstr_WorkflowuiSmar.isa));
  if (objc_opt_respondsToSelector())
  {
    [v6 performSelector:sel_setDelegate_ withObject:self];
  }

  v7 = NSSelectorFromString(&cfstr_Makeviewcontro.isa);
  if (objc_opt_respondsToSelector())
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:context];
    v9 = [v6 performSelector:v7 withObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end