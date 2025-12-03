@interface ICCloudContentTasteUpdateResponse
+ (id)eTagValueFromContentTasteResponse:(id)response;
- (ICCloudContentTasteUpdateResponse)initWithContentTasteResponse:(id)response;
@end

@implementation ICCloudContentTasteUpdateResponse

- (ICCloudContentTasteUpdateResponse)initWithContentTasteResponse:(id)response
{
  responseCopy = response;
  v8.receiver = self;
  v8.super_class = ICCloudContentTasteUpdateResponse;
  v5 = [(ICCloudContentTasteUpdateResponse *)&v8 init];
  if (v5)
  {
    v6 = [ICCloudContentTasteUpdateResponse eTagValueFromContentTasteResponse:responseCopy];
    v5->_responseRevisionID = [v6 longLongValue];
  }

  return v5;
}

+ (id)eTagValueFromContentTasteResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allHeaderFields = [responseCopy allHeaderFields];
    v5 = [allHeaderFields objectForKey:@"ETag"];
    if (!v5)
    {
      lowercaseString = [@"ETag" lowercaseString];
      v5 = [allHeaderFields objectForKey:lowercaseString];
    }
  }

  else
  {
    v5 = 0;
  }

  if ([(__CFString *)v5 length])
  {
    v7 = v5;
  }

  else
  {
    v7 = @"0";
  }

  v8 = v7;

  return v7;
}

@end