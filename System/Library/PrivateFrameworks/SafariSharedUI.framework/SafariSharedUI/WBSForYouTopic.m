@interface WBSForYouTopic
- (WBSForYouTopic)initWithTitle:(id)a3 identifier:(id)a4 relevancyDate:(id)a5 source:(unint64_t)a6;
@end

@implementation WBSForYouTopic

- (WBSForYouTopic)initWithTitle:(id)a3 identifier:(id)a4 relevancyDate:(id)a5 source:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v20.receiver = self;
  v20.super_class = WBSForYouTopic;
  v13 = [(WBSForYouTopic *)&v20 init];
  if (v13)
  {
    v14 = [v10 copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [v11 copy];
    identifier = v13->_identifier;
    v13->_identifier = v16;

    objc_storeStrong(&v13->_relevancyDate, a5);
    v13->_source = a6;
    v18 = v13;
  }

  return v13;
}

@end