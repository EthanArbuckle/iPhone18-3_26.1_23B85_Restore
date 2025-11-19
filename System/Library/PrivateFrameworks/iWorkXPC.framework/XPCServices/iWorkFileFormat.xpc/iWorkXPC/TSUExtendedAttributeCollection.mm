@interface TSUExtendedAttributeCollection
- (BOOL)isEqual:(id)a3;
- (BOOL)setAttributeCollectionToPath:(id)a3 intent:(unsigned int)a4 options:(int)a5 forRemoval:(BOOL)a6 error:(id *)a7;
- (TSUExtendedAttributeCollection)initWithAttributes:(id)a3;
- (id)description;
- (id)extendedAttributeForName:(id)a3;
- (void)setExtendedAttributeValue:(id)a3 forName:(id)a4;
@end

@implementation TSUExtendedAttributeCollection

- (TSUExtendedAttributeCollection)initWithAttributes:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = TSUExtendedAttributeCollection;
  v5 = [(TSUExtendedAttributeCollection *)&v24 init];
  if (v5)
  {
    v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    attributes = v5->_attributes;
    v5->_attributes = v6;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 name];
          v15 = xattr_name_without_flags([v14 UTF8String]);

          v16 = v5->_attributes;
          v17 = [[NSString alloc] initWithUTF8String:v15];
          [(NSMutableDictionary *)v16 setObject:v13 forKeyedSubscript:v17];

          free(v15);
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    v4 = v19;
  }

  return v5;
}

- (BOOL)setAttributeCollectionToPath:(id)a3 intent:(unsigned int)a4 options:(int)a5 forRemoval:(BOOL)a6 error:(id *)a7
{
  v12 = a3;
  v13 = [v12 fileSystemRepresentation];
  if (v13)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 1;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_10008247C;
    v25 = sub_10008248C;
    v26 = 0;
    attributes = self->_attributes;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100082494;
    v17[3] = &unk_1001CCA38;
    v20 = a6;
    v17[5] = &v27;
    v17[6] = v13;
    v18 = a4;
    v19 = a5;
    v17[4] = &v21;
    [(NSMutableDictionary *)attributes enumerateKeysAndObjectsUsingBlock:v17];
    v15 = *(v28 + 24);
    if (a7 && (v28[3] & 1) == 0)
    {
      *a7 = v22[5];
      v15 = *(v28 + 24);
    }

    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
  }

  else if (a7)
  {
    [NSError tsu_fileReadPOSIXErrorWithNumber:2 userInfo:0];
    *a7 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

- (id)extendedAttributeForName:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];
  if (v6)
  {
    v7 = xattr_name_without_flags(v6);
    attributes = self->_attributes;
    v9 = [[NSString alloc] initWithUTF8String:v7];
    v10 = [(NSMutableDictionary *)attributes objectForKeyedSubscript:v9];

    free(v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setExtendedAttributeValue:(id)a3 forName:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v6 UTF8String];
  if (v7)
  {
    v8 = xattr_name_without_flags(v7);
    v9 = [[TSUExtendedAttribute alloc] initWithName:v6 value:v12];
    attributes = self->_attributes;
    v11 = [[NSString alloc] initWithUTF8String:v8];
    [(NSMutableDictionary *)attributes setObject:v9 forKeyedSubscript:v11];

    free(v8);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, v4);

  if (v6)
  {
    attributes = self->_attributes;
    if (attributes | v6[1])
    {
      v8 = [(NSMutableDictionary *)attributes isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(TSUExtendedAttributeCollection *)self allAttributes];
  v6 = [NSString stringWithFormat:@"<%@: %p attributes='%@'>", v4, self, v5];

  return v6;
}

@end