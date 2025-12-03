@interface Browse_Entity
- (BOOL)isEqual:(id)equal;
- (id)browseInfo;
- (unint64_t)hash;
@end

@implementation Browse_Entity

- (id)browseInfo
{
  v3 = [PKPrinterBrowseInfo alloc];
  bonjourName = [(Browse_Entity *)self bonjourName];
  txtRecordDictionary = [(Browse_Entity *)self txtRecordDictionary];
  v6 = [v3 initWithBonjourName:bonjourName txtRecord:txtRecordDictionary];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    browseInfo = [(Browse_Entity *)self browseInfo];
    browseInfo2 = [v5 browseInfo];
    v8 = [browseInfo isEqualToBrowseInfo:browseInfo2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  browseInfo = [(Browse_Entity *)self browseInfo];
  v3 = [browseInfo hash];

  return v3;
}

@end