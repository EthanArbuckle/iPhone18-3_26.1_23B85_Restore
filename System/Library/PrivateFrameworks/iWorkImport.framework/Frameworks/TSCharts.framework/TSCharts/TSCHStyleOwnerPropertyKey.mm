@interface TSCHStyleOwnerPropertyKey
+ (id)propertyKeyWithStyleOwnerPath:(id)path property:(int)property;
- (BOOL)isEqual:(id)equal;
- (TSCHStyleOwnerPropertyKey)initWithStyleOwnerPath:(id)path property:(int)property;
@end

@implementation TSCHStyleOwnerPropertyKey

+ (id)propertyKeyWithStyleOwnerPath:(id)path property:(int)property
{
  v4 = *&property;
  pathCopy = path;
  v7 = [self alloc];
  v12 = objc_msgSend_initWithStyleOwnerPath_property_(v7, v8, v9, v10, v11, pathCopy, v4);

  return v12;
}

- (TSCHStyleOwnerPropertyKey)initWithStyleOwnerPath:(id)path property:(int)property
{
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = TSCHStyleOwnerPropertyKey;
  v8 = [(TSCHStyleOwnerPropertyKey *)&v15 init];
  if (v8)
  {
    v12 = objc_msgSend_copy(pathCopy, v7, v9, v10, v11);
    styleOwnerPath = v8->_styleOwnerPath;
    v8->_styleOwnerPath = v12;

    v8->_property = property;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = TSUSpecificCast();

  v10 = v5 && objc_msgSend_isEqual_(self->_styleOwnerPath, v6, v7, v8, v9, *(v5 + 8)) && self->_property == *(v5 + 16);
  return v10;
}

@end