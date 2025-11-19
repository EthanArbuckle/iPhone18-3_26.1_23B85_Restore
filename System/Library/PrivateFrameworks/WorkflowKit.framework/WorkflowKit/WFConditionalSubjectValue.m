@interface WFConditionalSubjectValue
- (WFConditionalSubjectValue)initWithCoder:(id)a3;
- (WFConditionalSubjectValue)initWithContent:(id)a3 contentType:(int64_t)a4 caseInsensitive:(BOOL)a5 comparableTimeUnits:(unint64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFConditionalSubjectValue

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(WFConditionalSubjectValue *)self content];
  [v5 encodeObject:v4 forKey:@"content"];

  [v5 encodeInteger:-[WFConditionalSubjectValue contentType](self forKey:{"contentType"), @"contentType"}];
  [v5 encodeBool:-[WFConditionalSubjectValue isCaseInsensitive](self forKey:{"isCaseInsensitive"), @"caseInsensitive"}];
  [v5 encodeInteger:-[WFConditionalSubjectValue comparableTimeUnits](self forKey:{"comparableTimeUnits"), @"comparableTimeUnits"}];
}

- (WFConditionalSubjectValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
  v6 = [v4 decodeIntegerForKey:@"contentType"];
  v7 = [v4 decodeBoolForKey:@"caseInsensitive"];
  v8 = [v4 decodeIntegerForKey:@"comparableTimeUnits"];

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

- (WFConditionalSubjectValue)initWithContent:(id)a3 contentType:(int64_t)a4 caseInsensitive:(BOOL)a5 comparableTimeUnits:(unint64_t)a6
{
  v12 = a3;
  if (!v12)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFConditionalSubjectParameterState.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"content"}];
  }

  v18.receiver = self;
  v18.super_class = WFConditionalSubjectValue;
  v13 = [(WFConditionalSubjectValue *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_content, a3);
    v14->_caseInsensitive = a5;
    v14->_contentType = a4;
    v14->_comparableTimeUnits = a6;
    v15 = v14;
  }

  return v14;
}

@end