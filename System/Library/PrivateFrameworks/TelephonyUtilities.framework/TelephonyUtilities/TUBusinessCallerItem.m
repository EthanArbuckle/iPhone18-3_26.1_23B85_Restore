@interface TUBusinessCallerItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCallerItem:(id)a3;
- (NSString)description;
- (TUBusinessCallerItem)initWithName:(id)a3 department:(id)a4 logoURL:(id)a5;
- (unint64_t)hash;
@end

@implementation TUBusinessCallerItem

- (TUBusinessCallerItem)initWithName:(id)a3 department:(id)a4 logoURL:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = TUBusinessCallerItem;
  v12 = [(TUBusinessCallerItem *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_department, a4);
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/stock"];
    }

    logoURL = v13->_logoURL;
    v13->_logoURL = v14;

    objc_storeStrong(&v13->_name, a3);
  }

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TUBusinessCallerItem *)self name];
  v6 = [(TUBusinessCallerItem *)self department];
  v7 = [(TUBusinessCallerItem *)self logoURL];
  v8 = [v3 stringWithFormat:@"<%@: name=%@, department=%@, logoURL=%@>", v4, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUBusinessCallerItem *)self isEqualToCallerItem:v4];

  return v5;
}

- (BOOL)isEqualToCallerItem:(id)a3
{
  v4 = a3;
  v5 = [(TUBusinessCallerItem *)self logoURL];
  v6 = [v4 logoURL];
  if (TUObjectsAreEqualOrNil(v5, v6))
  {
    v7 = [(TUBusinessCallerItem *)self name];
    v8 = [v4 name];
    if (TUStringsAreEqualOrNil(v7, v8))
    {
      v9 = [(TUBusinessCallerItem *)self department];
      v10 = [v4 department];
      v11 = TUStringsAreEqualOrNil(v9, v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(TUBusinessCallerItem *)self name];
  v4 = [v3 hash];
  v5 = [(TUBusinessCallerItem *)self department];
  v6 = [v5 hash] ^ v4;
  v7 = [(TUBusinessCallerItem *)self logoURL];
  v8 = [v7 hash];

  return v6 ^ v8;
}

@end