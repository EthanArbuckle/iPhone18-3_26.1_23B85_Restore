@interface SFLookupHintRelevancyFeedback
- (SFLookupHintRelevancyFeedback)initWithCoder:(id)coder;
- (SFLookupHintRelevancyFeedback)initWithContext:(id)context hintRange:(_NSRange)range domain:(id)domain discarded:(BOOL)discarded grade:(unint64_t)grade;
- (_NSRange)hintRange;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SFLookupHintRelevancyFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_context forKey:{@"_context", v6.receiver, v6.super_class}];
  v5 = NSStringFromRange(self->_hintRange);
  [coderCopy encodeObject:v5 forKey:@"_hintRange"];

  [coderCopy encodeObject:self->_domain forKey:@"_domain"];
  [coderCopy encodeBool:self->_discarded forKey:@"_discarded"];
  [coderCopy encodeInteger:self->_grade forKey:@"_grade"];
}

- (SFLookupHintRelevancyFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SFLookupHintRelevancyFeedback;
  v5 = [(SFFeedback *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_context"];
    context = v5->_context;
    v5->_context = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hintRange"];
    v5->_hintRange = NSRangeFromString(v8);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_domain"];
    domain = v5->_domain;
    v5->_domain = v9;

    v5->_discarded = [coderCopy decodeBoolForKey:@"_discarded"];
    v5->_grade = [coderCopy decodeIntegerForKey:@"_grade"];
  }

  return v5;
}

- (SFLookupHintRelevancyFeedback)initWithContext:(id)context hintRange:(_NSRange)range domain:(id)domain discarded:(BOOL)discarded grade:(unint64_t)grade
{
  length = range.length;
  location = range.location;
  contextCopy = context;
  domainCopy = domain;
  v19.receiver = self;
  v19.super_class = SFLookupHintRelevancyFeedback;
  v16 = [(SFFeedback *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_context, context);
    v17->_hintRange.location = location;
    v17->_hintRange.length = length;
    objc_storeStrong(&v17->_domain, domain);
    v17->_discarded = discarded;
    v17->_grade = grade;
  }

  return v17;
}

@end