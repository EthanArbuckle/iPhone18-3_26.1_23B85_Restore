@interface QOSErrorMessage
- (QOSErrorMessage)initWithConfig:(id)a3 logger:(id)a4 metricsRecorder:(id)a5 defaultAlert:(id)a6;
- (id)getLocalizedErrorMessageForItems:(id)a3 usingError:(id)a4;
- (void)fetchLocalizedErrorMessageForItems:(id)a3 usingError:(id)a4 completionHandler:(id)a5;
@end

@implementation QOSErrorMessage

- (QOSErrorMessage)initWithConfig:(id)a3 logger:(id)a4 metricsRecorder:(id)a5 defaultAlert:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v30.receiver = self;
  v30.super_class = QOSErrorMessage;
  v14 = [(QOSErrorMessage *)&v30 init];
  if (v14)
  {
    v15 = [QOSConfigInternal alloc];
    v16 = [v10 appTarget];
    v17 = [v10 locale];
    v18 = [(QOSConfigInternal *)v15 initWithAppTarget:v16 locale:v17];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__QOSErrorMessage_initWithConfig_logger_metricsRecorder_defaultAlert___block_invoke;
    aBlock[3] = &unk_279AD7CE8;
    v29 = v11;
    v19 = _Block_copy(aBlock);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __70__QOSErrorMessage_initWithConfig_logger_metricsRecorder_defaultAlert___block_invoke_2;
    v26[3] = &unk_279AD7D10;
    v27 = v13;
    v20 = _Block_copy(v26);
    v25 = 0;
    v21 = [QOSErrorMessageInternal getObjcInstanceWithConfig:v18 error:&v25 logger:v19 metricsRecorder:v12 defaultAlert:v20];
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

- (id)getLocalizedErrorMessageForItems:(id)a3 usingError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_initWeak(&location, self);
  v9 = [(QOSErrorMessage *)self underlyingObject];
  v10 = [v9 getLocalizedErrorMessageForItems:v6 :v7];

  v11 = [QOSAlertMessage alloc];
  v12 = [v10 title];
  v13 = [v10 body];
  v14 = [(QOSAlertMessage *)v11 initWithTitle:v12 body:v13];

  objc_destroyWeak(&location);

  return v14;
}

- (void)fetchLocalizedErrorMessageForItems:(id)a3 usingError:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_initWeak(&location, self);
  v12 = [(QOSErrorMessage *)self underlyingObject];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__QOSErrorMessage_fetchLocalizedErrorMessageForItems_usingError_completionHandler___block_invoke;
  v14[3] = &unk_279AD7D60;
  v13 = v10;
  v15 = v13;
  [v12 fetchLocalizedErrorMessageForItems:v8 :v9 completionHandler:v14];

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