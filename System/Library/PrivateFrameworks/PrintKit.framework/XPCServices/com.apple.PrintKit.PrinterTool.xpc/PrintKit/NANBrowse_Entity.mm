@interface NANBrowse_Entity
- (BOOL)isEqual:(id)equal;
- (NANBrowse_Entity)initWithURL:(id)l txt:(id)txt dataSession:(id)session;
- (void)dealloc;
- (void)setTXTRecordValue:(id)value forKey:(id)key;
@end

@implementation NANBrowse_Entity

- (NANBrowse_Entity)initWithURL:(id)l txt:(id)txt dataSession:(id)session
{
  lCopy = l;
  txtCopy = txt;
  sessionCopy = session;
  v21.receiver = self;
  v21.super_class = NANBrowse_Entity;
  v11 = [(NANBrowse_Entity *)&v21 init];
  if (v11)
  {
    v12 = [txtCopy mutableCopy];
    v13 = [v12 objectForKeyedSubscript:@"note"];
    v14 = v13;
    v15 = @"no location";
    if (v13)
    {
      v15 = v13;
    }

    v16 = [NSString stringWithFormat:@"FROM NAN BROWSE: %@", v15];
    [v12 setObject:v16 forKeyedSubscript:@"note"];

    v17 = [[PKPrinterBonjourEndpoint alloc] initWithURL:lCopy txtRecord:v12 provenance:32 provenanceIdentifier:0];
    bonjourName = v11->_bonjourName;
    v11->_bonjourName = v17;

    objc_storeStrong(&v11->_txt, v12);
    objc_storeStrong(&v11->_dataSession, session);
    v19 = v11->_dataSession;
    if (qword_1000C7C18 != -1)
    {
      sub_10006047C();
    }

    [qword_1000C7C10 addObject:v19];
  }

  return v11;
}

- (void)dealloc
{
  v3 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    dataSession = self->_dataSession;
    *buf = 134218242;
    selfCopy = self;
    v8 = 2112;
    v9 = dataSession;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "NSNBrowse_Entity<%p> being deallocated - ds %@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = NANBrowse_Entity;
  [(NANBrowse_Entity *)&v5 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ([(PKPrinterBonjourEndpoint *)self->_bonjourName isEqual:v5[1]])
    {
      v6 = [(NSDictionary *)self->_txt isEqualToDictionary:v5[2]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setTXTRecordValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = [(NSDictionary *)self->_txt mutableCopy];
  [v7 setObject:valueCopy forKeyedSubscript:keyCopy];
  objc_storeStrong(&self->_txt, v7);
  [(PKPrinterBonjourEndpoint *)self->_bonjourName setResolvedTXT:v7];
}

@end