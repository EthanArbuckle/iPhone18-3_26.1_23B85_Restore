@interface ExtensionBrowse_Entity
- (ExtensionBrowse_Entity)initWithURL:(id)l displayName:(id)name txtRecord:(id)record extensionIdentifier:(id)identifier;
- (id)bonjourName;
@end

@implementation ExtensionBrowse_Entity

- (ExtensionBrowse_Entity)initWithURL:(id)l displayName:(id)name txtRecord:(id)record extensionIdentifier:(id)identifier
{
  lCopy = l;
  nameCopy = name;
  recordCopy = record;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = ExtensionBrowse_Entity;
  v15 = [(ExtensionBrowse_Entity *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_printerURL, l);
    objc_storeStrong(&v16->_displayName, name);
    objc_storeStrong(&v16->_txtRecord, record);
    objc_storeStrong(&v16->_extensionIdentifier, identifier);
  }

  return v16;
}

- (id)bonjourName
{
  v2 = [[PKPrinterBonjourEndpoint alloc] initWithURL:self->_printerURL txtRecord:self->_txtRecord provenance:2 provenanceIdentifier:self->_extensionIdentifier];

  return v2;
}

@end