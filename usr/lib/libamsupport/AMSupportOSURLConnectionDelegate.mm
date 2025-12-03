@interface AMSupportOSURLConnectionDelegate
- (AMSupportOSURLConnectionDelegate)init;
- (AMSupportOSURLConnectionDelegate)initWithData:(id)data Options:(id)options;
- (id)waitForResponseOrError:(id *)error;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didReceiveResponse:(id)response;
- (void)connection:(id)connection willSendRequestForAuthenticationChallenge:(id)challenge;
- (void)connectionDidFinishLoading:(id)loading;
- (void)dealloc;
@end

@implementation AMSupportOSURLConnectionDelegate

- (AMSupportOSURLConnectionDelegate)init
{
  v3 = [MEMORY[0x29EDB8DF8] dataWithCapacity:0];

  return [(AMSupportOSURLConnectionDelegate *)self initWithData:v3 Options:0];
}

- (AMSupportOSURLConnectionDelegate)initWithData:(id)data Options:(id)options
{
  v17 = *MEMORY[0x29EDCA608];
  AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate initWithData:Options:]", "init-ing delegate with data=%@ options=%@", options, v4, v5, v6, v7, data);
  v16.receiver = self;
  v16.super_class = AMSupportOSURLConnectionDelegate;
  v11 = [(AMSupportOSURLConnectionDelegate *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->requestComplete = 0;
    v11->options = options;
    v12->response = 0;
    dataCopy = data;
    v12->_data = dataCopy;
    [(NSMutableData *)dataCopy setLength:0];
  }

  v14 = *MEMORY[0x29EDCA608];
  return v12;
}

- (void)dealloc
{
  v11 = *MEMORY[0x29EDCA608];
  AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate dealloc]", "dealloc-ing delegate", v2, v3, v4, v5, v6, v9);

  self->response = 0;
  self->_data = 0;

  self->_error = 0;
  v10.receiver = self;
  v10.super_class = AMSupportOSURLConnectionDelegate;
  [(AMSupportOSURLConnectionDelegate *)&v10 dealloc];
  v8 = *MEMORY[0x29EDCA608];
}

- (id)waitForResponseOrError:(id *)error
{
  v5 = *MEMORY[0x29EDB8CC0];
  do
  {
    if (self->requestComplete)
    {
      break;
    }

    currentRunLoop = [MEMORY[0x29EDB8E48] currentRunLoop];
  }

  while (([currentRunLoop runMode:v5 beforeDate:{objc_msgSend(MEMORY[0x29EDB8DB0], "distantFuture")}] & 1) != 0);
  error = self->_error;
  if (!error)
  {
    return self->response;
  }

  if (!error)
  {
    return 0;
  }

  errorCopy = error;
  result = 0;
  *error = errorCopy;
  return result;
}

- (void)connection:(id)connection willSendRequestForAuthenticationChallenge:(id)challenge
{
  keys[1] = *MEMORY[0x29EDCA608];
  protectionSpace = [objc_msgSend(challenge protectionSpace];
  AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Authentication challenge received.  Method: %@", v7, v8, v9, v10, v11, protectionSpace);
  if ([challenge previousFailureCount] >= 1)
  {
    [objc_msgSend(challenge "sender")];
    v17 = *MEMORY[0x29EDCA608];

    AMSupportLogInternal(3, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Multiple challenge failures.  Aborting.", v12, v13, v14, v15, v16, v113);
    return;
  }

  if ([protectionSpace isEqual:*MEMORY[0x29EDB84E0]] && -[NSDictionary objectForKey:](self->options, "objectForKey:", @"ClientIdentity"))
  {
    AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Received client certificate challenge.", v18, v19, v20, v21, v22, v97);
    v23 = [(NSDictionary *)self->options objectForKey:@"ClientIdentity"];
    items = 0;
    v24 = [(NSDictionary *)self->options objectForKey:@"ClientIdentityPassphrase"];
    v25 = &stru_2A1EE58A8;
    v26 = *MEMORY[0x29EDBBC50];
    if (v24)
    {
      v25 = v24;
    }

    values = v25;
    keys[0] = v26;
    v27 = CFDictionaryCreate(0, keys, &values, 1, 0, 0);
    Length = CFDataGetLength(v23);
    AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "P12 Identity data length=%d", v29, v30, v31, v32, v33, Length);
    v34 = SecPKCS12Import(v23, v27, &items);
    CFRelease(v27);
    if (!v34)
    {
      AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Successfully imported PKCS12 identity", v35, v36, v37, v38, v39, v98);
      ValueAtIndex = CFArrayGetValueAtIndex(items, 0);
      Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x29EDBBC58]);
      certificateRef = 0;
      SecIdentityCopyCertificate(Value, &certificateRef);
      v109 = certificateRef;
      v57 = CFArrayCreate(0, &v109, 1, 0);
      CFRelease(certificateRef);
      v58 = [MEMORY[0x29EDB8508] credentialWithIdentity:Value certificates:v57 persistence:2];
      CFRelease(v57);
      [objc_msgSend(challenge "sender")];
      AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Returned credentials for challenge.", v59, v60, v61, v62, v63, v99);
LABEL_41:
      v95 = *MEMORY[0x29EDCA608];
      return;
    }

    AMSupportLogInternal(3, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Unable to import client identity, aborting challenge.", v35, v36, v37, v38, v39, v98);
    sender = [challenge sender];
    challengeCopy = challenge;
LABEL_40:
    [sender cancelAuthenticationChallenge:challengeCopy];
    goto LABEL_41;
  }

  if ([protectionSpace isEqual:*MEMORY[0x29EDB84E8]])
  {
    v42 = [(NSDictionary *)self->options objectForKey:@"DisableSSLValidation"];
    if ([v42 isEqual:{objc_msgSend(MEMORY[0x29EDBA070], "numberWithBool:", 1)}])
    {
      AMSupportLogInternal(6, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "SSL validation disabled.  Attempting to continue without authentication.", v43, v44, v45, v46, v47, v97);
      sender2 = [challenge sender];
      v49 = [MEMORY[0x29EDB8508] credentialForTrust:{objc_msgSend(objc_msgSend(challenge, "protectionSpace"), "serverTrust")}];
      v50 = *MEMORY[0x29EDCA608];

      [sender2 useCredential:v49 forAuthenticationChallenge:challenge];
      return;
    }

    [(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || ([(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"], objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v52 = [(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"];
      challengeCopy2 = challenge;
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v52 = [MEMORY[0x29EDB8D80] arrayWithObject:{-[NSDictionary objectForKey:](self->options, "objectForKey:", @"TrustedServerCAs"}];
        }

        else
        {
          v52 = 0;
        }
      }

      v64 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v52, "count")}];
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v65 = [v52 countByEnumeratingWithState:&v105 objects:v104 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v106;
        v68 = *MEMORY[0x29EDB8ED8];
        do
        {
          for (i = 0; i != v66; ++i)
          {
            if (*v106 != v67)
            {
              objc_enumerationMutation(v52);
            }

            v70 = *(*(&v105 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v71 = SecCertificateCreateWithData(v68, v70);
              if (v71)
              {
                v77 = v71;
                [v64 addObject:v71];
                CFRelease(v77);
              }

              else
              {
                AMSupportLogInternal(4, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "trusted certificate could not be loaded %@", v72, v73, v74, v75, v76, v70);
              }
            }
          }

          v66 = [v52 countByEnumeratingWithState:&v105 objects:v104 count:16];
        }

        while (v66);
      }

      v78 = [objc_msgSend(challengeCopy2 "protectionSpace")];
      LODWORD(items) = 0;
      AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Attempting trust evaluate", v79, v80, v81, v82, v83, v97);
      v89 = AMSupportX509ChainEvaluateTrust(v78, v64, &items, v84, v85, v86, v87, v88);
      if (v89)
      {
        AMSupportLogInternal(3, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "trust evaluation failed (OSStatus=%d)", v90, v91, v92, v93, v94, v89);
      }

      else
      {
        if (items == 4 || items == 1)
        {
          AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Trust evaluation succeeded, proceeding..", v90, v91, v92, v93, v94, v100);
          sender3 = [challengeCopy2 sender];
          [sender3 useCredential:objc_msgSend(MEMORY[0x29EDB8508] forAuthenticationChallenge:{"credentialForTrust:", v78), challengeCopy2}];
          goto LABEL_41;
        }

        AMSupportLogInternal(4, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "trust evaluation did not result in okay to proceed (result=%d)", v90, v91, v92, v93, v94, items);
      }

      sender = [challengeCopy2 sender];
      challengeCopy = challengeCopy2;
      goto LABEL_40;
    }
  }

  sender4 = [challenge sender];
  v54 = *MEMORY[0x29EDCA608];

  [sender4 performDefaultHandlingForAuthenticationChallenge:challenge];
}

- (void)connection:(id)connection didReceiveResponse:(id)response
{
  responseCopy = response;
  self->response = responseCopy;
  AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:didReceiveResponse:]", "Received response from URL: %@", v6, v7, v8, v9, v10, responseCopy);
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  v6 = [data length];
  AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:didReceiveData:]", "Receiving %d bytes of data from URL", v7, v8, v9, v10, v11, v6);
  data = self->_data;

  [(NSMutableData *)data appendData:data];
}

- (void)connectionDidFinishLoading:(id)loading
{
  v4 = [(NSMutableData *)self->_data length];
  AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connectionDidFinishLoading:]", "Finished loading URL.  Total bytes: %d", v5, v6, v7, v8, v9, v4);
  self->requestComplete = 1;
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  errorCopy = error;
  self->_error = error;
  AMSupportLogInternal(3, "[AMSupportOSURLConnectionDelegate connection:didFailWithError:]", "Connection error %@ for URL", v6, v7, v8, v9, v10, errorCopy);
  self->requestComplete = 1;
}

@end