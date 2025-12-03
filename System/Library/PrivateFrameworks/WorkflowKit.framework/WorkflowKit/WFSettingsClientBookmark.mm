@interface WFSettingsClientBookmark
- (WFSettingsClientBookmark)initWithActionReversalState:(id)state;
- (WFSettingsClientBookmark)initWithBiomeBookmark:(id)bookmark;
- (WFSettingsClientBookmark)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSettingsClientBookmark

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  biomeBookmark = [(WFSettingsClientBookmark *)self biomeBookmark];
  [coderCopy encodeObject:biomeBookmark forKey:@"biomeBookmark"];
}

- (WFSettingsClientBookmark)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AB10];
  coderCopy = coder;
  bm_allowedClassesForSecureCodingBMBookmark = [v4 bm_allowedClassesForSecureCodingBMBookmark];
  v7 = [coderCopy decodeObjectOfClasses:bm_allowedClassesForSecureCodingBMBookmark forKey:@"biomeBookmark"];

  if (v7)
  {
    self = [(WFSettingsClientBookmark *)self initWithBiomeBookmark:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFSettingsClientBookmark)initWithBiomeBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v10.receiver = self;
  v10.super_class = WFSettingsClientBookmark;
  v6 = [(WFSettingsClientBookmark *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_biomeBookmark, bookmark);
    v8 = v7;
  }

  return v7;
}

- (WFSettingsClientBookmark)initWithActionReversalState:(id)state
{
  stateCopy = state;
  v6 = stateCopy;
  if (!stateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSettingsClientBookmark+WFActionReversalState.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"reversalState"}];

    goto LABEL_5;
  }

  v7 = stateCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_5:

    v7 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:0];
LABEL_6:

  return v8;
}

@end