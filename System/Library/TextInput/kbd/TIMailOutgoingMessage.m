@interface TIMailOutgoingMessage
- (NSDate)dateSent;
- (NSString)body;
- (NSString)recipient;
@end

@implementation TIMailOutgoingMessage

- (NSDate)dateSent
{
  v2 = [(TIMailOutgoingMessage *)self searchResult];
  v3 = [v2 objectForKey:MSResultsKeyDateSent];

  return v3;
}

- (NSString)recipient
{
  v3 = [(TIMailOutgoingMessage *)self searchResult];
  v4 = [v3 objectForKey:MSResultsKeyRecipientTo];

  if ([v4 count] == 1 && (-[TIMailOutgoingMessage searchResult](self, "searchResult"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKey:", MSResultsKeyRecipientCc), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, !v7))
  {
    v8 = [v4 firstObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)body
{
  v2 = [(TIMailOutgoingMessage *)self searchResult];
  v3 = [v2 objectForKey:_MSResultsKeyPredictiveModelSummary];

  return v3;
}

@end