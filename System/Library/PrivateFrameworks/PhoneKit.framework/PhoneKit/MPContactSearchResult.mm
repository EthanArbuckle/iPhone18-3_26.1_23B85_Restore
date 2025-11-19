@interface MPContactSearchResult
- (MPContactSearchResult)initWithContact:(id)a3 matchInfo:(id)a4 preferredPhoneNumber:(id)a5;
@end

@implementation MPContactSearchResult

- (MPContactSearchResult)initWithContact:(id)a3 matchInfo:(id)a4 preferredPhoneNumber:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MPContactSearchResult;
  v11 = [(MPContactSearchResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MPContactSearchResult *)v11 setContact:v8];
    [(MPContactSearchResult *)v12 setMatchInfo:v9];
    [(MPContactSearchResult *)v12 setPreferredPhoneNumber:v10];
  }

  return v12;
}

@end