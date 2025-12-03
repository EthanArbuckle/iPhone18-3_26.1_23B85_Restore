@interface MDMBrowse_Entity
- (BOOL)isEqual:(id)equal;
- (MDMBrowse_Entity)initWithBonjourName:(id)name txt:(id)txt;
- (void)setTXTRecordValue:(id)value forKey:(id)key;
@end

@implementation MDMBrowse_Entity

- (MDMBrowse_Entity)initWithBonjourName:(id)name txt:(id)txt
{
  nameCopy = name;
  txtCopy = txt;
  v12.receiver = self;
  v12.super_class = MDMBrowse_Entity;
  v9 = [(MDMBrowse_Entity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bonjourName, name);
    objc_storeStrong(&v10->_txt, txt);
  }

  return v10;
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