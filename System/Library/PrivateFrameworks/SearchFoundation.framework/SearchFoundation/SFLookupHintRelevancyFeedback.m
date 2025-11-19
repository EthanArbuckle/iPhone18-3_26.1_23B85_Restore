@interface SFLookupHintRelevancyFeedback
- (SFLookupHintRelevancyFeedback)initWithCoder:(id)a3;
- (SFLookupHintRelevancyFeedback)initWithContext:(id)a3 hintRange:(_NSRange)a4 domain:(id)a5 discarded:(BOOL)a6 grade:(unint64_t)a7;
- (_NSRange)hintRange;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFLookupHintRelevancyFeedback

- (_NSRange)hintRange
{
  p_hintRange = &self->_hintRange;
  location = self->_hintRange.location;
  length = p_hintRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SFLookupHintRelevancyFeedback;
  v4 = a3;
  [(SFFeedback *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_context forKey:{@"_context", v6.receiver, v6.super_class}];
  v5 = NSStringFromRange(self->_hintRange);
  [v4 encodeObject:v5 forKey:@"_hintRange"];

  [v4 encodeObject:self->_domain forKey:@"_domain"];
  [v4 encodeBool:self->_discarded forKey:@"_discarded"];
  [v4 encodeInteger:self->_grade forKey:@"_grade"];
}

- (SFLookupHintRelevancyFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFLookupHintRelevancyFeedback;
  v5 = [(SFFeedback *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_context"];
    context = v5->_context;
    v5->_context = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_hintRange"];
    v5->_hintRange = NSRangeFromString(v8);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_domain"];
    domain = v5->_domain;
    v5->_domain = v9;

    v5->_discarded = [v4 decodeBoolForKey:@"_discarded"];
    v5->_grade = [v4 decodeIntegerForKey:@"_grade"];
  }

  return v5;
}

- (SFLookupHintRelevancyFeedback)initWithContext:(id)a3 hintRange:(_NSRange)a4 domain:(id)a5 discarded:(BOOL)a6 grade:(unint64_t)a7
{
  length = a4.length;
  location = a4.location;
  v14 = a3;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = SFLookupHintRelevancyFeedback;
  v16 = [(SFFeedback *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_context, a3);
    v17->_hintRange.location = location;
    v17->_hintRange.length = length;
    objc_storeStrong(&v17->_domain, a5);
    v17->_discarded = a6;
    v17->_grade = a7;
  }

  return v17;
}

@end