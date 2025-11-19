@interface TSCHStyleOwnerPropertyKey
+ (id)propertyKeyWithStyleOwnerPath:(id)a3 property:(int)a4;
- (BOOL)isEqual:(id)a3;
- (TSCHStyleOwnerPropertyKey)initWithStyleOwnerPath:(id)a3 property:(int)a4;
@end

@implementation TSCHStyleOwnerPropertyKey

+ (id)propertyKeyWithStyleOwnerPath:(id)a3 property:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [a1 alloc];
  v12 = objc_msgSend_initWithStyleOwnerPath_property_(v7, v8, v9, v10, v11, v6, v4);

  return v12;
}

- (TSCHStyleOwnerPropertyKey)initWithStyleOwnerPath:(id)a3 property:(int)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = TSCHStyleOwnerPropertyKey;
  v8 = [(TSCHStyleOwnerPropertyKey *)&v15 init];
  if (v8)
  {
    v12 = objc_msgSend_copy(v6, v7, v9, v10, v11);
    styleOwnerPath = v8->_styleOwnerPath;
    v8->_styleOwnerPath = v12;

    v8->_property = a4;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  v5 = TSUSpecificCast();

  v10 = v5 && objc_msgSend_isEqual_(self->_styleOwnerPath, v6, v7, v8, v9, *(v5 + 8)) && self->_property == *(v5 + 16);
  return v10;
}

@end