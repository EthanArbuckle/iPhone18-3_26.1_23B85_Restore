@interface MediaSocialPostResponse
+ (id)_unrecoverableErrors;
- (BOOL)_isUnrecoverable:(id)a3 statusCode:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setValuesWithResponseDictionary:(id)a3;
@end

@implementation MediaSocialPostResponse

- (void)setValuesWithResponseDictionary:(id)a3
{
  v16 = a3;
  v4 = [v16 objectForKey:@"id"];
  if (!v4)
  {
    v4 = [v16 objectForKey:@"activityId"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MediaSocialPostResponse *)self setActivityIdentifier:v4];
  }

  v5 = [v16 objectForKey:@"pollInterval"];
  if (objc_opt_respondsToSelector())
  {
    [v5 doubleValue];
    [(MediaSocialPostResponse *)self setPollingInterval:?];
  }

  v6 = [v16 objectForKey:@"pollDuration"];
  if (objc_opt_respondsToSelector())
  {
    [v6 doubleValue];
    [(MediaSocialPostResponse *)self setPollDuration:?];
  }

  v7 = [v16 objectForKey:@"state"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v7 isEqualToString:@"pending"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"processing"))
    {
      v8 = 1;
      goto LABEL_16;
    }

    if ([v7 isEqualToString:@"published"])
    {
      [(MediaSocialPostResponse *)self setResult:4];
    }
  }

  v8 = 0;
LABEL_16:
  v9 = [v16 objectForKey:@"status"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([v9 isEqualToString:@"success"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"published"))
    {
      if (v8)
      {
        v10 = 3;
      }

      else
      {
        v10 = 4;
      }

      [(MediaSocialPostResponse *)self setResult:v10];
    }

    else
    {
      [(MediaSocialPostResponse *)self setStatus:v9];
      v11 = [v16 objectForKey:@"serviceErrorLabel"];
      v12 = [v16 objectForKey:@"serviceErrorMessage"];
      if (v12)
      {
        [(MediaSocialPostResponse *)self setServiceErrorMessage:v12];
      }

      if ([(MediaSocialPostResponse *)self _isUnrecoverable:v11 statusCode:[(MediaSocialPostResponse *)self statusCode]])
      {
        v13 = 2;
      }

      else
      {
        v13 = v12 != 0;
      }

      [(MediaSocialPostResponse *)self setResult:v13];
    }
  }

  v14 = [v16 objectForKey:@"url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [[NSURL alloc] initWithString:v14];
    [(MediaSocialPostResponse *)self setActivityURL:v15];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setActivityIdentifier:self->_activityIdentifier];
  [v4 setActivityURL:self->_activityURL];
  [v4 setError:self->_error];
  [v4 setPollingInterval:self->_pollingInterval];
  [v4 setPostIdentifier:self->_postIdentifier];
  [v4 setResult:self->_result];
  return v4;
}

- (BOOL)_isUnrecoverable:(id)a3 statusCode:(int64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = +[MediaSocialPostResponse _unrecoverableErrors];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (id)_unrecoverableErrors
{
  if (qword_100384058 != -1)
  {
    sub_100272560();
  }

  v3 = qword_100384050;

  return v3;
}

@end