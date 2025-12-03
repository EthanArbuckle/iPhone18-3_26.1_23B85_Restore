@interface ipp_collection_t
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (ipp_collection_t)initWithCoder:(id)coder;
@end

@implementation ipp_collection_t

- (ipp_collection_t)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_attrs"];
  v8.receiver = self;
  v8.super_class = ipp_collection_t;
  v6 = [(ipp_t *)&v8 _initWithAttrs:v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  attrs = self->super._attrs;

  return [v4 _initWithAttrs:attrs];
}

- (id)debugDescription
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10003D134;
  v18 = sub_10003D144;
  v19 = 0;
  v3 = objc_opt_new();
  attrs = self->super._attrs;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003D5C4;
  v11[3] = &unk_1000A2FC0;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [(NSMutableArray *)attrs enumerateObjectsUsingBlock:v11];
  v10.receiver = self;
  v10.super_class = ipp_collection_t;
  v6 = [(ipp_t *)&v10 description];
  _descriptionLeader = [(ipp_t *)self _descriptionLeader];
  v8 = [NSString stringWithFormat:@"%@ %@ { %@: %@ }", v6, _descriptionLeader, v15[5], v5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

@end