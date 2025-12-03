@interface MediaSocialPostResponse
+ (id)_unrecoverableErrors;
- (BOOL)_isUnrecoverable:(id)unrecoverable statusCode:(int64_t)code;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setValuesWithResponseDictionary:(id)dictionary;
@end

@implementation MediaSocialPostResponse

- (void)setValuesWithResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"id"];
  if (!v4)
  {
    v4 = [dictionaryCopy objectForKey:@"activityId"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MediaSocialPostResponse *)self setActivityIdentifier:v4];
  }

  v5 = [dictionaryCopy objectForKey:@"pollInterval"];
  if (objc_opt_respondsToSelector())
  {
    [v5 doubleValue];
    [(MediaSocialPostResponse *)self setPollingInterval:?];
  }

  v6 = [dictionaryCopy objectForKey:@"pollDuration"];
  if (objc_opt_respondsToSelector())
  {
    [v6 doubleValue];
    [(MediaSocialPostResponse *)self setPollDuration:?];
  }

  v7 = [dictionaryCopy objectForKey:@"state"];
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
  v9 = [dictionaryCopy objectForKey:@"status"];
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
      v11 = [dictionaryCopy objectForKey:@"serviceErrorLabel"];
      v12 = [dictionaryCopy objectForKey:@"serviceErrorMessage"];
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

  v14 = [dictionaryCopy objectForKey:@"url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [[NSURL alloc] initWithString:v14];
    [(MediaSocialPostResponse *)self setActivityURL:v15];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setActivityIdentifier:self->_activityIdentifier];
  [v4 setActivityURL:self->_activityURL];
  [v4 setError:self->_error];
  [v4 setPollingInterval:self->_pollingInterval];
  [v4 setPostIdentifier:self->_postIdentifier];
  [v4 setResult:self->_result];
  return v4;
}

- (BOOL)_isUnrecoverable:(id)unrecoverable statusCode:(int64_t)code
{
  if (!unrecoverable)
  {
    return 0;
  }

  unrecoverableCopy = unrecoverable;
  v5 = +[MediaSocialPostResponse _unrecoverableErrors];
  v6 = [v5 containsObject:unrecoverableCopy];

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