@interface SFSectionEngagementFeedback
- (SFSectionEngagementFeedback)initWithCoder:(id)a3;
- (SFSectionEngagementFeedback)initWithSection:(id)a3 triggerEvent:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSectionEngagementFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFSectionEngagementFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_section forKey:{@"_section", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_triggerEvent forKey:@"_triggerEvent"];
}

- (SFSectionEngagementFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFSectionEngagementFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_section"];
    section = v5->_section;
    v5->_section = v6;

    v5->_triggerEvent = [v4 decodeIntegerForKey:@"_triggerEvent"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = SFSectionEngagementFeedback;
  v4 = [(SFFeedback *)&v9 copyWithZone:a3];
  v5 = [(SFSectionEngagementFeedback *)self section];
  v6 = [v5 copy];
  v7 = v4[3];
  v4[3] = v6;

  v4[4] = [(SFSectionEngagementFeedback *)self triggerEvent];
  return v4;
}

- (SFSectionEngagementFeedback)initWithSection:(id)a3 triggerEvent:(unint64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = SFSectionEngagementFeedback;
  v7 = [(SFFeedback *)&v13 init];
  if (v7)
  {
    v8 = [v6 copy];
    section = v7->_section;
    v7->_section = v8;

    v7->_triggerEvent = a4;
    v10 = [(SFResultSection *)v7->_section results];
    v11 = [v10 firstObject];
    v7->super._queryId = [v11 queryId];
  }

  return v7;
}

@end