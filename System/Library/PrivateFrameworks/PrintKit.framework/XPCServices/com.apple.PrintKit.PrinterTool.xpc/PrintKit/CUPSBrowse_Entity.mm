@interface CUPSBrowse_Entity
- (BOOL)isEqual:(id)a3;
- (CUPSBrowse_Entity)initWithBonjourName:(id)a3 txt:(id)a4;
- (void)setTXTRecordValue:(id)a3 forKey:(id)a4;
@end

@implementation CUPSBrowse_Entity

- (CUPSBrowse_Entity)initWithBonjourName:(id)a3 txt:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CUPSBrowse_Entity;
  v9 = [(CUPSBrowse_Entity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bonjourName, a3);
    objc_storeStrong(&v10->_txt, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (void)setTXTRecordValue:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSDictionary *)self->_txt mutableCopy];
  [v7 setObject:v8 forKeyedSubscript:v6];
  objc_storeStrong(&self->_txt, v7);
  [(PKPrinterBonjourEndpoint *)self->_bonjourName setResolvedTXT:v7];
}

@end