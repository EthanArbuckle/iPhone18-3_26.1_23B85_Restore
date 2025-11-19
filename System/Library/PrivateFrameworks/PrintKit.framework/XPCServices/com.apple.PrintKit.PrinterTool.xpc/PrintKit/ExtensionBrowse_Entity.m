@interface ExtensionBrowse_Entity
- (ExtensionBrowse_Entity)initWithURL:(id)a3 displayName:(id)a4 txtRecord:(id)a5 extensionIdentifier:(id)a6;
- (id)bonjourName;
@end

@implementation ExtensionBrowse_Entity

- (ExtensionBrowse_Entity)initWithURL:(id)a3 displayName:(id)a4 txtRecord:(id)a5 extensionIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ExtensionBrowse_Entity;
  v15 = [(ExtensionBrowse_Entity *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_printerURL, a3);
    objc_storeStrong(&v16->_displayName, a4);
    objc_storeStrong(&v16->_txtRecord, a5);
    objc_storeStrong(&v16->_extensionIdentifier, a6);
  }

  return v16;
}

- (id)bonjourName
{
  v2 = [[PKPrinterBonjourEndpoint alloc] initWithURL:self->_printerURL txtRecord:self->_txtRecord provenance:2 provenanceIdentifier:self->_extensionIdentifier];

  return v2;
}

@end