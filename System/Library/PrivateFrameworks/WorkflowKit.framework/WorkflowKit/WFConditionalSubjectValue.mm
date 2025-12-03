@interface WFConditionalSubjectValue
- (WFConditionalSubjectValue)initWithCoder:(id)coder;
- (WFConditionalSubjectValue)initWithContent:(id)content contentType:(int64_t)type caseInsensitive:(BOOL)insensitive comparableTimeUnits:(unint64_t)units;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFConditionalSubjectValue

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  content = [(WFConditionalSubjectValue *)self content];
  [coderCopy encodeObject:content forKey:@"content"];

  [coderCopy encodeInteger:-[WFConditionalSubjectValue contentType](self forKey:{"contentType"), @"contentType"}];
  [coderCopy encodeBool:-[WFConditionalSubjectValue isCaseInsensitive](self forKey:{"isCaseInsensitive"), @"caseInsensitive"}];
  [coderCopy encodeInteger:-[WFConditionalSubjectValue comparableTimeUnits](self forKey:{"comparableTimeUnits"), @"comparableTimeUnits"}];
}

- (WFConditionalSubjectValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
  v6 = [coderCopy decodeIntegerForKey:@"contentType"];
  v7 = [coderCopy decodeBoolForKey:@"caseInsensitive"];
  v8 = [coderCopy decodeIntegerForKey:@"comparableTimeUnits"];

  if (v5)
  {
    v9 = [(WFConditionalSubjectValue *)self initWithContent:v5 contentType:v6 caseInsensitive:v7 comparableTimeUnits:v8];
  }

  else
  {
    v10 = objc_opt_new();
    v9 = [(WFConditionalSubjectValue *)self initWithContent:v10 contentType:v6 caseInsensitive:v7 comparableTimeUnits:v8];
  }

  return v9;
}

- (WFConditionalSubjectValue)initWithContent:(id)content contentType:(int64_t)type caseInsensitive:(BOOL)insensitive comparableTimeUnits:(unint64_t)units
{
  contentCopy = content;
  if (!contentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFConditionalSubjectParameterState.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"content"}];
  }

  v18.receiver = self;
  v18.super_class = WFConditionalSubjectValue;
  v13 = [(WFConditionalSubjectValue *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_content, content);
    v14->_caseInsensitive = insensitive;
    v14->_contentType = type;
    v14->_comparableTimeUnits = units;
    v15 = v14;
  }

  return v14;
}

@end