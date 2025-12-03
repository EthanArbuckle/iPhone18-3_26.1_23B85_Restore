@interface TIMailOutgoingMessage
- (NSDate)dateSent;
- (NSString)body;
- (NSString)recipient;
@end

@implementation TIMailOutgoingMessage

- (NSDate)dateSent
{
  searchResult = [(TIMailOutgoingMessage *)self searchResult];
  v3 = [searchResult objectForKey:MSResultsKeyDateSent];

  return v3;
}

- (NSString)recipient
{
  searchResult = [(TIMailOutgoingMessage *)self searchResult];
  v4 = [searchResult objectForKey:MSResultsKeyRecipientTo];

  if ([v4 count] == 1 && (-[TIMailOutgoingMessage searchResult](self, "searchResult"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKey:", MSResultsKeyRecipientCc), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, !v7))
  {
    firstObject = [v4 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (NSString)body
{
  searchResult = [(TIMailOutgoingMessage *)self searchResult];
  v3 = [searchResult objectForKey:_MSResultsKeyPredictiveModelSummary];

  return v3;
}

@end