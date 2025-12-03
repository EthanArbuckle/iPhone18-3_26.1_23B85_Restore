@interface WBSForYouTopic
- (WBSForYouTopic)initWithTitle:(id)title identifier:(id)identifier relevancyDate:(id)date source:(unint64_t)source;
@end

@implementation WBSForYouTopic

- (WBSForYouTopic)initWithTitle:(id)title identifier:(id)identifier relevancyDate:(id)date source:(unint64_t)source
{
  titleCopy = title;
  identifierCopy = identifier;
  dateCopy = date;
  v20.receiver = self;
  v20.super_class = WBSForYouTopic;
  v13 = [(WBSForYouTopic *)&v20 init];
  if (v13)
  {
    v14 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v16;

    objc_storeStrong(&v13->_relevancyDate, date);
    v13->_source = source;
    v18 = v13;
  }

  return v13;
}

@end