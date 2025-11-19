@interface PKWebServiceRequest
+ (id)_HTTPBodyWithDictionary:(id)a3;
- (NSArray)diagnosticReasons;
- (PKWebServiceRequest)initWithCoder:(id)a3;
- (id)_murlRequestWithServiceURL:(id)a3 endpointComponents:(id)a4 queryParameters:(id)a5 appleAccountInformation:(id)a6;
- (id)_murlRequestWithURL:(id)a3;
- (id)_murlRequestWithURL:(id)a3 appleAccountInformation:(id)a4;
- (void)addDiagnosticReason:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDiagnosticReasons:(id)a3;
@end

@implementation PKWebServiceRequest

- (PKWebServiceRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKWebServiceRequest;
  v5 = [(PKWebServiceRequest *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"boundInterfaceIdentifier"];
    boundInterfaceIdentifier = v5->_boundInterfaceIdentifier;
    v5->_boundInterfaceIdentifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"diagnosticReasonsList"];
    diagnosticReasonsList = v5->_diagnosticReasonsList;
    v5->_diagnosticReasonsList = v11;

    v5->_cachePolicyOverride = [v4 decodeIntegerForKey:@"cachePolicyOverride"];
    [v4 decodeDoubleForKey:@"timeoutOverride"];
    v5->_timeoutOverride = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  boundInterfaceIdentifier = self->_boundInterfaceIdentifier;
  v5 = a3;
  [v5 encodeObject:boundInterfaceIdentifier forKey:@"boundInterfaceIdentifier"];
  [v5 encodeObject:self->_diagnosticReasonsList forKey:@"diagnosticReasonsList"];
  [v5 encodeInteger:self->_cachePolicyOverride forKey:@"cachePolicyOverride"];
  [v5 encodeDouble:@"timeoutOverride" forKey:self->_timeoutOverride];
}

+ (id)_HTTPBodyWithDictionary:(id)a3
{
  if (a3)
  {
    v6 = 0;
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a3 options:1 error:&v6];
    v4 = v6;
    if (!v3)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Could not create ; data for %@: %@", objc_opt_class(), v4}];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)addDiagnosticReason:(id)a3
{
  v4 = a3;
  if (v4)
  {
    diagnosticReasonsList = self->_diagnosticReasonsList;
    v8 = v4;
    if (!diagnosticReasonsList)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = self->_diagnosticReasonsList;
      self->_diagnosticReasonsList = v6;

      diagnosticReasonsList = self->_diagnosticReasonsList;
    }

    [(NSMutableArray *)diagnosticReasonsList addObject:v8];
    v4 = v8;
  }
}

- (void)setDiagnosticReasons:(id)a3
{
  v4 = [a3 mutableCopy];
  diagnosticReasonsList = self->_diagnosticReasonsList;
  self->_diagnosticReasonsList = v4;
}

- (NSArray)diagnosticReasons
{
  v2 = [(NSMutableArray *)self->_diagnosticReasonsList copy];

  return v2;
}

- (id)_murlRequestWithURL:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "Warning: No url passed when creating NSMutableURLRequest. The NSURLRequest should not be performed while the URL remains nil.", v12, 2u);
    }
  }

  v6 = [MEMORY[0x1E695AC18] requestWithURL:v4];
  v7 = +[PKPaymentDevice clientInfoHTTPHeader];
  [v6 setValue:v7 forHTTPHeaderField:@"X-Apple-Client-Info"];

  v8 = +[PKPaymentDevice clientHardwarePlatformInfoHTTPHeader];
  if (v8)
  {
    [v6 setValue:v8 forHTTPHeaderField:@"x-apple-soc-type"];
  }

  if (os_variant_has_internal_ui())
  {
    [v6 setValue:@"true" forHTTPHeaderField:@"X-Apple-Internal-Install"];
  }

  if ([(NSMutableArray *)self->_diagnosticReasonsList count])
  {
    v9 = [(NSMutableArray *)self->_diagnosticReasonsList componentsJoinedByString:@", "];
    if (v9)
    {
      [v6 setValue:v9 forHTTPHeaderField:@"X-Apple-Diagnostic-Reasons"];
    }
  }

  if (self->_cachePolicyOverride)
  {
    [v6 setCachePolicy:?];
  }

  if (self->_timeoutOverride > 0.0)
  {
    [v6 setTimeoutInterval:?];
  }

  sourceApplicationIdentifier = self->_sourceApplicationIdentifier;
  if (sourceApplicationIdentifier)
  {
    [v6 setValue:sourceApplicationIdentifier forHTTPHeaderField:@"x-apple-forwarded-for-application-identifier"];
  }

  [v6 setBoundInterfaceIdentifier:self->_boundInterfaceIdentifier];

  return v6;
}

- (id)_murlRequestWithURL:(id)a3 appleAccountInformation:(id)a4
{
  v6 = a4;
  v7 = [(PKWebServiceRequest *)self _murlRequestWithURL:a3];
  v8 = [v6 authorizationHeader];

  if (v8)
  {
    [v7 setValue:v8 forHTTPHeaderField:@"Authorization"];
  }

  v9 = [MEMORY[0x1E695DF58] pk_deviceLanguage];
  if (![(__CFString *)v9 length])
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Error: No device language returned. Defaulting to en", v12, 2u);
    }

    v9 = @"en";
  }

  [v7 setValue:v9 forHTTPHeaderField:@"Accept-Language"];

  return v7;
}

- (id)_murlRequestWithServiceURL:(id)a3 endpointComponents:(id)a4 queryParameters:(id)a5 appleAccountInformation:(id)a6
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v40 = a5;
  v36 = a6;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    do
    {
      v14 = 0;
      v15 = v9;
      do
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v45 + 1) + 8 * v14);
        v17 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
        v18 = [v16 stringByAddingPercentEncodingWithAllowedCharacters:v17];
        v9 = [v15 URLByAppendingPathComponent:v18];

        ++v14;
        v15 = v9;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v12);
  }

  v38 = v10;
  v19 = [MEMORY[0x1E696AD60] string];
  v20 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [v40 allKeys];
  v21 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v42;
    v24 = @"?";
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v42 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v41 + 1) + 8 * i);
        v27 = [v26 stringByAddingPercentEncodingWithAllowedCharacters:v20];
        v28 = [v40 objectForKey:v26];
        v29 = [v28 stringByAddingPercentEncodingWithAllowedCharacters:v20];

        [v19 appendFormat:@"%@%@=%@", v24, v27, v29];
        v24 = @"&";
      }

      v22 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v22);
  }

  v30 = [v9 absoluteString];
  v31 = MEMORY[0x1E695DFF8];
  v32 = [v30 stringByAppendingString:v19];
  v33 = [v31 URLWithString:v32];

  v34 = [(PKWebServiceRequest *)self _murlRequestWithURL:v33 appleAccountInformation:v36];

  return v34;
}

@end