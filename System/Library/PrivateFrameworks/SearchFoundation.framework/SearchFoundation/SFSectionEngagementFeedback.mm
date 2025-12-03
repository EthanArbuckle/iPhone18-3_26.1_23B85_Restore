@interface SFSectionEngagementFeedback
- (SFSectionEngagementFeedback)initWithCoder:(id)coder;
- (SFSectionEngagementFeedback)initWithSection:(id)section triggerEvent:(unint64_t)event;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSectionEngagementFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFSectionEngagementFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_section forKey:{@"_section", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_triggerEvent forKey:@"_triggerEvent"];
}

- (SFSectionEngagementFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFSectionEngagementFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_section"];
    section = v5->_section;
    v5->_section = v6;

    v5->_triggerEvent = [coderCopy decodeIntegerForKey:@"_triggerEvent"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = SFSectionEngagementFeedback;
  v4 = [(SFFeedback *)&v9 copyWithZone:zone];
  section = [(SFSectionEngagementFeedback *)self section];
  v6 = [section copy];
  v7 = v4[3];
  v4[3] = v6;

  v4[4] = [(SFSectionEngagementFeedback *)self triggerEvent];
  return v4;
}

- (SFSectionEngagementFeedback)initWithSection:(id)section triggerEvent:(unint64_t)event
{
  sectionCopy = section;
  v13.receiver = self;
  v13.super_class = SFSectionEngagementFeedback;
  v7 = [(SFFeedback *)&v13 init];
  if (v7)
  {
    v8 = [sectionCopy copy];
    section = v7->_section;
    v7->_section = v8;

    v7->_triggerEvent = event;
    results = [(SFResultSection *)v7->_section results];
    firstObject = [results firstObject];
    v7->super._queryId = [firstObject queryId];
  }

  return v7;
}

@end