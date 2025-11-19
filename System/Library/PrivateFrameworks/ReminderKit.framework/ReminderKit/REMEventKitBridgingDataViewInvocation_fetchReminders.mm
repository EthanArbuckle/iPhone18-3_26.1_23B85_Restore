@interface REMEventKitBridgingDataViewInvocation_fetchReminders
- (BOOL)isEqual:(id)a3;
- (REMEventKitBridgingDataViewInvocation_fetchReminders)initWithCoder:(id)a3;
- (REMEventKitBridgingDataViewInvocation_fetchReminders)initWithListIDs:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMEventKitBridgingDataViewInvocation_fetchReminders

- (REMEventKitBridgingDataViewInvocation_fetchReminders)initWithListIDs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMEventKitBridgingDataViewInvocation_fetchReminders;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listIDs, a3);
  }

  return v7;
}

- (REMEventKitBridgingDataViewInvocation_fetchReminders)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"listIDs"];

  v9 = [(REMEventKitBridgingDataViewInvocation_fetchReminders *)self initWithListIDs:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMEventKitBridgingDataViewInvocation_fetchReminders *)self listIDs];
  [v4 encodeObject:v5 forKey:@"listIDs"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMEventKitBridgingDataViewInvocation_fetchReminders *)self listIDs];
    v6 = [v4 listIDs];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMEventKitBridgingDataViewInvocation_fetchReminders *)self listIDs];
      v8 = [v4 listIDs];
      v9 = [v7 isEqual:v8];
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
  v2 = [(REMEventKitBridgingDataViewInvocation_fetchReminders *)self listIDs];
  v3 = [v2 hash];

  return v3;
}

@end