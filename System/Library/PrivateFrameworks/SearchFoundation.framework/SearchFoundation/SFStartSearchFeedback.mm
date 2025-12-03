@interface SFStartSearchFeedback
- (SFStartSearchFeedback)initWithCoder:(id)coder;
- (SFStartSearchFeedback)initWithInput:(id)input triggerEvent:(unint64_t)event;
- (SFStartSearchFeedback)initWithInput:(id)input triggerEvent:(unint64_t)event queryId:(unint64_t)id;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFStartSearchFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFStartSearchFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_input forKey:{@"input", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_uuid forKey:@"uuid"];
  [coderCopy encodeInteger:self->_triggerEvent forKey:@"trigger_event"];
  [coderCopy encodeInteger:self->_searchType forKey:@"_searchType"];
}

- (SFStartSearchFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SFStartSearchFeedback;
  v5 = [(SFFeedback *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"input"];
    input = v5->_input;
    v5->_input = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v5->_triggerEvent = [coderCopy decodeIntegerForKey:@"trigger_event"];
    v5->_searchType = [coderCopy decodeIntegerForKey:@"_searchType"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SFStartSearchFeedback;
  v4 = [(SFFeedback *)&v8 description];
  input = [(SFStartSearchFeedback *)self input];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, input];

  return v6;
}

- (SFStartSearchFeedback)initWithInput:(id)input triggerEvent:(unint64_t)event queryId:(unint64_t)id
{
  result = [(SFStartSearchFeedback *)self initWithInput:input triggerEvent:event];
  if (result)
  {
    result->super._queryId = id;
  }

  return result;
}

- (SFStartSearchFeedback)initWithInput:(id)input triggerEvent:(unint64_t)event
{
  inputCopy = input;
  v14.receiver = self;
  v14.super_class = SFStartSearchFeedback;
  v7 = [(SFFeedback *)&v14 init];
  if (v7)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    uuid = v7->_uuid;
    v7->_uuid = uUIDString;

    v11 = [inputCopy copy];
    input = v7->_input;
    v7->_input = v11;

    v7->_triggerEvent = event;
  }

  return v7;
}

@end