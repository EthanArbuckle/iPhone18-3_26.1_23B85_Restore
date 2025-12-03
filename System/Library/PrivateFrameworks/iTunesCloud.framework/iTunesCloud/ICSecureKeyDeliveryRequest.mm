@interface ICSecureKeyDeliveryRequest
- (ICSecureKeyDeliveryRequest)init;
- (ICSecureKeyDeliveryRequest)initWithRequestContext:(id)context;
- (ICSecureKeyDeliveryRequest)initWithRequestContext:(id)context contentKeyRequest:(id)request;
- (ICSecureKeyDeliveryRequest)initWithRequestContext:(id)context resourceLoadingRequest:(id)request;
- (ICSecureKeyDeliveryRequest)initWithRequestContext:(id)context serverPlaybackContextData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)performWithResponseHandler:(id)handler;
@end

@implementation ICSecureKeyDeliveryRequest

- (void)performWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_alloc_init(ICSecureKeyDeliveryRequestOperation);
  [(ICSecureKeyDeliveryRequestOperation *)v6 setRequest:self];
  [(ICSecureKeyDeliveryRequestOperation *)v6 setResponseHandler:handlerCopy];

  v5 = [MEMORY[0x1E696ADC8] ic_sharedRequestOperationQueueWithQualityOfService:self->_qualityOfService];
  [v5 addOperation:v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 2, self->_certificateURL);
    objc_storeStrong(v5 + 3, self->_contentURI);
    v5[5] = self->_leaseActionType;
    objc_storeStrong(v5 + 4, self->_keyServerURL);
    v5[8] = self->_qualityOfService;
    objc_storeStrong(v5 + 6, self->_requestContext);
    v5[7] = self->_rentalID;
    *(v5 + 8) = self->_skippedRentalCheckout;
    *(v5 + 9) = self->_ITunesStoreRequest;
    v6 = MEMORY[0x1B8C781E0](self->_serverPlaybackContextDataCreationHandler);
    v7 = v5[9];
    v5[9] = v6;

    v8 = MEMORY[0x1B8C781E0](self->_asyncServerPlaybackContextDataCreationHandler);
    v9 = v5[10];
    v5[10] = v8;

    *(v5 + 10) = self->_shouldIncludeDeviceGUID;
    v5[11] = self->_requestProtocolType;
    *(v5 + 11) = self->_isOfflineDownload;
    objc_storeStrong(v5 + 12, self->_adamID);
    objc_storeStrong(v5 + 15, self->_resourceLoadingRequest);
    objc_storeStrong(v5 + 16, self->_contentKeyRequest);
    objc_storeStrong(v5 + 14, self->_serverPlaybackContextData);
    objc_storeStrong(v5 + 13, self->_accountDSID);
  }

  return v5;
}

- (id)description
{
  v22[7] = *MEMORY[0x1E69E9840];
  v18 = objc_alloc(MEMORY[0x1E696AD60]);
  v3 = objc_opt_class();
  v20 = NSStringFromClass(v3);
  if (self->_isOfflineDownload)
  {
    v4 = MEMORY[0x1E695E118];
  }

  else
  {
    v4 = MEMORY[0x1E695E110];
  }

  v22[0] = v4;
  v21[0] = @"isOfflineDownload";
  v21[1] = @"requestProtocolType";
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:self->_requestProtocolType];
  v22[1] = v19;
  v21[2] = @"contentURI";
  contentURI = self->_contentURI;
  null = contentURI;
  if (!contentURI)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17 = null;
  v22[2] = null;
  v21[3] = @"adamID";
  adamID = self->_adamID;
  null2 = adamID;
  if (!adamID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[3] = null2;
  v21[4] = @"certificateURL";
  certificateURL = self->_certificateURL;
  null3 = certificateURL;
  if (!certificateURL)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = null3;
  v21[5] = @"keyServerURL";
  keyServerURL = self->_keyServerURL;
  null4 = keyServerURL;
  if (!keyServerURL)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v22[5] = null4;
  v21[6] = @"leaseActionType";
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_leaseActionType];
  v22[6] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:7];
  v15 = [v18 initWithFormat:@"<%@: %p; params = %@>", v20, self, v14];

  if (keyServerURL)
  {
    if (certificateURL)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (certificateURL)
    {
LABEL_14:
      if (adamID)
      {
        goto LABEL_15;
      }

LABEL_21:

      if (contentURI)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  if (!adamID)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (contentURI)
  {
    goto LABEL_16;
  }

LABEL_22:

LABEL_16:

  return v15;
}

- (ICSecureKeyDeliveryRequest)initWithRequestContext:(id)context serverPlaybackContextData:(id)data
{
  dataCopy = data;
  v8 = [(ICSecureKeyDeliveryRequest *)self initWithRequestContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serverPlaybackContextData, data);
  }

  return v9;
}

- (ICSecureKeyDeliveryRequest)initWithRequestContext:(id)context contentKeyRequest:(id)request
{
  requestCopy = request;
  v8 = [(ICSecureKeyDeliveryRequest *)self initWithRequestContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contentKeyRequest, request);
    identifier = [requestCopy identifier];
    contentURI = v9->_contentURI;
    v9->_contentURI = identifier;
  }

  return v9;
}

- (ICSecureKeyDeliveryRequest)initWithRequestContext:(id)context resourceLoadingRequest:(id)request
{
  requestCopy = request;
  v8 = [(ICSecureKeyDeliveryRequest *)self initWithRequestContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_resourceLoadingRequest, request);
    request = [requestCopy request];
    v11 = [request URL];
    absoluteString = [v11 absoluteString];
    contentURI = v9->_contentURI;
    v9->_contentURI = absoluteString;
  }

  return v9;
}

- (ICSecureKeyDeliveryRequest)initWithRequestContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = ICSecureKeyDeliveryRequest;
  v6 = [(ICSecureKeyDeliveryRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_qualityOfService = 25;
    objc_storeStrong(&v6->_requestContext, context);
  }

  return v7;
}

- (ICSecureKeyDeliveryRequest)init
{
  v3 = [ICStoreRequestContext alloc];
  v4 = +[ICUserIdentity activeAccount];
  v5 = [(ICStoreRequestContext *)v3 initWithIdentity:v4];
  v6 = [(ICSecureKeyDeliveryRequest *)self initWithRequestContext:v5];

  return v6;
}

@end