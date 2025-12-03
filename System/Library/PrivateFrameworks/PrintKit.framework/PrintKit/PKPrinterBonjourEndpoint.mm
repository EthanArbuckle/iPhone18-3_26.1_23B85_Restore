@interface PKPrinterBonjourEndpoint
+ (id)endpointWithBonjourString:(id)string;
+ (id)endpointWithData:(id)data;
+ (id)endpointWithURL:(id)l;
+ (id)serviceFromEndpoint:(id)endpoint;
- (BOOL)isEqual:(id)equal;
- (BOOL)isIPPS;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)displayNameForPrintKitUI;
- (NSString)persistentNameRepresentationForPrintKitUI;
- (PKPrinterBonjourEndpoint)initWithBonjourString:(id)string provenance:(int)provenance provenanceIdentifier:(id)identifier;
- (PKPrinterBonjourEndpoint)initWithCoder:(id)coder;
- (PKPrinterBonjourEndpoint)initWithEndpoint:(id)endpoint provenance:(int)provenance provenanceIdentifier:(id)identifier;
- (PKPrinterBonjourEndpoint)initWithURL:(id)l txtRecord:(id)record provenance:(int)provenance provenanceIdentifier:(id)identifier;
- (id)dataRepresentation;
- (id)userCodableDictionary;
- (unint64_t)hash;
- (void)_resolveEndpoint:(id)endpoint;
- (void)_resolve_finish_resolvedURL:(id)l resolvedTXT:(id)t;
- (void)encodeWithCoder:(id)coder;
- (void)withResolvedTXT:(id)t;
- (void)withResolvedURL:(id)l;
@end

@implementation PKPrinterBonjourEndpoint

+ (id)endpointWithURL:(id)l
{
  lCopy = l;
  v4 = [[PKPrinterBonjourEndpoint alloc] initWithURL:lCopy txtRecord:0 provenance:0 provenanceIdentifier:0];

  return v4;
}

+ (id)endpointWithBonjourString:(id)string
{
  stringCopy = string;
  v4 = [[PKPrinterBonjourEndpoint alloc] initWithBonjourString:stringCopy provenance:0 provenanceIdentifier:0];

  return v4;
}

- (PKPrinterBonjourEndpoint)initWithEndpoint:(id)endpoint provenance:(int)provenance provenanceIdentifier:(id)identifier
{
  endpointCopy = endpoint;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = PKPrinterBonjourEndpoint;
  v10 = [(PKPrinterBonjourEndpoint *)&v21 init];
  v11 = v10;
  if (v10)
  {
    v10->_provenance = provenance;
    objc_storeStrong(&v10->_provenanceIdentifier, identifier);
    v12 = [MEMORY[0x277CD91C8] endpointWithCEndpoint:endpointCopy];
    nwEndpoint = v11->_nwEndpoint;
    v11->_nwEndpoint = v12;

    if (nw_endpoint_get_type(endpointCopy) == nw_endpoint_type_url)
    {
      url = nw_endpoint_get_url(endpointCopy);
      if (url)
      {
        v15 = PKURLWithUTF8String(url);
        resolvedURL = v11->_resolvedURL;
        v11->_resolvedURL = v15;
      }
    }

    v17 = nw_endpoint_copy_txt_record(endpointCopy);
    if (v17)
    {
      v18 = [PKTXTRecord txtRecordDictionaryForTxtRecord:v17];
      resolvedTXT = v11->_resolvedTXT;
      v11->_resolvedTXT = v18;
    }
  }

  return v11;
}

- (PKPrinterBonjourEndpoint)initWithURL:(id)l txtRecord:(id)record provenance:(int)provenance provenanceIdentifier:(id)identifier
{
  lCopy = l;
  recordCopy = record;
  identifierCopy = identifier;
  v23.receiver = self;
  v23.super_class = PKPrinterBonjourEndpoint;
  v13 = [(PKPrinterBonjourEndpoint *)&v23 init];
  v14 = v13;
  if (v13)
  {
    v13->_provenance = provenance;
    objc_storeStrong(&v13->_provenanceIdentifier, identifier);
    absoluteString = [lCopy absoluteString];
    url = nw_endpoint_create_url([absoluteString UTF8String]);

    v17 = [MEMORY[0x277CD91C8] endpointWithCEndpoint:url];
    nwEndpoint = v14->_nwEndpoint;
    v14->_nwEndpoint = v17;

    v19 = nw_endpoint_get_url(url);
    v20 = PKURLWithUTF8String(v19);
    resolvedURL = v14->_resolvedURL;
    v14->_resolvedURL = v20;

    objc_storeStrong(&v14->_resolvedTXT, record);
  }

  return v14;
}

- (PKPrinterBonjourEndpoint)initWithBonjourString:(id)string provenance:(int)provenance provenanceIdentifier:(id)identifier
{
  v38 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  identifierCopy = identifier;
  v35.receiver = self;
  v35.super_class = PKPrinterBonjourEndpoint;
  v10 = [(PKPrinterBonjourEndpoint *)&v35 init];
  v11 = v10;
  if (!v10)
  {
LABEL_18:
    v33 = v11;
    goto LABEL_21;
  }

  v10->_provenance = provenance;
  objc_storeStrong(&v10->_provenanceIdentifier, identifier);
  v12 = [stringCopy componentsSeparatedByString:@"."];
  if ([v12 count] <= 3)
  {
    v13 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v37 = stringCopy;
      _os_log_impl(&dword_25F5FC000, v13, OS_LOG_TYPE_ERROR, "Invalid Bonjour service: %{public}@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v14 = [v12 objectAtIndexedSubscript:0];
  v15 = MEMORY[0x277CCACA8];
  v16 = [v12 objectAtIndexedSubscript:1];
  v17 = [v12 objectAtIndexedSubscript:2];
  v18 = [v15 stringWithFormat:@"%@.%@", v16, v17];

  v19 = [stringCopy substringFromIndex:{objc_msgSend(v14, "length") + objc_msgSend(v18, "length") + 2}];
  v20 = v14;
  uTF8String = [v14 UTF8String];
  if (strlen(uTF8String) > 0xFF)
  {
    __assert_rtn("unescape", "PKPrinterBonjourEndpoint.mm", 72, "strlen(src) < dstLen");
  }

  v22 = buf;
  for (i = uTF8String; ; uTF8String = i)
  {
    v25 = *i++;
    v24 = v25;
    if (v25 == 92)
    {
      i = (uTF8String + 2);
      v24 = *(uTF8String + 1);
      if (v24 == 48)
      {
        break;
      }
    }

    if (!v24)
    {
      goto LABEL_16;
    }

LABEL_15:
    *v22++ = v24;
  }

  v26 = *i;
  if (*i && *(uTF8String + 3))
  {
    i = (uTF8String + 4);
    LOBYTE(v24) = *(uTF8String + 3) + 10 * v26 - 16;
    goto LABEL_15;
  }

LABEL_16:
  *v22 = 0;
  v27 = v18;
  uTF8String2 = [v18 UTF8String];
  v29 = v19;
  bonjour_service = nw_endpoint_create_bonjour_service(buf, uTF8String2, [v19 UTF8String]);
  if (bonjour_service)
  {
    v31 = [MEMORY[0x277CD91C8] endpointWithCEndpoint:bonjour_service];
    nwEndpoint = v11->_nwEndpoint;
    v11->_nwEndpoint = v31;

    goto LABEL_18;
  }

LABEL_20:
  v33 = 0;
LABEL_21:

  return v33;
}

- (PKPrinterBonjourEndpoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = PKPrinterBonjourEndpoint;
  v5 = [(PKPrinterBonjourEndpoint *)&v26 init];
  if (v5)
  {
    v5->_provenance = [coderCopy decodeIntegerForKey:@"provenance"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provenanceIdentifier"];
    provenanceIdentifier = v5->_provenanceIdentifier;
    v5->_provenanceIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
    nwEndpoint = v5->_nwEndpoint;
    v5->_nwEndpoint = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    resolvedURL = v5->_resolvedURL;
    v5->_resolvedURL = v10;

    v12 = objc_opt_class();
    v13 = [coderCopy decodeDictionaryWithKeysOfClass:v12 objectsOfClass:objc_opt_class() forKey:@"txt"];
    resolvedTXT = v5->_resolvedTXT;
    v5->_resolvedTXT = v13;

    if (!v5->_resolvedTXT)
    {
      copyCEndpoint = [(NWEndpoint *)v5->_nwEndpoint copyCEndpoint];
      v16 = nw_endpoint_copy_txt_record(copyCEndpoint);

      if (v16)
      {
        v17 = [PKTXTRecord txtRecordDictionaryForTxtRecord:v16];
        v18 = v5->_resolvedTXT;
        v5->_resolvedTXT = v17;
      }
    }

    if (!v5->_resolvedURL)
    {
      copyCEndpoint2 = [(NWEndpoint *)v5->_nwEndpoint copyCEndpoint];
      type = nw_endpoint_get_type(copyCEndpoint2);

      if (type == nw_endpoint_type_url)
      {
        copyCEndpoint3 = [(NWEndpoint *)v5->_nwEndpoint copyCEndpoint];
        url = nw_endpoint_get_url(copyCEndpoint3);

        if (url)
        {
          v23 = PKURLWithUTF8String(url);
          v24 = v5->_resolvedURL;
          v5->_resolvedURL = v23;
        }
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_provenance forKey:@"provenance"];
  provenanceIdentifier = self->_provenanceIdentifier;
  if (provenanceIdentifier)
  {
    [coderCopy encodeObject:provenanceIdentifier forKey:@"provenanceIdentifier"];
  }

  [coderCopy encodeObject:self->_nwEndpoint forKey:@"endpoint"];
  resolvedURL = self->_resolvedURL;
  if (resolvedURL)
  {
    [coderCopy encodeObject:resolvedURL forKey:@"url"];
  }

  resolvedTXT = self->_resolvedTXT;
  if (resolvedTXT)
  {
    [coderCopy encodeObject:resolvedTXT forKey:@"txt"];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = self->_resolvedURL;
    v7 = v5[3];
    v8 = v7;
    if ((v6 != 0) != (v7 != 0))
    {
      v9 = 0;
    }

    else
    {
      if (v6 && v7)
      {
        v10 = [(NSURL *)v6 isEqual:v7];
      }

      else
      {
        v10 = [(NWEndpoint *)self->_nwEndpoint isEqual:v5[2]];
      }

      v9 = v10;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  resolvedURL = self->_resolvedURL;
  if (!resolvedURL)
  {
    resolvedURL = self->_nwEndpoint;
  }

  return [resolvedURL hash];
}

- (id)dataRepresentation
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v8 = v3;
      _os_log_impl(&dword_25F5FC000, v4, OS_LOG_TYPE_ERROR, "endpoint serialization error %{public}@", buf, 0xCu);
    }

    v2 = 0;
  }

  return v2;
}

+ (id)endpointWithData:(id)data
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:self fromData:data error:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = v4;
      _os_log_impl(&dword_25F5FC000, v5, OS_LOG_TYPE_ERROR, "endpoint deserialization error %{public}@", buf, 0xCu);
    }

    v3 = 0;
  }

  return v3;
}

- (NSString)persistentNameRepresentationForPrintKitUI
{
  copyCEndpoint = [(NWEndpoint *)self->_nwEndpoint copyCEndpoint];
  type = nw_endpoint_get_type(copyCEndpoint);
  if (type == nw_endpoint_type_bonjour_service)
  {
    bonjour_fullname = nw_endpoint_get_bonjour_fullname();
    if (bonjour_fullname)
    {
      goto LABEL_7;
    }

    bonjour_service_name = nw_endpoint_get_bonjour_service_name(copyCEndpoint);
  }

  else
  {
    if (type != nw_endpoint_type_url)
    {
      goto LABEL_9;
    }

    bonjour_service_name = nw_endpoint_get_url(copyCEndpoint);
  }

  bonjour_fullname = bonjour_service_name;
  if (bonjour_service_name)
  {
LABEL_7:
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:bonjour_fullname];

    if (v7)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

LABEL_9:

LABEL_10:
  resolvedURL = self->_resolvedURL;
  if (!resolvedURL || ([(NSURL *)resolvedURL absoluteString], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ((resolvedTXT = self->_resolvedTXT) == 0 || (-[NSDictionary objectForKeyedSubscript:](resolvedTXT, "objectForKeyedSubscript:", @"display-name"), (v10 = objc_claimAutoreleasedReturnValue()) == 0) || ((v11 = v10, v12 = MEMORY[0x277CCACA8], !-[PKPrinterBonjourEndpoint isIPPS](self, "isIPPS")) ? (v13 = @"ipp") : (v13 = @"ipps"), [v12 stringWithFormat:@"%@.%@._tcp.local.", v11, v13], v7 = objc_claimAutoreleasedReturnValue(), v11, !v7))
    {
      v14 = MEMORY[0x277CCACA8];
      nwEndpoint = self->_nwEndpoint;
      if ([(PKPrinterBonjourEndpoint *)self isIPPS])
      {
        v16 = @"ipps";
      }

      else
      {
        v16 = @"ipp";
      }

      v7 = [v14 stringWithFormat:@"Printer_%@._%@._tcp.local.", nwEndpoint, v16];
    }
  }

LABEL_22:

  return v7;
}

- (NSString)displayNameForPrintKitUI
{
  resolvedTXT = self->_resolvedTXT;
  if (!resolvedTXT || ([(NSDictionary *)resolvedTXT objectForKeyedSubscript:@"display-name"], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    copyCEndpoint = [(NWEndpoint *)self->_nwEndpoint copyCEndpoint];
    type = nw_endpoint_get_type(copyCEndpoint);
    if (type == nw_endpoint_type_bonjour_service)
    {
      bonjour_service_name = nw_endpoint_get_bonjour_service_name(copyCEndpoint);
      if (bonjour_service_name)
      {
        goto LABEL_9;
      }

      bonjour_fullname = nw_endpoint_get_bonjour_fullname();
    }

    else
    {
      if (type != nw_endpoint_type_url)
      {
        goto LABEL_11;
      }

      bonjour_fullname = nw_endpoint_get_url(copyCEndpoint);
    }

    bonjour_service_name = bonjour_fullname;
    if (bonjour_fullname)
    {
LABEL_9:
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:bonjour_service_name];

      if (v4)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_11:

LABEL_12:
    v4 = &stru_28719ACE8;
  }

LABEL_13:

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PKPrinterBonjourEndpoint;
  v4 = [(PKPrinterBonjourEndpoint *)&v8 description];
  persistentNameRepresentationForPrintKitUI = [(PKPrinterBonjourEndpoint *)self persistentNameRepresentationForPrintKitUI];
  v6 = [v3 stringWithFormat:@"%@ { %@ }", v4, persistentNameRepresentationForPrintKitUI];

  return v6;
}

- (NSString)debugDescription
{
  copyCEndpoint = [(NWEndpoint *)self->_nwEndpoint copyCEndpoint];
  v4 = copyCEndpoint;
  v5 = @"NO";
  if (self->_resolvedURL)
  {
    v6 = @"YES(R)";
  }

  else
  {
    v7 = copyCEndpoint;
    if (nw_endpoint_get_type(v7) == nw_endpoint_type_url)
    {
      url = nw_endpoint_get_url(v7);

      v6 = @"YES(E)";
      if (!url)
      {
        v6 = @"NO";
      }
    }

    else
    {

      v6 = @"NO";
    }
  }

  v9 = v6;
  if (self->_resolvedTXT)
  {
    v10 = @"YES(R)";
  }

  else
  {
    v11 = v4;
    if (nw_endpoint_get_type(v11) == nw_endpoint_type_bonjour_service)
    {
      v12 = nw_endpoint_copy_txt_record(v11);

      v10 = @"YES(E)";
      if (!v12)
      {
        v10 = @"NO";
      }
    }

    else
    {

      v10 = @"NO";
    }
  }

  v13 = v10;
  v14 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = PKPrinterBonjourEndpoint;
  v15 = [(PKPrinterBonjourEndpoint *)&v21 description];
  persistentNameRepresentationForPrintKitUI = [(PKPrinterBonjourEndpoint *)self persistentNameRepresentationForPrintKitUI];
  if ([(NSArray *)self->_resolvedCallouts count])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  if ([(PKPrinterBonjourEndpoint *)self isIPPS])
  {
    v5 = @"YES";
  }

  v18 = toString([(PKPrinterBonjourEndpoint *)self provenance]);
  v19 = [v14 stringWithFormat:@"%@ { %@(hasURL? %@, hasTXT? %@, resolving? %@, secure? %@, from? %@) }", v15, persistentNameRepresentationForPrintKitUI, v9, v13, v17, v5, v18];

  return v19;
}

+ (id)serviceFromEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (nw_endpoint_get_type(endpointCopy) == nw_endpoint_type_bonjour_service)
  {
    bonjour_service_type = nw_endpoint_get_bonjour_service_type(endpointCopy);
    if (bonjour_service_type)
    {
      goto LABEL_6;
    }
  }

  v5 = nw_endpoint_copy_parent_endpoint();
  v6 = v5;
  if (v5 && nw_endpoint_get_type(v5) == nw_endpoint_type_bonjour_service)
  {
    bonjour_service_type = nw_endpoint_get_bonjour_service_type(v6);

    if (bonjour_service_type)
    {
LABEL_6:
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:bonjour_service_type];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (BOOL)isIPPS
{
  resolvedURL = self->_resolvedURL;
  if (resolvedURL)
  {
    scheme = [(NSURL *)resolvedURL scheme];
    if (([scheme isEqualToString:@"ipps"]& 1) == 0)
    {
      v5 = [scheme isEqualToString:@"https"];
      goto LABEL_14;
    }

LABEL_3:
    v5 = 1;
    goto LABEL_14;
  }

  scheme = [(NWEndpoint *)self->_nwEndpoint copyCEndpoint];
  if (nw_endpoint_get_type(scheme) == nw_endpoint_type_url)
  {
    url = nw_endpoint_get_url(scheme);
    if (strncmp(url, "ipps:", 5uLL))
    {
      v5 = strncmp(url, "https:", 6uLL) == 0;
      goto LABEL_14;
    }

    goto LABEL_3;
  }

  v7 = [PKPrinterBonjourEndpoint serviceFromEndpoint:scheme];
  v8 = v7;
  if (v7)
  {
    if ([v7 hasPrefix:@"_ipps."])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v8 hasPrefix:@"_https."];
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_14:
  return v5;
}

- (void)withResolvedTXT:(id)t
{
  tCopy = t;
  v5 = tCopy;
  if (self->_resolvedTXT)
  {
    tCopy[2](tCopy);
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__PKPrinterBonjourEndpoint_withResolvedTXT___block_invoke;
    v6[3] = &unk_279A91CD0;
    v6[4] = self;
    v7 = tCopy;
    [(PKPrinterBonjourEndpoint *)self _resolveEndpoint:v6];
  }
}

- (void)withResolvedURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (self->_resolvedURL)
  {
    lCopy[2](lCopy);
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__PKPrinterBonjourEndpoint_withResolvedURL___block_invoke;
    v6[3] = &unk_279A91CD0;
    v6[4] = self;
    v7 = lCopy;
    [(PKPrinterBonjourEndpoint *)self _resolveEndpoint:v6];
  }
}

- (void)_resolveEndpoint:(id)endpoint
{
  v16[1] = *MEMORY[0x277D85DE8];
  obj = self;
  endpointCopy = endpoint;
  objc_sync_enter(obj);
  resolvedCallouts = obj->_resolvedCallouts;
  v6 = MEMORY[0x25F8E4580](endpointCopy);

  if (resolvedCallouts)
  {
    v7 = [(NSArray *)resolvedCallouts arrayByAddingObject:v6];
    v8 = obj->_resolvedCallouts;
    obj->_resolvedCallouts = v7;

    objc_sync_exit(obj);
  }

  else
  {
    v16[0] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v10 = obj->_resolvedCallouts;
    obj->_resolvedCallouts = v9;

    objc_sync_exit(obj);
    if (objc_opt_respondsToSelector())
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __45__PKPrinterBonjourEndpoint__resolveEndpoint___block_invoke;
      v15[3] = &unk_279A91CF8;
      v15[4] = obj;
      [(PKPrinterBonjourEndpoint *)obj resolveWithinPrinterToolWithTimeout:v15 completionHandler:30.0];
    }

    else
    {
      v11 = +[PKPrinterTool_Client sharedClient];
      nwEndpoint = obj->_nwEndpoint;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __45__PKPrinterBonjourEndpoint__resolveEndpoint___block_invoke_2;
      v14[3] = &unk_279A91D20;
      v14[4] = obj;
      [v11 endpointResolve:nwEndpoint timeout:v14 completionHandler:30.0];
    }
  }
}

void __45__PKPrinterBonjourEndpoint__resolveEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [v3 resolvedURL];
  v6 = [v7 resolvedTXT];
  [v4 _resolve_finish_resolvedURL:v5 resolvedTXT:v6];
}

- (void)_resolve_finish_resolvedURL:(id)l resolvedTXT:(id)t
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  tCopy = t;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_resolvedURL, l);
  objc_storeStrong(&selfCopy->_resolvedTXT, t);
  if (!selfCopy->_resolvedURL || !selfCopy->_resolvedTXT)
  {
    v10 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      nwEndpoint = selfCopy->_nwEndpoint;
      v14 = 138477827;
      v15 = nwEndpoint;
      _os_log_impl(&dword_25F5FC000, v10, OS_LOG_TYPE_ERROR, "Endpoint %{private}@ not completely resolved", &v14, 0xCu);
    }
  }

  resolvedCallouts = selfCopy->_resolvedCallouts;
  selfCopy->_resolvedCallouts = 0;
  v13 = resolvedCallouts;

  objc_sync_exit(selfCopy);
  [(NSArray *)v13 enumerateObjectsUsingBlock:&__block_literal_global_4];
}

void __68__PKPrinterBonjourEndpoint__resolve_finish_resolvedURL_resolvedTXT___block_invoke(uint64_t a1, void *a2)
{
  v3 = dispatch_get_global_queue(0, 0);
  dispatch_async(v3, a2);
}

- (id)userCodableDictionary
{
  v3 = objc_opt_new();
  persistentNameRepresentationForPrintKitUI = [(PKPrinterBonjourEndpoint *)self persistentNameRepresentationForPrintKitUI];
  [v3 setObject:persistentNameRepresentationForPrintKitUI forKeyedSubscript:@"name"];

  displayNameForPrintKitUI = [(PKPrinterBonjourEndpoint *)self displayNameForPrintKitUI];
  [v3 setObject:displayNameForPrintKitUI forKeyedSubscript:@"display-name"];

  if ([(PKPrinterBonjourEndpoint *)self isIPPS])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 setObject:v6 forKeyedSubscript:@"secure"];
  v7 = toString([(PKPrinterBonjourEndpoint *)self provenance]);
  [v3 setObject:v7 forKeyedSubscript:@"source"];

  provenanceIdentifier = [(PKPrinterBonjourEndpoint *)self provenanceIdentifier];
  v9 = provenanceIdentifier;
  if (provenanceIdentifier)
  {
    v10 = provenanceIdentifier;
  }

  else
  {
    v10 = @"nil";
  }

  [v3 setObject:v10 forKeyedSubscript:@"source-ident"];

  return v3;
}

@end