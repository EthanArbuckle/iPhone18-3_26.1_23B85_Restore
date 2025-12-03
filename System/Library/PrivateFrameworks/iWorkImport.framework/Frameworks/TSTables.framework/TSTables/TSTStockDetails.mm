@interface TSTStockDetails
+ (id)detailsWithSymbol:(id)symbol attribute:(int64_t)attribute;
- (BOOL)isEqualToStockDetails:(id)details;
- (TSTStockDetails)initWithSymbol:(id)symbol attribute:(int64_t)attribute;
@end

@implementation TSTStockDetails

+ (id)detailsWithSymbol:(id)symbol attribute:(int64_t)attribute
{
  symbolCopy = symbol;
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithSymbol_attribute_(v6, v7, symbolCopy, attribute, v8);

  return v9;
}

- (TSTStockDetails)initWithSymbol:(id)symbol attribute:(int64_t)attribute
{
  symbolCopy = symbol;
  v11.receiver = self;
  v11.super_class = TSTStockDetails;
  v8 = [(TSTStockDetails *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_symbol, symbol);
    v9->_attribute = attribute;
  }

  return v9;
}

- (BOOL)isEqualToStockDetails:(id)details
{
  detailsCopy = details;
  v9 = objc_msgSend_symbol(self, v5, v6, v7, v8);
  v14 = objc_msgSend_symbol(detailsCopy, v10, v11, v12, v13);
  if (objc_msgSend_isEqualToString_(v9, v15, v14, v16, v17))
  {
    v22 = objc_msgSend_attribute(self, v18, v19, v20, v21);
    v27 = v22 == objc_msgSend_attribute(detailsCopy, v23, v24, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end