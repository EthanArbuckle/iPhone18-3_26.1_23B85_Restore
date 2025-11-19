@interface Browse_Entity
- (BOOL)isEqual:(id)a3;
- (id)browseInfo;
- (unint64_t)hash;
@end

@implementation Browse_Entity

- (id)browseInfo
{
  v3 = [PKPrinterBrowseInfo alloc];
  v4 = [(Browse_Entity *)self bonjourName];
  v5 = [(Browse_Entity *)self txtRecordDictionary];
  v6 = [v3 initWithBonjourName:v4 txtRecord:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(Browse_Entity *)self browseInfo];
    v7 = [v5 browseInfo];
    v8 = [v6 isEqualToBrowseInfo:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(Browse_Entity *)self browseInfo];
  v3 = [v2 hash];

  return v3;
}

@end