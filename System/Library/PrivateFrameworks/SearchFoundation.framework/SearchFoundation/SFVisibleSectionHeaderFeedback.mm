@interface SFVisibleSectionHeaderFeedback
- (SFVisibleSectionHeaderFeedback)initWithCoder:(id)coder;
- (SFVisibleSectionHeaderFeedback)initWithSection:(id)section headerType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFVisibleSectionHeaderFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFVisibleSectionHeaderFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_section forKey:{@"_section", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_headerType forKey:@"_headerType"];
}

- (SFVisibleSectionHeaderFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFVisibleSectionHeaderFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_section"];
    section = v5->_section;
    v5->_section = v6;

    v5->_headerType = [coderCopy decodeIntegerForKey:@"_headerType"];
  }

  return v5;
}

- (SFVisibleSectionHeaderFeedback)initWithSection:(id)section headerType:(unint64_t)type
{
  sectionCopy = section;
  v13.receiver = self;
  v13.super_class = SFVisibleSectionHeaderFeedback;
  v7 = [(SFFeedback *)&v13 init];
  if (v7)
  {
    v8 = [sectionCopy copy];
    section = v7->_section;
    v7->_section = v8;

    v7->_headerType = type;
    results = [(SFResultSection *)v7->_section results];
    firstObject = [results firstObject];
    v7->super._queryId = [firstObject queryId];
  }

  return v7;
}

@end