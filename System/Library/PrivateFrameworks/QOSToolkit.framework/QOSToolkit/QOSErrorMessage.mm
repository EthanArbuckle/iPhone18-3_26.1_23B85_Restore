@interface QOSErrorMessage
- (QOSErrorMessage)initWithConfig:(id)config logger:(id)logger metricsRecorder:(id)recorder defaultAlert:(id)alert;
- (id)getLocalizedErrorMessageForItems:(id)items usingError:(id)error;
- (void)fetchLocalizedErrorMessageForItems:(id)items usingError:(id)error completionHandler:(id)handler;
@end

@implementation QOSErrorMessage

- (QOSErrorMessage)initWithConfig:(id)config logger:(id)logger metricsRecorder:(id)recorder defaultAlert:(id)alert
{
  configCopy = config;
  loggerCopy = logger;
  recorderCopy = recorder;
  alertCopy = alert;
  v30.receiver = self;
  v30.super_class = QOSErrorMessage;
  v14 = [(QOSErrorMessage *)&v30 init];
  if (v14)
  {
    v15 = [QOSConfigInternal alloc];
    appTarget = [configCopy appTarget];
    locale = [configCopy locale];
    v18 = [(QOSConfigInternal *)v15 initWithAppTarget:appTarget locale:locale];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__QOSErrorMessage_initWithConfig_logger_metricsRecorder_defaultAlert___block_invoke;
    aBlock[3] = &unk_279AD7CE8;
    v29 = loggerCopy;
    v19 = _Block_copy(aBlock);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __70__QOSErrorMessage_initWithConfig_logger_metricsRecorder_defaultAlert___block_invoke_2;
    v26[3] = &unk_279AD7D10;
    v27 = alertCopy;
    v20 = _Block_copy(v26);
    v25 = 0;
    v21 = [QOSErrorMessageInternal getObjcInstanceWithConfig:v18 error:&v25 logger:v19 metricsRecorder:recorderCopy defaultAlert:v20];
    v22 = v25;
    underlyingObject = v14->_underlyingObject;
    v14->_underlyingObject = v21;
  }

  return v14;
}

QOSAlertMessageInternal *__70__QOSErrorMessage_initWithConfig_logger_metricsRecorder_defaultAlert___block_invoke_2(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [QOSAlertMessageInternal alloc];
  v3 = [v1 title];
  v4 = [v1 body];
  v5 = [(QOSAlertMessageInternal *)v2 initWithTitle:v3 body:v4];

  return v5;
}

- (id)getLocalizedErrorMessageForItems:(id)items usingError:(id)error
{
  itemsCopy = items;
  errorCopy = error;
  v8 = objc_initWeak(&location, self);
  underlyingObject = [(QOSErrorMessage *)self underlyingObject];
  v10 = [underlyingObject getLocalizedErrorMessageForItems:itemsCopy :errorCopy];

  v11 = [QOSAlertMessage alloc];
  title = [v10 title];
  body = [v10 body];
  v14 = [(QOSAlertMessage *)v11 initWithTitle:title body:body];

  objc_destroyWeak(&location);

  return v14;
}

- (void)fetchLocalizedErrorMessageForItems:(id)items usingError:(id)error completionHandler:(id)handler
{
  itemsCopy = items;
  errorCopy = error;
  handlerCopy = handler;
  v11 = objc_initWeak(&location, self);
  underlyingObject = [(QOSErrorMessage *)self underlyingObject];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__QOSErrorMessage_fetchLocalizedErrorMessageForItems_usingError_completionHandler___block_invoke;
  v14[3] = &unk_279AD7D60;
  v13 = handlerCopy;
  v15 = v13;
  [underlyingObject fetchLocalizedErrorMessageForItems:itemsCopy :errorCopy completionHandler:v14];

  objc_destroyWeak(&location);
}

void __83__QOSErrorMessage_fetchLocalizedErrorMessageForItems_usingError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [QOSAlertMessage alloc];
  v5 = [v3 title];
  v6 = [v3 body];

  v7 = [(QOSAlertMessage *)v4 initWithTitle:v5 body:v6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__QOSErrorMessage_fetchLocalizedErrorMessageForItems_usingError_completionHandler___block_invoke_2;
  v10[3] = &unk_279AD7D38;
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

@end