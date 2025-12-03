@interface SUSUIBaseAlertItem
- (SUSUIBaseAlertItem)init;
- (id)buildAlertItemDefinition;
- (void)_setPresentationManager:(id)manager;
- (void)alertWasCanceled;
- (void)dismissAlert;
- (void)willPresentAlert;
@end

@implementation SUSUIBaseAlertItem

- (SUSUIBaseAlertItem)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = SUSUIBaseAlertItem;
  v6 = [(SUSUIBaseAlertItem *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    v2 = objc_alloc_init(SUSUIAlertItemDefinition);
    alertItemDefinition = v9->_alertItemDefinition;
    v9->_alertItemDefinition = v2;

    v9->_isUILocked = 0;
  }

  v5 = v9;
  objc_storeStrong(&v9, 0);
  return v5;
}

- (id)buildAlertItemDefinition
{
  alertItemDefinition = self->_alertItemDefinition;
  title = [(SUSUIBaseAlertItem *)self title];
  [(SUSUIAlertItemDefinition *)alertItemDefinition setTitle:?];

  v6 = self->_alertItemDefinition;
  message = [(SUSUIBaseAlertItem *)self message];
  [(SUSUIAlertItemDefinition *)v6 setMessage:?];

  v8 = self->_alertItemDefinition;
  buttons = [(SUSUIBaseAlertItem *)self buttons];
  [(SUSUIAlertItemDefinition *)v8 setButtons:?];

  v2 = self->_alertItemDefinition;

  return v2;
}

- (void)willPresentAlert
{
  oslog[2] = &self->super;
  oslog[1] = a2;
  oslog[0] = SUSUILog();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    v4 = type;
    v2 = objc_opt_class();
    v5 = NSStringFromClass(v2);
    v6 = v5;
    sub_4B94(v9, v6);
    _os_log_impl(&dword_0, log, v4, "[%{public}@] willPresentAlert", v9, 0xCu);

    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(oslog, 0);
}

- (void)alertWasCanceled
{
  oslog[2] = &self->super;
  oslog[1] = a2;
  oslog[0] = SUSUILog();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    v4 = type;
    v2 = objc_opt_class();
    v5 = NSStringFromClass(v2);
    v6 = v5;
    sub_4B94(v9, v6);
    _os_log_impl(&dword_0, log, v4, "[%{public}@] alertWasCanceled", v9, 0xCu);

    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(oslog, 0);
}

- (void)dismissAlert
{
  selfCopy = self;
  v8[1] = a2;
  v8[0] = SUSUILog();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v8[0];
    type = v7;
    v2 = objc_opt_class();
    v5 = NSStringFromClass(v2);
    v6 = v5;
    sub_4B94(v10, v6);
    _os_log_impl(&dword_0, log, type, "[%{public}@] Dismissing", v10, 0xCu);

    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(v8, 0);
  [(SUSUIAlertPresentationManager *)selfCopy->_presentationManager _noteAlertDeactivated:selfCopy];
}

- (void)_setPresentationManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  objc_storeStrong(&selfCopy->_presentationManager, location[0]);
  objc_storeStrong(location, 0);
}

@end