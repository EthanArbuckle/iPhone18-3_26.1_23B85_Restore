@interface REMEventKitBridgingDataViewInvocation_fetchReminders
- (BOOL)isEqual:(id)equal;
- (REMEventKitBridgingDataViewInvocation_fetchReminders)initWithCoder:(id)coder;
- (REMEventKitBridgingDataViewInvocation_fetchReminders)initWithListIDs:(id)ds;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMEventKitBridgingDataViewInvocation_fetchReminders

- (REMEventKitBridgingDataViewInvocation_fetchReminders)initWithListIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = REMEventKitBridgingDataViewInvocation_fetchReminders;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listIDs, ds);
  }

  return v7;
}

- (REMEventKitBridgingDataViewInvocation_fetchReminders)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"listIDs"];

  v9 = [(REMEventKitBridgingDataViewInvocation_fetchReminders *)self initWithListIDs:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  listIDs = [(REMEventKitBridgingDataViewInvocation_fetchReminders *)self listIDs];
  [coderCopy encodeObject:listIDs forKey:@"listIDs"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    listIDs = [(REMEventKitBridgingDataViewInvocation_fetchReminders *)self listIDs];
    listIDs2 = [equalCopy listIDs];
    if (listIDs == listIDs2)
    {
      v9 = 1;
    }

    else
    {
      listIDs3 = [(REMEventKitBridgingDataViewInvocation_fetchReminders *)self listIDs];
      listIDs4 = [equalCopy listIDs];
      v9 = [listIDs3 isEqual:listIDs4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (unint64_t)hash
{
  listIDs = [(REMEventKitBridgingDataViewInvocation_fetchReminders *)self listIDs];
  v3 = [listIDs hash];

  return v3;
}

@end