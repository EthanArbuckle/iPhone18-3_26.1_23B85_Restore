@interface SSSilentEnrollment
- (SSSilentEnrollment)initWithSilentEnrollmentContext:(id)context;
- (SSSilentEnrollment)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
@end

@implementation SSSilentEnrollment

- (SSSilentEnrollment)initWithSilentEnrollmentContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SSSilentEnrollment;
  v6 = [(SSRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  context = [(SSSilentEnrollment *)self context];
  accountIdentifier = [context accountIdentifier];
  SSXPCDictionarySetObject(v3, "0", accountIdentifier);

  context2 = [(SSSilentEnrollment *)self context];
  headerADSID = [context2 headerADSID];
  SSXPCDictionarySetObject(v3, "1", headerADSID);

  context3 = [(SSSilentEnrollment *)self context];
  headerGSToken = [context3 headerGSToken];
  SSXPCDictionarySetObject(v3, "2", headerGSToken);

  context4 = [(SSSilentEnrollment *)self context];
  headerGuid = [context4 headerGuid];
  SSXPCDictionarySetObject(v3, "3", headerGuid);

  context5 = [(SSSilentEnrollment *)self context];
  headerMMeClientInfo = [context5 headerMMeClientInfo];
  SSXPCDictionarySetObject(v3, "4", headerMMeClientInfo);

  context6 = [(SSSilentEnrollment *)self context];
  headerMMeDeviceId = [context6 headerMMeDeviceId];
  SSXPCDictionarySetObject(v3, "5", headerMMeDeviceId);

  context7 = [(SSSilentEnrollment *)self context];
  parameters = [context7 parameters];
  SSXPCDictionarySetObject(v3, "7", parameters);

  context8 = [(SSSilentEnrollment *)self context];
  uRLString = [context8 URLString];
  SSXPCDictionarySetObject(v3, "6", uRLString);

  return v3;
}

- (SSSilentEnrollment)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v6 = [(SSRequest *)self init];
    if (!v6)
    {
      goto LABEL_5;
    }

    v8 = objc_alloc_init(SSSilentEnrollmentContext);
    context = v6->_context;
    v6->_context = v8;

    v10 = v6->_context;
    v11 = objc_opt_class();
    v12 = SSXPCDictionaryCopyObjectWithClass(v5, "0", v11);
    [(SSSilentEnrollmentContext *)v10 setAccountIdentifier:v12];

    v13 = v6->_context;
    v14 = objc_opt_class();
    v15 = SSXPCDictionaryCopyObjectWithClass(v5, "1", v14);
    [(SSSilentEnrollmentContext *)v13 setHeaderADSID:v15];

    v16 = v6->_context;
    v17 = objc_opt_class();
    v18 = SSXPCDictionaryCopyObjectWithClass(v5, "2", v17);
    [(SSSilentEnrollmentContext *)v16 setHeaderGSToken:v18];

    v19 = v6->_context;
    v20 = objc_opt_class();
    v21 = SSXPCDictionaryCopyObjectWithClass(v5, "3", v20);
    [(SSSilentEnrollmentContext *)v19 setHeaderGuid:v21];

    v22 = v6->_context;
    v23 = objc_opt_class();
    v24 = SSXPCDictionaryCopyObjectWithClass(v5, "4", v23);
    [(SSSilentEnrollmentContext *)v22 setHeaderMMeClientInfo:v24];

    v25 = v6->_context;
    v26 = objc_opt_class();
    v27 = SSXPCDictionaryCopyObjectWithClass(v5, "5", v26);
    [(SSSilentEnrollmentContext *)v25 setHeaderMMeDeviceId:v27];

    v28 = v6->_context;
    v29 = objc_opt_class();
    v30 = SSXPCDictionaryCopyObjectWithClass(v5, "7", v29);
    [(SSSilentEnrollmentContext *)v28 setParameters:v30];

    v31 = v6->_context;
    v32 = objc_opt_class();
    self = SSXPCDictionaryCopyObjectWithClass(v5, "6", v32);
    [(SSSilentEnrollmentContext *)v31 setURLString:self];
  }

  else
  {
    v6 = 0;
  }

LABEL_5:
  return v6;
}

@end