@interface MPContactSearchResult
- (MPContactSearchResult)initWithContact:(id)contact matchInfo:(id)info preferredPhoneNumber:(id)number;
@end

@implementation MPContactSearchResult

- (MPContactSearchResult)initWithContact:(id)contact matchInfo:(id)info preferredPhoneNumber:(id)number
{
  contactCopy = contact;
  infoCopy = info;
  numberCopy = number;
  v14.receiver = self;
  v14.super_class = MPContactSearchResult;
  v11 = [(MPContactSearchResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MPContactSearchResult *)v11 setContact:contactCopy];
    [(MPContactSearchResult *)v12 setMatchInfo:infoCopy];
    [(MPContactSearchResult *)v12 setPreferredPhoneNumber:numberCopy];
  }

  return v12;
}

@end