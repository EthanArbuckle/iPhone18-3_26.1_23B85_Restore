@interface BonjourBrowse_Entity
- (BOOL)isEqual:(id)equal;
- (BonjourBrowse_Entity)initWithBrowseResult:(id)result;
- (BonjourBrowse_Entity)initWithEndpoint:(id)endpoint;
- (id)bonjourName;
- (id)description;
- (id)displayName;
- (id)domain;
- (id)nw_txt_record;
- (id)serviceType;
- (id)txtRecordDictionary;
- (unint64_t)hash;
@end

@implementation BonjourBrowse_Entity

- (BonjourBrowse_Entity)initWithBrowseResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = BonjourBrowse_Entity;
  v6 = [(BonjourBrowse_Entity *)&v10 init];
  if (v6)
  {
    v7 = nw_browse_result_copy_endpoint(resultCopy);
    endpoint = v6->_endpoint;
    v6->_endpoint = v7;

    objc_storeStrong(&v6->_browseResult, result);
  }

  return v6;
}

- (BonjourBrowse_Entity)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v10.receiver = self;
  v10.super_class = BonjourBrowse_Entity;
  v6 = [(BonjourBrowse_Entity *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, endpoint);
    browseResult = v7->_browseResult;
    v7->_browseResult = 0;
  }

  return v7;
}

- (id)description
{
  nw_txt_record = [(BonjourBrowse_Entity *)self nw_txt_record];
  v4 = nw_txt_record;
  if (nw_txt_record)
  {
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"(%d keys in txt record"), nw_txt_record_get_key_count(nw_txt_record);
  }

  else
  {
    v5 = @"(no txt from browse result)";
  }

  bonjour_service_type = nw_endpoint_get_bonjour_service_type(self->_endpoint);
  bonjour_service_domain = nw_endpoint_get_bonjour_service_domain(self->_endpoint);
  v12.receiver = self;
  v12.super_class = BonjourBrowse_Entity;
  v8 = [(BonjourBrowse_Entity *)&v12 description];
  displayName = [(BonjourBrowse_Entity *)self displayName];
  v10 = [NSString stringWithFormat:@"%@ { %@ / %s / %s (%@) }", v8, displayName, bonjour_service_type, bonjour_service_domain, v5];

  return v10;
}

- (id)serviceType
{
  bonjour_service_type = nw_endpoint_get_bonjour_service_type(self->_endpoint);

  return [NSString stringWithUTF8String:bonjour_service_type];
}

- (id)domain
{
  bonjour_service_domain = nw_endpoint_get_bonjour_service_domain(self->_endpoint);

  return [NSString stringWithUTF8String:bonjour_service_domain];
}

- (id)nw_txt_record
{
  if (self->_browseResult)
  {
    v2 = nw_browse_result_copy_txt_record_object(self->_browseResult);
  }

  else
  {
    v2 = nw_endpoint_copy_txt_record(self->_endpoint);
  }

  return v2;
}

- (id)bonjourName
{
  v3 = [PKPrinterBonjourEndpoint alloc];
  endpoint = self->_endpoint;
  serviceType = [(BonjourBrowse_Entity *)self serviceType];
  v6 = [v3 initWithEndpoint:endpoint provenance:4 provenanceIdentifier:serviceType];

  return v6;
}

- (id)displayName
{
  bonjour_service_name = nw_endpoint_get_bonjour_service_name(self->_endpoint);

  return [NSString stringWithUTF8String:bonjour_service_name];
}

- (id)txtRecordDictionary
{
  nw_txt_record = [(BonjourBrowse_Entity *)self nw_txt_record];
  v3 = [PKTXTRecord txtRecordDictionaryForTxtRecord:nw_txt_record];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bonjourName = [(BonjourBrowse_Entity *)self bonjourName];
    bonjourName2 = [v5 bonjourName];
    v8 = [bonjourName isEqual:bonjourName2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  bonjourName = [(BonjourBrowse_Entity *)self bonjourName];
  v3 = [bonjourName hash];

  return v3;
}

@end