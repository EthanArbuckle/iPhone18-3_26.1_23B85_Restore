@interface SFUIPeopleSuggestionImageRequest
- (SFUIPeopleSuggestionImageRequest)initWithRequestID:(int)d peopleSuggestion:(id)suggestion type:(int64_t)type resultHandler:(id)handler;
@end

@implementation SFUIPeopleSuggestionImageRequest

- (SFUIPeopleSuggestionImageRequest)initWithRequestID:(int)d peopleSuggestion:(id)suggestion type:(int64_t)type resultHandler:(id)handler
{
  v9 = *&d;
  suggestionCopy = suggestion;
  handlerCopy = handler;
  if (type == 1)
  {
    transportBundleIdentifier = [suggestionCopy transportBundleIdentifier];
    goto LABEL_5;
  }

  if (!type)
  {
    transportBundleIdentifier = [suggestionCopy identifier];
LABEL_5:
    v14 = transportBundleIdentifier;
    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:
  v18.receiver = self;
  v18.super_class = SFUIPeopleSuggestionImageRequest;
  v15 = [(SFUIImageRequest *)&v18 initWithRequestID:v9 identifier:v14 synchronous:0 resultHandler:handlerCopy];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_peopleSuggestion, suggestion);
    v16->_type = type;
  }

  return v16;
}

@end