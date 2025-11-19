@interface TIMailDataSource
+ (id)searchCriterionForSenderAddresses:(id)a3;
- (BOOL)search:(id)a3 didFindResults:(id)a4;
- (TIMailDataSource)init;
- (id)nextOutgoingMessageBatch;
- (void)dealloc;
- (void)initializeSearchIfNecessary;
- (void)search:(id)a3 didFinishWithError:(id)a4;
- (void)searchAccounts:(id)a3;
- (void)searchMailWithSenderAddresses:(id)a3;
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
  v3 = [(TIMailDataSource *)self cond];
  [v3 lock];

  if ([(TIMailDataSource *)self isValid])
  {
    v4 = [(TIMailDataSource *)self search];

    v5 = [(TIMailDataSource *)self cond];
    [v5 unlock];

    if (!v4)
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
    v7 = [(TIMailDataSource *)self cond];
    [v7 unlock];
  }
}

- (void)searchAccounts:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
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

+ (id)searchCriterionForSenderAddresses:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v3;
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

- (void)searchMailWithSenderAddresses:(id)a3
{
  v10 = MSResultsKeyOutgoing;
  v11 = MSResultsKeyDateSent;
  v12 = MSResultsKeyRecipientTo;
  v13 = MSResultsKeyRecipientCc;
  v14 = _MSResultsKeyPredictiveModelSummary;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v10 count:5];
  v6 = [TIMailDataSource searchCriterionForSenderAddresses:v4, v10, v11, v12, v13, v14];

  v7 = [MSSearch findMessageData:v5 matchingCriterion:v6 options:0 delegate:self];
  [(TIMailDataSource *)self setStrongSelf:self];
  v8 = [(TIMailDataSource *)self cond];
  [v8 lock];

  [(TIMailDataSource *)self setSearch:v7];
  v9 = [(TIMailDataSource *)self cond];
  [v9 unlock];
}

- (id)nextOutgoingMessageBatch
{
  [(TIMailDataSource *)self initializeSearchIfNecessary];
  v3 = [(TIMailDataSource *)self cond];
  [v3 lock];
  while (1)
  {

    v4 = [(TIMailDataSource *)self outgoingMessages];
    if (v4)
    {
      break;
    }

    if (![(TIMailDataSource *)self isValid])
    {
      goto LABEL_6;
    }

    v3 = [(TIMailDataSource *)self cond];
    [v3 wait];
  }

LABEL_6:
  v5 = [(TIMailDataSource *)self outgoingMessages];
  v6 = [v5 copy];

  [(TIMailDataSource *)self setOutgoingMessages:0];
  v7 = [(TIMailDataSource *)self cond];
  [v7 unlock];

  return v6;
}

- (BOOL)search:(id)a3 didFindResults:(id)a4
{
  v4 = a4;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v4;
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
        v14 = [v13 BOOLValue];

        if (v14)
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

  v16 = [(TIMailDataSource *)self cond];
  [v16 lock];

  v17 = [(TIMailDataSource *)self outgoingMessages];
  v18 = [v17 arrayByAddingObjectsFromArray:v5];
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

  v21 = [(TIMailDataSource *)self cond];
  [v21 broadcast];

  v22 = [(TIMailDataSource *)self cond];
  [v22 unlock];

  return 1;
}

- (void)search:(id)a3 didFinishWithError:(id)a4
{
  v12 = a3;
  if (a4)
  {
    v6 = a4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    NSLog(@"%@: Mail search failed with error: %@", v8, v6);
  }

  v9 = [(TIMailDataSource *)self cond];
  [v9 lock];

  [(TIMailDataSource *)self setValid:0];
  [v12 cancel];
  [v12 setDelegate:0];
  [(TIMailDataSource *)self setStrongSelf:0];
  v10 = [(TIMailDataSource *)self cond];
  [v10 broadcast];

  v11 = [(TIMailDataSource *)self cond];
  [v11 unlock];
}

@end