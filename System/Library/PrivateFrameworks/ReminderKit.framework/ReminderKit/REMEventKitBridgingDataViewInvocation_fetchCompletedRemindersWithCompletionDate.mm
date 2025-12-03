@interface REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate
- (BOOL)isEqual:(id)equal;
- (REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate)initWithCoder:(id)coder;
- (REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate)initWithListIDs:(id)ds startDate:(id)date endDate:(id)endDate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate

- (REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate)initWithListIDs:(id)ds startDate:(id)date endDate:(id)endDate
{
  dsCopy = ds;
  dateCopy = date;
  endDateCopy = endDate;
  v15.receiver = self;
  v15.super_class = REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate;
  v12 = [(REMStoreInvocationValueStorage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_listIDs, ds);
    objc_storeStrong(&v13->_startDate, date);
    objc_storeStrong(&v13->_endDate, endDate);
  }

  return v13;
}

- (REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"listIDs"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];

  v11 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self initWithListIDs:v8 startDate:v9 endDate:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  listIDs = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self listIDs];
  [coderCopy encodeObject:listIDs forKey:@"listIDs"];

  startDate = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"startDate"];

  endDate = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  listIDs = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self listIDs];
  listIDs2 = [equalCopy listIDs];
  v7 = listIDs2;
  if (listIDs == listIDs2)
  {
  }

  else
  {
    listIDs3 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self listIDs];
    listIDs4 = [equalCopy listIDs];
    v10 = [listIDs3 isEqual:listIDs4];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  startDate = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self startDate];
  startDate2 = [equalCopy startDate];
  v13 = startDate2;
  if (startDate == startDate2)
  {
  }

  else
  {
    startDate3 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self startDate];
    startDate4 = [equalCopy startDate];
    v16 = [startDate3 isEqual:startDate4];

    if (!v16)
    {
LABEL_8:
      v17 = 0;
      goto LABEL_14;
    }
  }

  endDate = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self endDate];
  endDate2 = [equalCopy endDate];
  if (endDate == endDate2)
  {
    v17 = 1;
  }

  else
  {
    endDate3 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self endDate];
    endDate4 = [equalCopy endDate];
    v17 = [endDate3 isEqual:endDate4];
  }

LABEL_14:
  return v17 & 1;
}

- (unint64_t)hash
{
  listIDs = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self listIDs];
  v4 = [listIDs hash];
  startDate = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self startDate];
  v6 = [startDate hash] ^ v4;
  endDate = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self endDate];
  v8 = [endDate hash];

  return v6 ^ v8;
}

@end