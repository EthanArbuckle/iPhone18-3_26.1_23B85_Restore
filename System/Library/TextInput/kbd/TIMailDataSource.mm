@interface TIMailDataSource
+ (id)searchCriterionForSenderAddresses:(id)addresses;
- (BOOL)search:(id)search didFindResults:(id)results;
- (TIMailDataSource)init;
- (id)nextOutgoingMessageBatch;
- (void)dealloc;
- (void)initializeSearchIfNecessary;
- (void)search:(id)search didFinishWithError:(id)error;
- (void)searchAccounts:(id)accounts;
- (void)searchMailWithSenderAddresses:(id)addresses;
@end

@implementation TIMailDataSource

- (void)dealloc
{
  [(MSSearch *)self->_search cancel];
  [(MSSearch *)self->_search setDelegate:0];
  v3.receiver = self;
  v3.super_class = TIMailDataSource;
  [(TIMailDataSource *)&v3 dealloc];
}

- (TIMailDataSource)init
{
  v6.receiver = self;
  v6.super_class = TIMailDataSource;
  v2 = [(TIMailDataSource *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCondition);
    cond = v2->_cond;
    v2->_cond = v3;

    v2->_valid = 1;
  }

  return v2;
}

- (void)initializeSearchIfNecessary
{
  cond = [(TIMailDataSource *)self cond];
  [cond lock];

  if ([(TIMailDataSource *)self isValid])
  {
    search = [(TIMailDataSource *)self search];

    cond2 = [(TIMailDataSource *)self cond];
    [cond2 unlock];

    if (!search)
    {
      v9 = MSAccountResultsKeyFromEmailAddresses;
      v6 = [NSArray arrayWithObjects:&v9 count:1];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100008B5C;
      v8[3] = &unk_10001CAE0;
      v8[4] = self;
      [MSAccounts accountValuesForKeys:v6 completionBlock:v8];
    }
  }

  else
  {
    cond3 = [(TIMailDataSource *)self cond];
    [cond3 unlock];
  }
}

- (void)searchAccounts:(id)accounts
{
  accountsCopy = accounts;
  v5 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = accountsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    v10 = MSAccountResultsKeyFromEmailAddresses;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v13 + 1) + 8 * v11) objectForKey:{v10, v13}];
        if ([v12 count])
        {
          [v5 addObjectsFromArray:v12];
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(TIMailDataSource *)self searchMailWithSenderAddresses:v5];
}

+ (id)searchCriterionForSenderAddresses:(id)addresses
{
  addressesCopy = addresses;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(addressesCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = addressesCopy;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v9 = MSCriterionTypeSender;
    v10 = MSCriterionQualifierContains;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [MSCriterion alloc];
        v14 = [v13 initWithType:v9 qualifier:v10 expression:{v12, v25}];
        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v15 = [[MSCriterion alloc] initWithCriteria:v4 allRequired:0];
  v16 = +[NSCalendar currentCalendar];
  v17 = +[NSDate date];
  v18 = [v16 dateByAddingUnit:8 value:-9 toDate:v17 options:0];

  v19 = [MSCriterion alloc];
  v20 = [v19 initWithType:MSCriterionTypeReceivedDate qualifier:MSCriterionQualifierGreaterThan expression:v18];
  v21 = [MSCriterion alloc];
  v29[0] = v15;
  v29[1] = v20;
  v22 = [NSArray arrayWithObjects:v29 count:2];
  v23 = [v21 initWithCriteria:v22 allRequired:1];

  return v23;
}

- (void)searchMailWithSenderAddresses:(id)addresses
{
  v10 = MSResultsKeyOutgoing;
  v11 = MSResultsKeyDateSent;
  v12 = MSResultsKeyRecipientTo;
  v13 = MSResultsKeyRecipientCc;
  v14 = _MSResultsKeyPredictiveModelSummary;
  addressesCopy = addresses;
  v5 = [NSArray arrayWithObjects:&v10 count:5];
  v6 = [TIMailDataSource searchCriterionForSenderAddresses:addressesCopy, v10, v11, v12, v13, v14];

  v7 = [MSSearch findMessageData:v5 matchingCriterion:v6 options:0 delegate:self];
  [(TIMailDataSource *)self setStrongSelf:self];
  cond = [(TIMailDataSource *)self cond];
  [cond lock];

  [(TIMailDataSource *)self setSearch:v7];
  cond2 = [(TIMailDataSource *)self cond];
  [cond2 unlock];
}

- (id)nextOutgoingMessageBatch
{
  [(TIMailDataSource *)self initializeSearchIfNecessary];
  cond = [(TIMailDataSource *)self cond];
  [cond lock];
  while (1)
  {

    outgoingMessages = [(TIMailDataSource *)self outgoingMessages];
    if (outgoingMessages)
    {
      break;
    }

    if (![(TIMailDataSource *)self isValid])
    {
      goto LABEL_6;
    }

    cond = [(TIMailDataSource *)self cond];
    [cond wait];
  }

LABEL_6:
  outgoingMessages2 = [(TIMailDataSource *)self outgoingMessages];
  v6 = [outgoingMessages2 copy];

  [(TIMailDataSource *)self setOutgoingMessages:0];
  cond2 = [(TIMailDataSource *)self cond];
  [cond2 unlock];

  return v6;
}

- (BOOL)search:(id)search didFindResults:(id)results
{
  resultsCopy = results;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(resultsCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = resultsCopy;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    v10 = MSResultsKeyOutgoing;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 objectForKey:v10];
        bOOLValue = [v13 BOOLValue];

        if (bOOLValue)
        {
          v15 = objc_alloc_init(TIMailOutgoingMessage);
          [(TIMailOutgoingMessage *)v15 setSearchResult:v12];
          [v5 addObject:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  cond = [(TIMailDataSource *)self cond];
  [cond lock];

  outgoingMessages = [(TIMailDataSource *)self outgoingMessages];
  v18 = [outgoingMessages arrayByAddingObjectsFromArray:v5];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v5;
  }

  [(TIMailDataSource *)self setOutgoingMessages:v20];

  cond2 = [(TIMailDataSource *)self cond];
  [cond2 broadcast];

  cond3 = [(TIMailDataSource *)self cond];
  [cond3 unlock];

  return 1;
}

- (void)search:(id)search didFinishWithError:(id)error
{
  searchCopy = search;
  if (error)
  {
    errorCopy = error;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    NSLog(@"%@: Mail search failed with error: %@", v8, errorCopy);
  }

  cond = [(TIMailDataSource *)self cond];
  [cond lock];

  [(TIMailDataSource *)self setValid:0];
  [searchCopy cancel];
  [searchCopy setDelegate:0];
  [(TIMailDataSource *)self setStrongSelf:0];
  cond2 = [(TIMailDataSource *)self cond];
  [cond2 broadcast];

  cond3 = [(TIMailDataSource *)self cond];
  [cond3 unlock];
}

@end