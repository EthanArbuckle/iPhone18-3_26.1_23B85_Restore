@interface SSMetricsDialogEvent
- (NSString)actionType;
- (NSString)actionURL;
- (NSString)dialogId;
- (NSString)dialogType;
- (NSString)dualAction;
- (NSString)message;
- (NSString)result;
- (NSString)targetId;
- (SSMetricsDialogEvent)init;
- (SSMetricsDialogEvent)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
@end

@implementation SSMetricsDialogEvent

- (SSMetricsDialogEvent)init
{
  v5.receiver = self;
  v5.super_class = SSMetricsDialogEvent;
  v2 = [(SSMetricsBaseEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SSMetricsMutableEvent *)v2 setEventType:@"dialog"];
    [(SSMetricsMutableEvent *)v3 setEventVersion:&unk_1F507A0C0];
  }

  return v3;
}

- (NSString)actionType
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"actionType"];
  v3 = [v2 copy];

  return v3;
}

- (NSString)actionURL
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"actionURL"];
  v3 = [v2 copy];

  return v3;
}

- (NSString)dialogId
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"dialogId"];
  v3 = [v2 copy];

  return v3;
}

- (NSString)dialogType
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"dialogType"];
  v3 = [v2 copy];

  return v3;
}

- (NSString)dualAction
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"dualAction"];
  v3 = [v2 copy];

  return v3;
}

- (NSString)message
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"message"];
  v3 = [v2 copy];

  return v3;
}

- (NSString)result
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"result"];
  v3 = [v2 copy];

  return v3;
}

- (NSString)targetId
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"targetId"];
  v3 = [v2 copy];

  return v3;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  actionType = [(SSMetricsDialogEvent *)self actionType];
  SSXPCDictionarySetObject(v3, "300", actionType);

  actionURL = [(SSMetricsDialogEvent *)self actionURL];
  SSXPCDictionarySetObject(v3, "301", actionURL);

  details = [(SSMetricsDialogEvent *)self details];
  SSXPCDictionarySetObject(v3, "302", details);

  dialogId = [(SSMetricsDialogEvent *)self dialogId];
  SSXPCDictionarySetObject(v3, "303", dialogId);

  dialogType = [(SSMetricsDialogEvent *)self dialogType];
  SSXPCDictionarySetObject(v3, "304", dialogType);

  dualAction = [(SSMetricsDialogEvent *)self dualAction];
  SSXPCDictionarySetObject(v3, "311", dualAction);

  eventType = [(SSMetricsMutableEvent *)self eventType];
  SSXPCDictionarySetObject(v3, "305", eventType);

  message = [(SSMetricsDialogEvent *)self message];
  SSXPCDictionarySetObject(v3, "306", message);

  result = [(SSMetricsDialogEvent *)self result];
  SSXPCDictionarySetObject(v3, "307", result);

  targetId = [(SSMetricsDialogEvent *)self targetId];
  SSXPCDictionarySetObject(v3, "308", targetId);

  userActions = [(SSMetricsDialogEvent *)self userActions];
  SSXPCDictionarySetObject(v3, "309", userActions);

  userAgent = [(SSMetricsMutableEvent *)self userAgent];
  SSXPCDictionarySetObject(v3, "310", userAgent);

  return v3;
}

- (SSMetricsDialogEvent)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v32.receiver = self;
    v32.super_class = SSMetricsDialogEvent;
    v6 = [(SSMetricsBaseEvent *)&v32 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "300", v8);
      [(SSMetricsDialogEvent *)v6 setActionType:v9];

      v10 = objc_opt_class();
      v11 = SSXPCDictionaryCopyObjectWithClass(v5, "301", v10);
      [(SSMetricsDialogEvent *)v6 setActionURL:v11];

      v12 = objc_opt_class();
      v13 = SSXPCDictionaryCopyObjectWithClass(v5, "302", v12);
      [(SSMetricsDialogEvent *)v6 setDetails:v13];

      v14 = objc_opt_class();
      v15 = SSXPCDictionaryCopyObjectWithClass(v5, "303", v14);
      [(SSMetricsDialogEvent *)v6 setDialogId:v15];

      v16 = objc_opt_class();
      v17 = SSXPCDictionaryCopyObjectWithClass(v5, "304", v16);
      [(SSMetricsDialogEvent *)v6 setDialogType:v17];

      v18 = objc_opt_class();
      v19 = SSXPCDictionaryCopyObjectWithClass(v5, "311", v18);
      [(SSMetricsDialogEvent *)v6 setDualAction:v19];

      v20 = objc_opt_class();
      v21 = SSXPCDictionaryCopyObjectWithClass(v5, "305", v20);
      [(SSMetricsMutableEvent *)v6 setEventType:v21];

      v22 = objc_opt_class();
      v23 = SSXPCDictionaryCopyObjectWithClass(v5, "306", v22);
      [(SSMetricsDialogEvent *)v6 setMessage:v23];

      v24 = objc_opt_class();
      v25 = SSXPCDictionaryCopyObjectWithClass(v5, "307", v24);
      [(SSMetricsDialogEvent *)v6 setResult:v25];

      v26 = objc_opt_class();
      v27 = SSXPCDictionaryCopyObjectWithClass(v5, "308", v26);
      [(SSMetricsDialogEvent *)v6 setTargetId:v27];

      v28 = objc_opt_class();
      v29 = SSXPCDictionaryCopyObjectWithClass(v5, "309", v28);
      [(SSMetricsDialogEvent *)v6 setUserActions:v29];

      v30 = objc_opt_class();
      v31 = SSXPCDictionaryCopyObjectWithClass(v5, "310", v30);
      [(SSMetricsMutableEvent *)v6 setUserAgent:v31];
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end