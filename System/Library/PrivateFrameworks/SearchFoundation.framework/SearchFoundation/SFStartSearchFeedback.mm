@interface SFStartSearchFeedback
- (SFStartSearchFeedback)initWithCoder:(id)a3;
- (SFStartSearchFeedback)initWithInput:(id)a3 triggerEvent:(unint64_t)a4;
- (SFStartSearchFeedback)initWithInput:(id)a3 triggerEvent:(unint64_t)a4 queryId:(unint64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFStartSearchFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFStartSearchFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_input forKey:{@"input", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_uuid forKey:@"uuid"];
  [v4 encodeInteger:self->_triggerEvent forKey:@"trigger_event"];
  [v4 encodeInteger:self->_searchType forKey:@"_searchType"];
}

- (SFStartSearchFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SFStartSearchFeedback;
  v5 = [(SFFeedback *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"input"];
    input = v5->_input;
    v5->_input = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v5->_triggerEvent = [v4 decodeIntegerForKey:@"trigger_event"];
    v5->_searchType = [v4 decodeIntegerForKey:@"_searchType"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SFStartSearchFeedback;
  v4 = [(SFFeedback *)&v8 description];
  v5 = [(SFStartSearchFeedback *)self input];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, v5];

  return v6;
}

- (SFStartSearchFeedback)initWithInput:(id)a3 triggerEvent:(unint64_t)a4 queryId:(unint64_t)a5
{
  result = [(SFStartSearchFeedback *)self initWithInput:a3 triggerEvent:a4];
  if (result)
  {
    result->super._queryId = a5;
  }

  return result;
}

- (SFStartSearchFeedback)initWithInput:(id)a3 triggerEvent:(unint64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = SFStartSearchFeedback;
  v7 = [(SFFeedback *)&v14 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    uuid = v7->_uuid;
    v7->_uuid = v9;

    v11 = [v6 copy];
    input = v7->_input;
    v7->_input = v11;

    v7->_triggerEvent = a4;
  }

  return v7;
}

@end