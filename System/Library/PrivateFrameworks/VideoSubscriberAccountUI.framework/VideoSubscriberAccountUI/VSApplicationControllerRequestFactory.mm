@interface VSApplicationControllerRequestFactory
+ (id)_attributeQuerySAMLRequestStringWithAttributeNames:(id)names channelID:(id)d authenticationToken:(id)token error:(id *)error;
+ (id)_logoutSAMLRequestStringWithError:(id *)error;
- (id)STBOptOutApplicationControllerRequest;
- (id)accountMetadataApplicationControllerRequestWithAccountMetadataRequest:(id)request authenticationToken:(id)token;
- (id)logoutApplicationControllerRequestWithAuthenticationToken:(id)token;
- (id)silentAuthenticationApplicationControllerRequest;
@end

@implementation VSApplicationControllerRequestFactory

- (id)silentAuthenticationApplicationControllerRequest
{
  v2 = objc_alloc_init(VSApplicationControllerRequest);
  [(VSApplicationControllerRequest *)v2 setType:2];

  return v2;
}

- (id)accountMetadataApplicationControllerRequestWithAccountMetadataRequest:(id)request authenticationToken:(id)token
{
  tokenCopy = token;
  requestCopy = request;
  attributeNames = [requestCopy attributeNames];
  channelIdentifier = [requestCopy channelIdentifier];
  verificationToken = [requestCopy verificationToken];

  if ([tokenCopy isOpaque])
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_opt_class();
    body = [tokenCopy body];
    v10 = [v11 _attributeQuerySAMLRequestStringWithAttributeNames:attributeNames channelID:channelIdentifier authenticationToken:body error:0];
  }

  v13 = objc_alloc_init(VSApplicationControllerRequest);
  [(VSApplicationControllerRequest *)v13 setType:3];
  [(VSApplicationControllerRequest *)v13 setSAMLRequest:v10];
  body2 = [tokenCopy body];
  [(VSApplicationControllerRequest *)v13 setAuthenticationToken:body2];

  [(VSApplicationControllerRequest *)v13 setRequestorVerificationToken:verificationToken];
  [(VSApplicationControllerRequest *)v13 setAttributeNames:attributeNames];

  return v13;
}

- (id)logoutApplicationControllerRequestWithAuthenticationToken:(id)token
{
  tokenCopy = token;
  v4 = [objc_opt_class() _logoutSAMLRequestStringWithError:0];
  v5 = objc_alloc_init(VSApplicationControllerRequest);
  [(VSApplicationControllerRequest *)v5 setType:4];
  [(VSApplicationControllerRequest *)v5 setSAMLRequest:v4];
  body = [tokenCopy body];

  [(VSApplicationControllerRequest *)v5 setAuthenticationToken:body];

  return v5;
}

- (id)STBOptOutApplicationControllerRequest
{
  v2 = objc_alloc_init(VSApplicationControllerRequest);
  [(VSApplicationControllerRequest *)v2 setType:5];

  return v2;
}

+ (id)_attributeQuerySAMLRequestStringWithAttributeNames:(id)names channelID:(id)d authenticationToken:(id)token error:(id *)error
{
  v7 = [VSSAMLRequestFactory attributeQueryWithAttributeNames:names channelID:d authNResponse:token error:?];
  v8 = [v7 xmlString:error];

  return v8;
}

+ (id)_logoutSAMLRequestStringWithError:(id *)error
{
  v4 = [VSSAMLRequestFactory logoutRequestWithError:?];
  v5 = [v4 xmlString:error];

  return v5;
}

@end