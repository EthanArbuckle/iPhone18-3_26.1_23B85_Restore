@interface SFEndSearchFeedback
- (SFEndSearchFeedback)initWithCoder:(id)coder;
- (SFEndSearchFeedback)initWithStartSearch:(id)search;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFEndSearchFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFEndSearchFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_uuid forKey:{@"uuid", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_isCanceled forKey:@"_isCanceled"];
  [coderCopy encodeInteger:self->_cancelSearchEvent forKey:@"_cancelSearchEvent"];
}

- (SFEndSearchFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFEndSearchFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_isCanceled = [coderCopy decodeBoolForKey:@"_isCanceled"];
    v5->_cancelSearchEvent = [coderCopy decodeIntegerForKey:@"_cancelSearchEvent"];
  }

  return v5;
}

- (SFEndSearchFeedback)initWithStartSearch:(id)search
{
  searchCopy = search;
  v10.receiver = self;
  v10.super_class = SFEndSearchFeedback;
  v5 = [(SFFeedback *)&v10 init];
  if (v5)
  {
    uuid = [searchCopy uuid];
    v7 = [uuid copy];
    uuid = v5->_uuid;
    v5->_uuid = v7;

    v5->super._queryId = [searchCopy queryId];
  }

  return v5;
}

@end