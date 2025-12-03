@interface SFResultEngagementFeedback
- (SFResultEngagementFeedback)initWithCoder:(id)coder;
- (SFResultEngagementFeedback)initWithResult:(id)result triggerEvent:(unint64_t)event destination:(unint64_t)destination;
- (SFResultEngagementFeedback)initWithResult:(id)result triggerEvent:(unint64_t)event destination:(unint64_t)destination actionTarget:(unint64_t)target;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFResultEngagementFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFResultEngagementFeedback;
  coderCopy = coder;
  [(SFResultFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_actionEngaged forKey:{@"action_engaged", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_triggerEvent forKey:@"trigger_event"];
  [coderCopy encodeInteger:self->_destination forKey:@"_destination"];
  [coderCopy encodeInteger:self->_actionTarget forKey:@"_actionTarget"];
  [coderCopy encodeBool:self->_matchesUnengagedSuggestion forKey:@"_matchesUnengagedSuggestion"];
}

- (SFResultEngagementFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SFResultEngagementFeedback;
  v5 = [(SFResultFeedback *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_actionEngaged = [coderCopy decodeBoolForKey:@"action_engaged"];
    v5->_triggerEvent = [coderCopy decodeIntegerForKey:@"trigger_event"];
    v5->_destination = [coderCopy decodeIntegerForKey:@"_destination"];
    v5->_actionTarget = [coderCopy decodeIntegerForKey:@"_actionTarget"];
    v5->_matchesUnengagedSuggestion = [coderCopy decodeBoolForKey:@"_matchesUnengagedSuggestion"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SFResultEngagementFeedback;
  v4 = [(SFResultFeedback *)&v6 copyWithZone:zone];
  v4[5] = [(SFResultEngagementFeedback *)self triggerEvent];
  v4[6] = [(SFResultEngagementFeedback *)self destination];
  v4[7] = [(SFResultEngagementFeedback *)self actionTarget];
  *(v4 + 32) = [(SFResultEngagementFeedback *)self actionEngaged];
  *(v4 + 33) = [(SFResultEngagementFeedback *)self matchesUnengagedSuggestion];
  return v4;
}

- (SFResultEngagementFeedback)initWithResult:(id)result triggerEvent:(unint64_t)event destination:(unint64_t)destination actionTarget:(unint64_t)target
{
  v10.receiver = self;
  v10.super_class = SFResultEngagementFeedback;
  result = [(SFResultFeedback *)&v10 initWithResult:result];
  if (result)
  {
    result->_actionEngaged = 1;
    result->_triggerEvent = event;
    result->_destination = destination;
    result->_actionTarget = target;
  }

  return result;
}

- (SFResultEngagementFeedback)initWithResult:(id)result triggerEvent:(unint64_t)event destination:(unint64_t)destination
{
  v8.receiver = self;
  v8.super_class = SFResultEngagementFeedback;
  result = [(SFResultFeedback *)&v8 initWithResult:result];
  if (result)
  {
    result->_actionEngaged = 0;
    result->_triggerEvent = event;
    result->_destination = destination;
    result->_actionTarget = 0;
  }

  return result;
}

@end