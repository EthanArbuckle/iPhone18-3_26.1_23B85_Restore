@interface WBSPasswordPatternMatch
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (WBSPasswordPatternMatch)initWithDictionaryRepresentation:(id)representation;
- (WBSPasswordPatternMatch)initWithType:(unint64_t)type matchedSubstring:(id)substring range:(_NSRange)range guessesRequired:(double)required userInfo:(id)info;
- (_NSRange)range;
- (id)compactDescriptionWithMatchedStringColumnWidth:(unint64_t)width;
- (id)description;
- (id)initExhaustiveSearchPatternWithMatchedSubstring:(id)substring range:(_NSRange)range;
@end

@implementation WBSPasswordPatternMatch

- (WBSPasswordPatternMatch)initWithType:(unint64_t)type matchedSubstring:(id)substring range:(_NSRange)range guessesRequired:(double)required userInfo:(id)info
{
  length = range.length;
  location = range.location;
  substringCopy = substring;
  infoCopy = info;
  v23.receiver = self;
  v23.super_class = WBSPasswordPatternMatch;
  v15 = [(WBSPasswordPatternMatch *)&v23 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = type;
    v17 = [substringCopy copy];
    matchedSubstring = v16->_matchedSubstring;
    v16->_matchedSubstring = v17;

    v16->_range.location = location;
    v16->_range.length = length;
    v16->_guessesRequired = required;
    v19 = [infoCopy copy];
    userInfo = v16->_userInfo;
    v16->_userInfo = v19;

    v21 = v16;
  }

  return v16;
}

- (id)initExhaustiveSearchPatternWithMatchedSubstring:(id)substring range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v8 = __exp10(range.length);

  return [(WBSPasswordPatternMatch *)self initWithType:0 matchedSubstring:substring range:location guessesRequired:length userInfo:0, v8];
}

- (WBSPasswordPatternMatch)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy safari_numberForKey:@"type"];
  v6 = [representationCopy safari_numberForKey:@"rangeLocation"];
  v7 = [representationCopy safari_numberForKey:@"rangeLength"];
  v8 = [representationCopy safari_numberForKey:@"guessesRequired"];
  v9 = [representationCopy objectForKeyedSubscript:@"matchedSubstring"];
  v10 = v9;
  v11 = &stru_1F3064D08;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [representationCopy objectForKeyedSubscript:@"userInfo"];

  selfCopy = 0;
  if (v5 && v6 && v7 && v8)
  {
    integerValue = [v5 integerValue];
    unsignedIntegerValue = [v6 unsignedIntegerValue];
    unsignedIntegerValue2 = [v7 unsignedIntegerValue];
    [v8 doubleValue];
    self = [(WBSPasswordPatternMatch *)self initWithType:integerValue matchedSubstring:v12 range:unsignedIntegerValue guessesRequired:unsignedIntegerValue2 userInfo:v13];
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      userInfo = [(WBSPasswordPatternMatch *)v5 userInfo];
      type = self->_type;
      if (type != [(WBSPasswordPatternMatch *)v5 type])
      {
        v11 = 0;
LABEL_15:

        goto LABEL_16;
      }

      matchedSubstring = self->_matchedSubstring;
      matchedSubstring = [(WBSPasswordPatternMatch *)v5 matchedSubstring];
      if (![(NSString *)matchedSubstring isEqualToString:matchedSubstring])
      {
        goto LABEL_13;
      }

      v11 = 0;
      if (self->_range.location != [(WBSPasswordPatternMatch *)v5 range]|| self->_range.length != v10)
      {
        goto LABEL_14;
      }

      guessesRequired = self->_guessesRequired;
      [(WBSPasswordPatternMatch *)v5 guessesRequired];
      if (guessesRequired == v13)
      {
        userInfo = self->_userInfo;
        if (userInfo | userInfo)
        {
          v11 = [(NSDictionary *)userInfo isEqual:userInfo];
        }

        else
        {
          v11 = 1;
        }
      }

      else
      {
LABEL_13:
        v11 = 0;
      }

LABEL_14:

      goto LABEL_15;
    }

    v11 = 0;
  }

LABEL_16:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = self->_type - 1;
  if (v6 > 4)
  {
    v7 = @"ExhaustiveSearch";
  }

  else
  {
    v7 = off_1E7CF36B0[v6];
  }

  matchedSubstring = self->_matchedSubstring;
  v9 = NSStringFromRange(self->_range);
  v10 = [v3 stringWithFormat:@"<%@: %p type = %@; matchedString = %@; range = %@; guessesRequired = %.0lf; userInfo = %@>", v5, self, v7, matchedSubstring, v9, *&self->_guessesRequired, self->_userInfo];;

  return v10;
}

- (id)compactDescriptionWithMatchedStringColumnWidth:(unint64_t)width
{
  location = self->_range.location;
  if (self->_userInfo)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    userInfo = self->_userInfo;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__WBSPasswordPatternMatch_compactDescriptionWithMatchedStringColumnWidth___block_invoke;
    v16[3] = &unk_1E7CF3690;
    v17 = v6;
    v8 = v6;
    [(NSDictionary *)userInfo enumerateKeysAndObjectsUsingBlock:v16];
    v9 = [v8 componentsJoinedByString:{@", "}];
  }

  else
  {
    v9 = &stru_1F3064D08;
  }

  v10 = MEMORY[0x1E696AEC0];
  uTF8String = [(NSString *)self->_matchedSubstring UTF8String];
  v12 = self->_type - 1;
  if (v12 > 4)
  {
    v13 = @"ExhaustiveSearch";
  }

  else
  {
    v13 = off_1E7CF36B0[v12];
  }

  v14 = [v10 stringWithFormat:@"%*s%-*s | %-16s | %12lg | %@", location, ", width - location, uTF8String, -[__CFString UTF8String](v13, "UTF8String""), *&self->_guessesRequired, v9];

  return v14;
}

void __74__WBSPasswordPatternMatch_compactDescriptionWithMatchedStringColumnWidth___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ = %@", a2, a3];
  [v3 addObject:v4];
}

- (NSDictionary)dictionaryRepresentation
{
  v15[5] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v14[0] = @"type";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  matchedSubstring = self->_matchedSubstring;
  v15[0] = v4;
  v15[1] = matchedSubstring;
  v14[1] = @"matchedSubstring";
  v14[2] = @"rangeLocation";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_range.location];
  v15[2] = v6;
  v14[3] = @"rangeLength";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_range.length];
  v15[3] = v7;
  v14[4] = @"guessesRequired";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_guessesRequired];
  v15[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];
  v10 = [v3 dictionaryWithDictionary:v9];

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [v10 setObject:userInfo forKeyedSubscript:@"userInfo"];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end