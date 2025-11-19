@interface SFUIPeopleSuggestionImageRequest
- (SFUIPeopleSuggestionImageRequest)initWithRequestID:(int)a3 peopleSuggestion:(id)a4 type:(int64_t)a5 resultHandler:(id)a6;
@end

@implementation SFUIPeopleSuggestionImageRequest

- (SFUIPeopleSuggestionImageRequest)initWithRequestID:(int)a3 peopleSuggestion:(id)a4 type:(int64_t)a5 resultHandler:(id)a6
{
  v9 = *&a3;
  v11 = a4;
  v12 = a6;
  if (a5 == 1)
  {
    v13 = [v11 transportBundleIdentifier];
    goto LABEL_5;
  }

  if (!a5)
  {
    v13 = [v11 identifier];
LABEL_5:
    v14 = v13;
    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:
  v18.receiver = self;
  v18.super_class = SFUIPeopleSuggestionImageRequest;
  v15 = [(SFUIImageRequest *)&v18 initWithRequestID:v9 identifier:v14 synchronous:0 resultHandler:v12];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_peopleSuggestion, a4);
    v16->_type = a5;
  }

  return v16;
}

@end