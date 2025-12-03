@interface POWSTrustProcess
- (POWSTrustProcess)init;
- (id)createWSTrust13Request:(id)request;
- (id)createWSTrust13Response:(id)response;
- (id)createWSTrust2005Request:(id)request;
- (id)createWSTrust2005Response:(id)response;
- (id)createWSTrustFault:(id)fault;
- (id)parseMexResponse:(id)response namespaces:(id)namespaces policyXPath:(id)path action:(id)action;
- (id)parseWSTrustMexResponse:(id)response version:(unint64_t)version;
- (id)parseWSTrustRequest:(id)request version:(unint64_t)version;
- (id)parseWSTrustResponse:(id)response version:(unint64_t)version;
@end

@implementation POWSTrustProcess

- (POWSTrustProcess)init
{
  v3.receiver = self;
  v3.super_class = POWSTrustProcess;
  result = [(POWSTrustProcess *)&v3 init];
  if (result)
  {
    *&result->_parseWSTrust13 = 257;
  }

  return result;
}

- (id)createWSTrust13Request:(id)request
{
  v35[5] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v4 = objc_opt_new();
  endpointURN = [requestCopy endpointURN];
  v33 = v4;
  [v4 setAddress:endpointURN];

  v32 = objc_opt_new();
  [v32 setEndpointReference:v4];
  v6 = objc_opt_new();
  [v6 setKeyType:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512/Bearer"];
  [v6 setRequestType:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512/Issue"];
  [v6 setAppliesTo:v32];
  v7 = objc_opt_new();
  [v7 setStringValue:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue"];
  [v7 setMustUnderstand:@"1"];
  v31 = objc_opt_new();
  nonce = [requestCopy nonce];
  [v31 setStringValue:nonce];

  v9 = objc_opt_new();
  [v9 setAddress:@"http://www.w3.org/2005/08/addressing/anonymous"];
  v10 = objc_opt_new();
  [v10 setMustUnderstand:@"1"];
  v11 = [requestCopy to];
  [v10 setStringValue:v11];

  v12 = objc_opt_new();
  v13 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v16 = [v13 stringWithFormat:@"uuid-%@", uUIDString];
  [v12 setId:v16];

  userName = [requestCopy userName];
  [v12 setUsername:userName];

  v18 = SecCFAllocatorZeroize();
  password = [requestCopy password];
  mutableBytes = [password mutableBytes];
  password2 = [requestCopy password];

  v22 = CFStringCreateWithBytes(v18, mutableBytes, [password2 length], 0x8000100u, 0);
  [v12 setPassword:v22];

  v23 = objc_opt_new();
  [v23 setMustUnderstand:@"1"];
  [v23 setUsernameToken:v12];
  v24 = objc_opt_new();
  v35[0] = v7;
  v35[1] = v31;
  v35[2] = v9;
  v35[3] = v10;
  v35[4] = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:5];
  [v24 setHeader:v25];

  v34 = v6;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  [v24 setBody:v26];

  v27 = objc_opt_new();
  [v27 setEnvelope:v24];
  v28 = [v27 XMLDataWithOptions:1];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)createWSTrust2005Request:(id)request
{
  v35[5] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v4 = objc_opt_new();
  endpointURN = [requestCopy endpointURN];
  v33 = v4;
  [v4 setAddress:endpointURN];

  v32 = objc_opt_new();
  [v32 setEndpointReference:v4];
  v6 = objc_opt_new();
  [v6 setKeyType:@"http://schemas.xmlsoap.org/ws/2005/05/identity/NoProofKey"];
  [v6 setRequestType:@"http://schemas.xmlsoap.org/ws/2005/02/trust/Issue"];
  [v6 setAppliesTo:v32];
  v7 = objc_opt_new();
  [v7 setStringValue:@"http://schemas.xmlsoap.org/ws/2005/02/trust/RST/Issue"];
  [v7 setMustUnderstand:@"1"];
  v31 = objc_opt_new();
  nonce = [requestCopy nonce];
  [v31 setStringValue:nonce];

  v9 = objc_opt_new();
  [v9 setAddress:@"http://www.w3.org/2005/08/addressing/anonymous"];
  v10 = objc_opt_new();
  [v10 setMustUnderstand:@"1"];
  v11 = [requestCopy to];
  [v10 setStringValue:v11];

  v12 = objc_opt_new();
  v13 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v16 = [v13 stringWithFormat:@"uuid-%@", uUIDString];
  [v12 setId:v16];

  userName = [requestCopy userName];
  [v12 setUsername:userName];

  v18 = SecCFAllocatorZeroize();
  password = [requestCopy password];
  mutableBytes = [password mutableBytes];
  password2 = [requestCopy password];

  v22 = CFStringCreateWithBytes(v18, mutableBytes, [password2 length], 0x8000100u, 0);
  [v12 setPassword:v22];

  v23 = objc_opt_new();
  [v23 setMustUnderstand:@"1"];
  [v23 setUsernameToken:v12];
  v24 = objc_opt_new();
  v35[0] = v7;
  v35[1] = v31;
  v35[2] = v9;
  v35[3] = v10;
  v35[4] = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:5];
  [v24 setHeader:v25];

  v34 = v6;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  [v24 setBody:v26];

  v27 = objc_opt_new();
  [v27 setEnvelope:v24];
  v28 = [v27 XMLDataWithOptions:1];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)parseWSTrustRequest:(id)request version:(unint64_t)version
{
  if (version)
  {
    requestCopy = request;
    v6 = objc_alloc_init(POWSTrustRequest);
    v7 = [POXMLHelper loadXMLDocument:requestCopy];

    if (v7)
    {
      v8 = [[POXMLXPathContext alloc] initWithXMLContext:v7];
      [(POXMLXPathContext *)v8 registerNamespaces:@"s=http://www.w3.org/2003/05/soap-envelope a=http://www.w3.org/2005/08/addressing u=http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd o=http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd  wsu=http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd wsp=http://schemas.xmlsoap.org/ws/2004/09/policy saml=urn:oasis:names:tc:SAML:1.0:assertion"];
      v9 = @"http://schemas.xmlsoap.org/ws/2005/02/trust";
      if (version == 1)
      {
        v9 = @"http://docs.oasis-open.org/ws-sx/ws-trust/200512";
      }

      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", @"trust", v9];
      [(POXMLXPathContext *)v8 registerNamespaces:v10];

      v38 = [(POXMLXPathContext *)v8 evaluateXPath:@"//s:Envelope/s:Header/a:Action"];
      nodes = [v38 nodes];
      firstObject = [nodes firstObject];
      content = [firstObject content];
      [(POWSTrustRequest *)v6 setAction:content];

      v37 = [(POXMLXPathContext *)v8 evaluateXPath:@"//s:Envelope/s:Header/a:To"];
      nodes2 = [v37 nodes];
      firstObject2 = [nodes2 firstObject];
      content2 = [firstObject2 content];
      [(POWSTrustRequest *)v6 setTo:content2];

      v17 = [(POXMLXPathContext *)v8 evaluateXPath:@"//s:Envelope/s:Header/a:MessageID"];
      nodes3 = [v17 nodes];
      firstObject3 = [nodes3 firstObject];
      content3 = [firstObject3 content];
      [(POWSTrustRequest *)v6 setNonce:content3];

      v21 = [(POXMLXPathContext *)v8 evaluateXPath:@"//s:Envelope/s:Body/trust:RequestSecurityToken/wsp:AppliesTo/a:EndpointReference/a:Address"];
      nodes4 = [v21 nodes];
      firstObject4 = [nodes4 firstObject];
      content4 = [firstObject4 content];
      [(POWSTrustRequest *)v6 setEndpointURN:content4];

      v25 = [(POXMLXPathContext *)v8 evaluateXPath:@"//s:Envelope/s:Header/o:Security/o:UsernameToken/o:Username"];
      nodes5 = [v25 nodes];
      firstObject5 = [nodes5 firstObject];
      content5 = [firstObject5 content];
      [(POWSTrustRequest *)v6 setUserName:content5];

      v29 = [(POXMLXPathContext *)v8 evaluateXPath:@"//s:Envelope/s:Header/o:Security/o:UsernameToken/o:Password"];
      nodes6 = [v29 nodes];
      firstObject6 = [nodes6 firstObject];
      content6 = [firstObject6 content];

      v33 = [content6 dataUsingEncoding:4];
      v34 = [v33 mutableCopy];
      [(POWSTrustRequest *)v6 setPassword:v34];

      v35 = v6;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)createWSTrust13Response:(id)response
{
  v60[1] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v4 = objc_alloc(MEMORY[0x277CBEA80]);
  v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v6 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
  v57 = v5;
  [v5 setTimeZone:v6];

  v7 = objc_opt_new();
  [v7 setStringValue:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512/RSTRC/IssueFinal"];
  v56 = v7;
  [v7 setMustUnderstand:@"1"];
  v8 = objc_opt_new();
  nonce = [responseCopy nonce];
  v55 = v8;
  [v8 setStringValue:nonce];

  v10 = objc_opt_new();
  [v10 setId:@"_0"];
  created = [responseCopy created];
  [v10 setCreated:created];

  expires = [responseCopy expires];
  [v10 setExpires:expires];

  v13 = objc_opt_new();
  [v13 setMustUnderstand:@"1"];
  v53 = v13;
  v54 = v10;
  [v13 setTimestamp:v10];
  v14 = objc_opt_new();
  created2 = [responseCopy created];
  [v14 setCreated:created2];

  tokenExpires = [responseCopy tokenExpires];
  [v14 setExpires:tokenExpires];

  v17 = objc_opt_new();
  endpointURN = [responseCopy endpointURN];
  [v17 setAddress:endpointURN];

  v19 = objc_opt_new();
  v52 = v17;
  [v19 setEndpointReference:v17];
  v20 = objc_opt_new();
  assertion = [responseCopy assertion];
  [v20 setStringValue:assertion];

  v22 = objc_opt_new();
  keyIdentifier = [responseCopy keyIdentifier];
  [v22 setStringValue:keyIdentifier];

  [v22 setValueType:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.0#SAMLAssertionID"];
  v24 = objc_opt_new();
  v51 = v22;
  [v24 setKeyIdentifier:v22];
  tokenType = [responseCopy tokenType];
  LODWORD(v22) = [tokenType isEqualToString:@"urn:oasis:names:tc:SAML:1.0:assertion"];

  if (v22)
  {
    [v24 setTokenType:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV1.1"];
  }

  tokenType2 = [responseCopy tokenType];
  v27 = [tokenType2 isEqualToString:@"urn:oasis:names:tc:SAML:2.0:assertion"];

  if (v27)
  {
    [v24 setTokenType:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV2.0"];
  }

  v28 = objc_opt_new();
  [v28 setSecurityTokenReference:v24];
  v29 = objc_opt_new();
  keyIdentifier2 = [responseCopy keyIdentifier];
  [v29 setStringValue:keyIdentifier2];

  [v29 setValueType:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.0#SAMLAssertionID"];
  v31 = objc_opt_new();
  v50 = v29;
  [v31 setKeyIdentifier:v29];
  tokenType3 = [responseCopy tokenType];
  LODWORD(v29) = [tokenType3 isEqualToString:@"urn:oasis:names:tc:SAML:1.0:assertion"];

  if (v29)
  {
    [v31 setTokenType:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV1.1"];
  }

  tokenType4 = [responseCopy tokenType];
  v34 = [tokenType4 isEqualToString:@"urn:oasis:names:tc:SAML:2.0:assertion"];

  if (v34)
  {
    [v31 setTokenType:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV2.0"];
  }

  v35 = objc_opt_new();
  [v35 setSecurityTokenReference:v31];
  v49 = v31;
  v36 = objc_opt_new();
  [v36 setLifetime:v14];
  [v36 setAppliesTo:v19];
  [v36 setRequestedSecurityToken:v20];
  v48 = v28;
  [v36 setRequestedAttachedReference:v28];
  [v36 setRequestedUnattachedReference:v35];
  tokenType5 = [responseCopy tokenType];
  [v36 setTokenType:tokenType5];

  [v36 setKeyType:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512/Bearer"];
  [v36 setRequestType:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512/Issue"];
  v47 = v19;
  v38 = objc_opt_new();
  v60[0] = v36;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
  [v38 setRequestSecurityTokenResponse:v39];

  v40 = objc_opt_new();
  v59[0] = v56;
  v59[1] = v55;
  v59[2] = v53;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
  [v40 setHeader:v41];

  v58 = v38;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  [v40 setBody:v42];

  v43 = objc_opt_new();
  [v43 setEnvelope:v40];
  v44 = [v43 XMLDataWithOptions:1];

  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

- (id)createWSTrust2005Response:(id)response
{
  v62[3] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v4 = objc_alloc(MEMORY[0x277CBEA80]);
  v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v6 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
  v59 = v5;
  [v5 setTimeZone:v6];

  v7 = objc_opt_new();
  [v7 setStringValue:@"http://schemas.xmlsoap.org/ws/2005/02/trust/RSTR/Issue"];
  v58 = v7;
  [v7 setMustUnderstand:@"1"];
  v8 = objc_opt_new();
  nonce = [responseCopy nonce];
  v57 = v8;
  [v8 setStringValue:nonce];

  v10 = objc_opt_new();
  [v10 setId:@"_0"];
  created = [responseCopy created];
  [v10 setCreated:created];

  expires = [responseCopy expires];
  [v10 setExpires:expires];

  v13 = objc_opt_new();
  [v13 setMustUnderstand:@"1"];
  v55 = v13;
  v56 = v10;
  [v13 setTimestamp:v10];
  v14 = objc_opt_new();
  created2 = [responseCopy created];
  [v14 setCreated:created2];

  tokenExpires = [responseCopy tokenExpires];
  [v14 setExpires:tokenExpires];

  v17 = objc_opt_new();
  endpointURN = [responseCopy endpointURN];
  [v17 setAddress:endpointURN];

  v19 = objc_opt_new();
  v54 = v17;
  [v19 setEndpointReference:v17];
  v20 = objc_opt_new();
  assertion = [responseCopy assertion];
  v60 = v20;
  [v20 setStringValue:assertion];

  v22 = objc_opt_new();
  keyIdentifier = [responseCopy keyIdentifier];
  [v22 setStringValue:keyIdentifier];

  [v22 setValueType:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.0#SAMLAssertionID"];
  v24 = objc_opt_new();
  v53 = v22;
  [v24 setKeyIdentifier:v22];
  tokenType = [responseCopy tokenType];
  if ([tokenType isEqualToString:@"urn:oasis:names:tc:SAML:1.0:assertion"])
  {
  }

  else
  {
    tokenType2 = [responseCopy tokenType];
    v27 = [tokenType2 isEqualToString:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV1.1"];

    if (!v27)
    {
      goto LABEL_5;
    }
  }

  [v24 setTokenType:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV1.1"];
LABEL_5:
  tokenType3 = [responseCopy tokenType];
  if ([tokenType3 isEqualToString:@"urn:oasis:names:tc:SAML:2.0:assertion"])
  {
  }

  else
  {
    tokenType4 = [responseCopy tokenType];
    v30 = [tokenType4 isEqualToString:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV2.0"];

    if (!v30)
    {
      goto LABEL_9;
    }
  }

  [v24 setTokenType:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV2.0"];
LABEL_9:
  v31 = objc_opt_new();
  [v31 setSecurityTokenReference:v24];
  v32 = objc_opt_new();
  keyIdentifier2 = [responseCopy keyIdentifier];
  [v32 setStringValue:keyIdentifier2];

  [v32 setValueType:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.0#SAMLAssertionID"];
  v34 = objc_opt_new();
  v51 = v32;
  [v34 setKeyIdentifier:v32];
  tokenType5 = [responseCopy tokenType];
  if ([tokenType5 isEqualToString:@"urn:oasis:names:tc:SAML:1.0:assertion"])
  {
  }

  else
  {
    tokenType6 = [responseCopy tokenType];
    v37 = [tokenType6 isEqualToString:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV1.1"];

    if (!v37)
    {
      goto LABEL_13;
    }
  }

  [v34 setTokenType:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV1.1"];
LABEL_13:
  tokenType7 = [responseCopy tokenType];
  v52 = v24;
  if ([tokenType7 isEqualToString:@"urn:oasis:names:tc:SAML:2.0:assertion"])
  {
  }

  else
  {
    tokenType8 = [responseCopy tokenType];
    v40 = [tokenType8 isEqualToString:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV2.0"];

    if (!v40)
    {
      goto LABEL_17;
    }
  }

  [v34 setTokenType:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV2.0"];
LABEL_17:
  v41 = objc_opt_new();
  [v41 setSecurityTokenReference:v34];
  v42 = objc_opt_new();
  [v42 setLifetime:v14];
  [v42 setAppliesTo:v19];
  [v42 setRequestedSecurityToken:v60];
  [v42 setRequestedAttachedReference:v31];
  [v42 setRequestedUnattachedReference:v41];
  tokenType9 = [responseCopy tokenType];
  [v42 setTokenType:tokenType9];

  [v42 setKeyType:@"http://schemas.xmlsoap.org/ws/2005/05/identity/NoProofKey"];
  [v42 setRequestType:@"http://schemas.xmlsoap.org/ws/2005/02/trust/Issue"];
  v44 = objc_opt_new();
  v62[0] = v58;
  v62[1] = v57;
  v62[2] = v55;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:3];
  [v44 setHeader:v45];

  v61 = v42;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
  [v44 setBody:v46];

  v47 = objc_opt_new();
  [v47 setEnvelope:v44];
  v48 = [v47 XMLDataWithOptions:1];

  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

- (id)createWSTrustFault:(id)fault
{
  v46[2] = *MEMORY[0x277D85DE8];
  faultCopy = fault;
  v4 = objc_alloc(MEMORY[0x277CBEA80]);
  v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v6 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
  v44 = v5;
  [v5 setTimeZone:v6];

  v7 = objc_opt_new();
  [v7 setStringValue:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512/RSTRC/IssueFinal"];
  [v7 setMustUnderstand:@"1"];
  v8 = objc_opt_new();
  nonce = [faultCopy nonce];
  [v8 setStringValue:nonce];

  created = [faultCopy created];
  if (created)
  {

LABEL_4:
    v12 = objc_opt_new();
    [v12 setId:@"_0"];
    created2 = [faultCopy created];
    [v12 setCreated:created2];

    expires = [faultCopy expires];
    [v12 setExpires:expires];

    v15 = objc_opt_new();
    [v15 setMustUnderstand:@"1"];
    [v15 setTimestamp:v12];

    goto LABEL_5;
  }

  expires2 = [faultCopy expires];

  if (expires2)
  {
    goto LABEL_4;
  }

  v15 = 0;
LABEL_5:
  v16 = objc_opt_new();
  created3 = [faultCopy created];
  [v16 setCreated:created3];

  tokenExpires = [faultCopy tokenExpires];
  v42 = v16;
  [v16 setExpires:tokenExpires];

  v19 = objc_opt_new();
  endpointURN = [faultCopy endpointURN];
  [v19 setAddress:endpointURN];

  v40 = objc_opt_new();
  v41 = v19;
  [v40 setEndpointReference:v19];
  v21 = objc_opt_new();
  faultSubCodeValue = [faultCopy faultSubCodeValue];
  [v21 setValue:faultSubCodeValue];

  v23 = objc_opt_new();
  faultCodeValue = [faultCopy faultCodeValue];
  [v23 setValue:faultCodeValue];

  v39 = v21;
  [v23 setSubcode:v21];
  v25 = objc_opt_new();
  faultReason = [faultCopy faultReason];
  [v25 setStringValue:faultReason];

  v27 = objc_opt_new();
  [v27 setText:v25];
  v28 = objc_opt_new();
  [v28 setCode:v23];
  [v28 setReason:v27];
  v29 = objc_opt_new();
  v43 = v8;
  v46[0] = v7;
  v46[1] = v8;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
  [v29 setHeader:v30];

  v31 = v15;
  if (v15)
  {
    header = [v29 Header];
    v33 = [header arrayByAddingObject:v15];
    [v29 setHeader:v33];
  }

  v45 = v28;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  [v29 setBody:v34];

  v35 = objc_opt_new();
  [v35 setEnvelope:v29];
  v36 = [v35 XMLDataWithOptions:1];

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)parseWSTrustResponse:(id)response version:(unint64_t)version
{
  if (!version)
  {
    v6 = 0;
    goto LABEL_22;
  }

  responseCopy = response;
  v6 = objc_alloc_init(POWSTrustResponse);
  v7 = [POXMLHelper loadXMLDocument:responseCopy];

  v64 = v7;
  v8 = [[POXMLXPathContext alloc] initWithXMLContext:v7];
  [(POXMLXPathContext *)v8 registerNamespaces:@"s=http://www.w3.org/2003/05/soap-envelope a=http://www.w3.org/2005/08/addressing u=http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd o=http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd  wsu=http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd saml=urn:oasis:names:tc:SAML:1.0:assertion saml2=urn:oasis:names:tc:SAML:2.0:assertion"];
  v9 = @"http://schemas.xmlsoap.org/ws/2005/02/trust";
  if (version == 1)
  {
    v9 = @"http://docs.oasis-open.org/ws-sx/ws-trust/200512";
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", @"trust", v9];
  [(POXMLXPathContext *)v8 registerNamespaces:v10];

  v63 = [(POXMLXPathContext *)v8 evaluateXPath:@"//s:Envelope/s:Header/a:RelatesTo"];
  nodes = [v63 nodes];
  firstObject = [nodes firstObject];
  content = [firstObject content];
  [(POWSTrustResponse *)v6 setNonce:content];

  v14 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v14 setFormatOptions:3955];
  v15 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v15 setFormatOptions:1907];
  v62 = [(POXMLXPathContext *)v8 evaluateXPath:@"//s:Envelope/s:Header/o:Security/u:Timestamp/u:Created"];
  nodes2 = [v62 nodes];
  firstObject2 = [nodes2 firstObject];
  content2 = [firstObject2 content];

  v19 = [v14 dateFromString:content2];
  if (v19)
  {
    [(POWSTrustResponse *)v6 setCreated:v19];
  }

  else
  {
    v20 = [v15 dateFromString:content2];
    [(POWSTrustResponse *)v6 setCreated:v20];
  }

  v60 = [(POXMLXPathContext *)v8 evaluateXPath:@"//s:Envelope/s:Header/o:Security/u:Timestamp/u:Expires"];
  nodes3 = [v60 nodes];
  firstObject3 = [nodes3 firstObject];
  content3 = [firstObject3 content];

  v24 = [v14 dateFromString:content3];
  if (v24)
  {
    [(POWSTrustResponse *)v6 setExpires:v24];
  }

  else
  {
    v25 = [v15 dateFromString:content3];
    [(POWSTrustResponse *)v6 setExpires:v25];
  }

  v26 = [(POXMLXPathContext *)v8 evaluateXPath:@"//s:Envelope/s:Body/s:Fault"];
  -[POWSTrustResponse setFault:](v6, "setFault:", [v26 nodeCount] > 0);
  v61 = content2;
  v59 = content3;
  if (![(POWSTrustResponse *)v6 isFault])
  {
    if (version == 1)
    {
      v41 = [(POXMLXPathContext *)v8 evaluateXPath:@"//s:Envelope/s:Body/trust:RequestSecurityTokenResponseCollection/trust:RequestSecurityTokenResponse/trust:TokenType"];
      nodes4 = [v41 nodes];
      firstObject4 = [nodes4 firstObject];
      content4 = [firstObject4 content];

      v48 = @"//s:Envelope/s:Body/trust:RequestSecurityTokenResponseCollection/trust:RequestSecurityTokenResponse/trust:RequestedSecurityToken/saml2:Assertion";
      if (([content4 isEqualToString:@"urn:oasis:names:tc:SAML:2.0:assertion"] & 1) == 0)
      {
        v49 = [content4 isEqualToString:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV2.0"];
        v50 = @"//s:Envelope/s:Body/trust:RequestSecurityTokenResponseCollection/trust:RequestSecurityTokenResponse/trust:RequestedSecurityToken/saml:Assertion";
        goto LABEL_18;
      }
    }

    else
    {
      v41 = [(POXMLXPathContext *)v8 evaluateXPath:@"//s:Envelope/s:Body/trust:RequestSecurityTokenResponse/trust:TokenType"];
      nodes5 = [v41 nodes];
      firstObject5 = [nodes5 firstObject];
      content4 = [firstObject5 content];

      v48 = @"//s:Envelope/s:Body/trust:RequestSecurityTokenResponse/trust:RequestedSecurityToken/saml2:Assertion";
      if (([content4 isEqualToString:@"urn:oasis:names:tc:SAML:2.0:assertion"] & 1) == 0)
      {
        v49 = [content4 isEqualToString:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV2.0"];
        v50 = @"//s:Envelope/s:Body/trust:RequestSecurityTokenResponse/trust:RequestedSecurityToken/saml:Assertion";
LABEL_18:
        if (!v49)
        {
          v48 = v50;
        }
      }
    }

    v42 = [(POXMLXPathContext *)v8 evaluateXPath:v48];

    nodes6 = [v42 nodes];
    firstObject6 = [nodes6 firstObject];
    rawXMLString = [firstObject6 rawXMLString];
    [(POWSTrustResponse *)v6 setAssertion:rawXMLString];

    nodes7 = [v41 nodes];
    firstObject7 = [nodes7 firstObject];
    content5 = [firstObject7 content];
    [(POWSTrustResponse *)v6 setTokenType:content5];

    v43 = v64;
    goto LABEL_21;
  }

  v58 = [(POXMLXPathContext *)v8 evaluateXPath:@"//s:Envelope/s:Body/s:Fault/s:Reason/s:Text"];
  nodes8 = [v58 nodes];
  firstObject8 = [nodes8 firstObject];
  content6 = [firstObject8 content];
  [(POWSTrustResponse *)v6 setFaultReason:content6];

  v30 = [(POXMLXPathContext *)v8 evaluateXPath:@"//s:Envelope/s:Body/s:Fault/s:Code/s:Value"];
  nodes9 = [v30 nodes];
  firstObject9 = [nodes9 firstObject];
  content7 = [firstObject9 content];
  [(POWSTrustResponse *)v6 setFaultCodeValue:content7];

  nodes7 = [(POXMLXPathContext *)v8 evaluateXPath:@"/s:Envelope/s:Body/s:Fault/s:Code/s:Subcode/s:Value"];
  v34Nodes = [nodes7 nodes];
  firstObject10 = [v34Nodes firstObject];
  [firstObject10 content];
  v37 = v14;
  v38 = v26;
  v40 = v39 = v15;
  [(POWSTrustResponse *)v6 setFaultSubCodeValue:v40];

  v15 = v39;
  v26 = v38;
  v14 = v37;
  v41 = v30;
  v42 = v58;

  v43 = v64;
  firstObject7 = [v64 nameSpacePrefixForHref:@"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"];
  [(POWSTrustResponse *)v6 setSecurityExtensionPrefix:firstObject7];
LABEL_21:

LABEL_22:

  return v6;
}

- (id)parseWSTrustMexResponse:(id)response version:(unint64_t)version
{
  responseCopy = response;
  if (version == 2)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@=%@", @"wsdl=http://schemas.xmlsoap.org/wsdl/ wsp=http://schemas.xmlsoap.org/ws/2004/09/policy soap12=http://schemas.xmlsoap.org/wsdl/soap12/ wsa10=http://www.w3.org/2005/08/addressing", @"sp", @"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy"];
    v8 = [(POWSTrustProcess *)self parseMexResponse:responseCopy namespaces:v7 policyXPath:@"sp:SignedSupportingTokens/wsp:Policy/sp:UsernameToken/wsp:Policy/sp:WssUsernameToken10" action:@"http://schemas.xmlsoap.org/ws/2005/02/trust/RST/Issue"];
    if (-[POWSTrustProcess parseWSTrust2005](self, "parseWSTrust2005") && v8 && [v8 version] == 2)
    {
      v9 = PO_LOG_POWSTrustProcess();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v10 = "WSTrust 2005 found";
        v11 = buf;
        goto LABEL_13;
      }

LABEL_14:

      v8 = v8;
      v12 = v8;
LABEL_16:

      goto LABEL_18;
    }

LABEL_15:

    v12 = 0;
    goto LABEL_16;
  }

  if (version == 1)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@=%@", @"wsdl=http://schemas.xmlsoap.org/wsdl/ wsp=http://schemas.xmlsoap.org/ws/2004/09/policy soap12=http://schemas.xmlsoap.org/wsdl/soap12/ wsa10=http://www.w3.org/2005/08/addressing", @"sp", @"http://docs.oasis-open.org/ws-sx/ws-securitypolicy/200702"];
    v8 = [(POWSTrustProcess *)self parseMexResponse:responseCopy namespaces:v7 policyXPath:@"sp:SignedEncryptedSupportingTokens/wsp:Policy/sp:UsernameToken/wsp:Policy/sp:WssUsernameToken10" action:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue"];
    if (-[POWSTrustProcess parseWSTrust13](self, "parseWSTrust13") && v8 && [v8 version] == 1)
    {
      v9 = PO_LOG_POWSTrustProcess();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v10 = "WSTrust 1.3 found";
        v11 = &v15;
LABEL_13:
        _os_log_impl(&dword_25E8B1000, v9, OS_LOG_TYPE_INFO, v10, v11, 2u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (id)parseMexResponse:(id)response namespaces:(id)namespaces policyXPath:(id)path action:(id)action
{
  v119 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  namespacesCopy = namespaces;
  pathCopy = path;
  actionCopy = action;
  v11 = objc_alloc_init(POWSTrustMexResponse);
  v78 = responseCopy;
  v12 = [POXMLHelper loadXMLDocument:responseCopy];
  if (!v12)
  {
    v73 = __67__POWSTrustProcess_parseMexResponse_namespaces_policyXPath_action___block_invoke();
    v71 = 0;
    goto LABEL_86;
  }

  v79 = v11;
  v81 = v12;
  v13 = [[POXMLXPathContext alloc] initWithXMLContext:v12];
  v77 = namespacesCopy;
  [(POXMLXPathContext *)v13 registerNamespaces:namespacesCopy];
  v88 = v13;
  v14 = [(POXMLXPathContext *)v13 evaluateXPath:@"//wsdl:definitions/wsp:Policy/wsp:ExactlyOne/wsp:All"];
  v92 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v76 = v14;
  nodes = [v14 nodes];
  v16 = [nodes countByEnumeratingWithState:&v109 objects:v118 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v110;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v110 != v18)
        {
          objc_enumerationMutation(nodes);
        }

        v20 = *(*(&v109 + 1) + 8 * i);
        parent = [v20 parent];
        v21Parent = [parent parent];
        v23 = [v21Parent valueForProperty:@"Id"];

        v24 = [v20 evaluateXPath:pathCopy];
        if ([v24 nodeCount] >= 1)
        {
          [v92 addObject:v23];
        }
      }

      v17 = [nodes countByEnumeratingWithState:&v109 objects:v118 count:16];
    }

    while (v17);
  }

  if (![v92 count])
  {
    v72 = PO_LOG_POWSTrustProcess();
    namespacesCopy = v77;
    v11 = v79;
    v12 = v81;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E8B1000, v72, OS_LOG_TYPE_INFO, "no WSTrust policies found", buf, 2u);
    }

    v71 = 0;
    goto LABEL_85;
  }

  v12 = v81;
  if ([v92 count] >= 2)
  {
    v25 = PO_LOG_POWSTrustProcess();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E8B1000, v25, OS_LOG_TYPE_INFO, "more than one wstrust policy found", buf, 2u);
    }
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = v92;
  v85 = [obj countByEnumeratingWithState:&v105 objects:v117 count:16];
  if (!v85)
  {
    goto LABEL_79;
  }

  v84 = *v106;
  while (2)
  {
    for (j = 0; j != v85; ++j)
    {
      if (*v106 != v84)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v105 + 1) + 8 * j);
      v28 = PO_LOG_POWSTrustProcess();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v116 = v27;
        _os_log_impl(&dword_25E8B1000, v28, OS_LOG_TYPE_INFO, "checking %{public}@", buf, 0xCu);
      }

      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"//wsdl:definitions/wsdl:binding/wsp:PolicyReference[@URI=#%@]", v27];
      v30 = [(POXMLXPathContext *)v88 evaluateXPath:v29];
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v89 = v30;
      nodes2 = [v30 nodes];
      v32 = [nodes2 countByEnumeratingWithState:&v101 objects:v114 count:16];
      if (!v32)
      {

        v44 = 0;
        v49 = 0;
LABEL_57:
        v34 = PO_LOG_POWSTrustProcess();
        v63 = 1;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25E8B1000, v34, OS_LOG_TYPE_INFO, "no binding for found", buf, 2u);
        }

        v82 = 0;
        goto LABEL_75;
      }

      v33 = v32;
      v94 = nodes2;
      v91 = v27;
      v86 = v29;
      v87 = j;
      v34 = 0;
      v35 = *v102;
      do
      {
        v36 = 0;
        v37 = v34;
        do
        {
          if (*v102 != v35)
          {
            objc_enumerationMutation(v94);
          }

          v38 = *(*(&v101 + 1) + 8 * v36);
          parent2 = [v38 parent];
          v34 = [parent2 valueForProperty:@"name"];

          parent3 = [v38 parent];
          v41 = [parent3 evaluateXPath:@"soap12:binding"];

          if ([v41 nodeCount] < 1)
          {
            v44 = 0;
          }

          else
          {
            nodes3 = [v41 nodes];
            firstObject = [nodes3 firstObject];
            v44 = [firstObject valueForProperty:@"transport"];
          }

          parent4 = [v38 parent];
          v46 = [parent4 evaluateXPath:@"wsdl:operation/soap12:operation"];

          if ([v46 nodeCount] < 1)
          {
            v49 = 0;
          }

          else
          {
            nodes4 = [v46 nodes];
            firstObject2 = [nodes4 firstObject];
            v49 = [firstObject2 valueForProperty:@"soapAction"];
          }

          if ([v44 isEqualToString:@"http://schemas.xmlsoap.org/soap/http"])
          {
            if ([v49 isEqualToString:actionCopy])
            {

              goto LABEL_43;
            }
          }

          else
          {
            v50 = PO_LOG_POWSTrustProcess();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v116 = v91;
              _os_log_impl(&dword_25E8B1000, v50, OS_LOG_TYPE_INFO, "transport for %{public}@ not http, skipping", buf, 0xCu);
            }
          }

          ++v36;
          v37 = v34;
        }

        while (v33 != v36);
        v33 = [v94 countByEnumeratingWithState:&v101 objects:v114 count:16];
      }

      while (v33);
      v49 = 0;
      v44 = 0;
LABEL_43:

      if (!v34)
      {
        v12 = v81;
        v29 = v86;
        j = v87;
        goto LABEL_57;
      }

      v51 = [(POXMLXPathContext *)v88 evaluateXPath:@"//wsdl:definitions/wsdl:service/wsdl:port"];
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v83 = v51;
      nodes5 = [v51 nodes];
      v52 = [nodes5 countByEnumeratingWithState:&v97 objects:v113 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = 0;
        v95 = *v98;
        while (2)
        {
          for (k = 0; k != v53; ++k)
          {
            if (*v98 != v95)
            {
              objc_enumerationMutation(nodes5);
            }

            v56 = *(*(&v97 + 1) + 8 * k);
            v57 = [v56 valueForProperty:@"binding"];
            v58 = [MEMORY[0x277CCACA8] stringWithFormat:@":%@", v34];
            v59 = [v57 hasSuffix:v58];

            if (v59)
            {
              v60 = [v56 valueForProperty:@"name"];

              v61 = [v56 evaluateXPath:@"wsa10:EndpointReference/wsa10:Address"];
              if ([v61 nodeCount] > 0)
              {
                nodes6 = [v61 nodes];
                firstObject3 = [nodes6 firstObject];
                content = [firstObject3 content];

                v62 = content;
                goto LABEL_62;
              }

              v54 = v60;
            }
          }

          v53 = [nodes5 countByEnumeratingWithState:&v97 objects:v113 count:16];
          if (v53)
          {
            continue;
          }

          break;
        }

        v62 = 0;
        v60 = v54;
      }

      else
      {
        v60 = 0;
        v62 = 0;
      }

LABEL_62:

      lowercaseString = [v62 lowercaseString];
      v68 = [lowercaseString hasPrefix:@"https://"];

      v12 = v81;
      if (v68)
      {
        v63 = 0;
        j = v87;
        if (v62 && v49)
        {
          [(POWSTrustMexResponse *)v79 setEndpointURLString:v62];
          [(POWSTrustMexResponse *)v79 setPolicyName:v91];
          [(POWSTrustMexResponse *)v79 setBindingName:v34];
          [(POWSTrustMexResponse *)v79 setPortName:v60];
          [(POWSTrustMexResponse *)v79 setTransport:v44];
          if ([v49 isEqualToString:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue"])
          {
            v69 = 1;
          }

          else if ([v49 isEqualToString:@"http://schemas.xmlsoap.org/ws/2005/02/trust/RST/Issue"])
          {
            v69 = 2;
          }

          else
          {
            v69 = 0;
          }

          [(POWSTrustMexResponse *)v79 setVersion:v69];
          v82 = v79;
          v63 = 1;
        }
      }

      else
      {
        v70 = PO_LOG_POWSTrustProcess();
        j = v87;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v116 = v91;
          _os_log_impl(&dword_25E8B1000, v70, OS_LOG_TYPE_INFO, "url for %{public}@ not https, skipping", buf, 0xCu);
        }

        v63 = 5;
      }

      v29 = v86;
LABEL_75:

      if (v63 != 5 && v63)
      {
        namespacesCopy = v77;
        v11 = v79;
        v72 = obj;
        v71 = v82;
        goto LABEL_85;
      }
    }

    v85 = [obj countByEnumeratingWithState:&v105 objects:v117 count:16];
    if (v85)
    {
      continue;
    }

    break;
  }

LABEL_79:
  v71 = 0;
  namespacesCopy = v77;
  v11 = v79;
  v72 = obj;
LABEL_85:

LABEL_86:
  v74 = *MEMORY[0x277D85DE8];

  return v71;
}

id __67__POWSTrustProcess_parseMexResponse_namespaces_policyXPath_action___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to load mex response as XML."];
  v1 = PO_LOG_POWSTrustProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __61__POPrebootDeviceConfiguration_dataRepresentationForDisplay___block_invoke_cold_1(v0, v1);
  }

  return v0;
}

@end