@interface VSApplicationControllerRequestFactory
+ (id)_attributeQuerySAMLRequestStringWithAttributeNames:(id)a3 channelID:(id)a4 authenticationToken:(id)a5 error:(id *)a6;
+ (id)_logoutSAMLRequestStringWithError:(id *)a3;
- (id)STBOptOutApplicationControllerRequest;
- (id)accountMetadataApplicationControllerRequestWithAccountMetadataRequest:(id)a3 authenticationToken:(id)a4;
- (id)logoutApplicationControllerRequestWithAuthenticationToken:(id)a3;
- (id)silentAuthenticationApplicationControllerRequest;
@end

@implementation VSApplicationControllerRequestFactory

- (id)silentAuthenticationApplicationControllerRequest
{
  v2 = objc_alloc_init(VSApplicationControllerRequest);
  [(VSApplicationControllerRequest *)v2 setType:2];

  return v2;
}

- (id)accountMetadataApplicationControllerRequestWithAccountMetadataRequest:(id)a3 authenticationToken:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 attributeNames];
  v8 = [v6 channelIdentifier];
  v9 = [v6 verificationToken];

  if ([v5 isOpaque])
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_opt_class();
    v12 = [v5 body];
    v10 = [v11 _attributeQuerySAMLRequestStringWithAttributeNames:v7 channelID:v8 authenticationToken:v12 error:0];
  }

  v13 = objc_alloc_init(VSApplicationControllerRequest);
  [(VSApplicationControllerRequest *)v13 setType:3];
  [(VSApplicationControllerRequest *)v13 setSAMLRequest:v10];
  v14 = [v5 body];
  [(VSApplicationControllerRequest *)v13 setAuthenticationToken:v14];

  [(VSApplicationControllerRequest *)v13 setRequestorVerificationToken:v9];
  [(VSApplicationControllerRequest *)v13 setAttributeNames:v7];

  return v13;
}

- (id)logoutApplicationControllerRequestWithAuthenticationToken:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _logoutSAMLRequestStringWithError:0];
  v5 = objc_alloc_init(VSApplicationControllerRequest);
  [(VSApplicationControllerRequest *)v5 setType:4];
  [(VSApplicationControllerRequest *)v5 setSAMLRequest:v4];
  v6 = [v3 body];

  [(VSApplicationControllerRequest *)v5 setAuthenticationToken:v6];

  return v5;
}

- (id)STBOptOutApplicationControllerRequest
{
  v2 = objc_alloc_init(VSApplicationControllerRequest);
  [(VSApplicationControllerRequest *)v2 setType:5];

  return v2;
}

+ (id)_attributeQuerySAMLRequestStringWithAttributeNames:(id)a3 channelID:(id)a4 authenticationToken:(id)a5 error:(id *)a6
{
  v7 = [VSSAMLRequestFactory attributeQueryWithAttributeNames:a3 channelID:a4 authNResponse:a5 error:?];
  v8 = [v7 xmlString:a6];

  return v8;
}

+ (id)_logoutSAMLRequestStringWithError:(id *)a3
{
  v4 = [VSSAMLRequestFactory logoutRequestWithError:?];
  v5 = [v4 xmlString:a3];

  return v5;
}

@end