@interface TUBusinessCallerItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCallerItem:(id)item;
- (NSString)description;
- (TUBusinessCallerItem)initWithName:(id)name department:(id)department logoURL:(id)l;
- (unint64_t)hash;
@end

@implementation TUBusinessCallerItem

- (TUBusinessCallerItem)initWithName:(id)name department:(id)department logoURL:(id)l
{
  nameCopy = name;
  departmentCopy = department;
  lCopy = l;
  v17.receiver = self;
  v17.super_class = TUBusinessCallerItem;
  v12 = [(TUBusinessCallerItem *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_department, department);
    if (lCopy)
    {
      v14 = lCopy;
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/stock"];
    }

    logoURL = v13->_logoURL;
    v13->_logoURL = v14;

    objc_storeStrong(&v13->_name, name);
  }

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(TUBusinessCallerItem *)self name];
  department = [(TUBusinessCallerItem *)self department];
  logoURL = [(TUBusinessCallerItem *)self logoURL];
  v8 = [v3 stringWithFormat:@"<%@: name=%@, department=%@, logoURL=%@>", v4, name, department, logoURL];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUBusinessCallerItem *)self isEqualToCallerItem:equalCopy];

  return v5;
}

- (BOOL)isEqualToCallerItem:(id)item
{
  itemCopy = item;
  logoURL = [(TUBusinessCallerItem *)self logoURL];
  logoURL2 = [itemCopy logoURL];
  if (TUObjectsAreEqualOrNil(logoURL, logoURL2))
  {
    name = [(TUBusinessCallerItem *)self name];
    name2 = [itemCopy name];
    if (TUStringsAreEqualOrNil(name, name2))
    {
      department = [(TUBusinessCallerItem *)self department];
      department2 = [itemCopy department];
      v11 = TUStringsAreEqualOrNil(department, department2);
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
  name = [(TUBusinessCallerItem *)self name];
  v4 = [name hash];
  department = [(TUBusinessCallerItem *)self department];
  v6 = [department hash] ^ v4;
  logoURL = [(TUBusinessCallerItem *)self logoURL];
  v8 = [logoURL hash];

  return v6 ^ v8;
}

@end