@interface TSTConcurrentStylesheetKey
- (BOOL)isEqual:(id)a3;
- (TSTConcurrentStylesheetKey)initWithStyle:(id)a3 andPropertyMap:(id)a4;
@end

@implementation TSTConcurrentStylesheetKey

- (TSTConcurrentStylesheetKey)initWithStyle:(id)a3 andPropertyMap:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TSTConcurrentStylesheetKey;
  v9 = [(TSTConcurrentStylesheetKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_style, a3);
    objc_storeStrong(&v10->_propertyMap, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v10 = v5;
  if (v5 && (style = self->_style, objc_msgSend_style(v5, v6, v7, v8, v9), v12 = objc_claimAutoreleasedReturnValue(), v12, style == v12))
  {
    propertyMap = self->_propertyMap;
    v19 = objc_msgSend_propertyMap(v10, v13, v14, v15, v16);
    isEqualToPropertyMap = objc_msgSend_isEqualToPropertyMap_(propertyMap, v20, v19, v21, v22);
  }

  else
  {
    isEqualToPropertyMap = 0;
  }

  return isEqualToPropertyMap;
}

@end