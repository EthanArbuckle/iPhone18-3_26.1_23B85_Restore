@interface ICCloudContentTasteUpdateResponse
+ (id)eTagValueFromContentTasteResponse:(id)a3;
- (ICCloudContentTasteUpdateResponse)initWithContentTasteResponse:(id)a3;
@end

@implementation ICCloudContentTasteUpdateResponse

- (ICCloudContentTasteUpdateResponse)initWithContentTasteResponse:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICCloudContentTasteUpdateResponse;
  v5 = [(ICCloudContentTasteUpdateResponse *)&v8 init];
  if (v5)
  {
    v6 = [ICCloudContentTasteUpdateResponse eTagValueFromContentTasteResponse:v4];
    v5->_responseRevisionID = [v6 longLongValue];
  }

  return v5;
}

+ (id)eTagValueFromContentTasteResponse:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 allHeaderFields];
    v5 = [v4 objectForKey:@"ETag"];
    if (!v5)
    {
      v6 = [@"ETag" lowercaseString];
      v5 = [v4 objectForKey:v6];
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