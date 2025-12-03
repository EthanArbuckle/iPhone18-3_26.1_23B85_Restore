@interface PRUISIncomingCallPosterContextNameVariations
- (BOOL)isEqual:(id)equal;
- (PRUISIncomingCallPosterContextNameVariations)initWithNamesDictionary:(id)dictionary;
- (id)nameForStyle:(int64_t)style;
- (unint64_t)hash;
@end

@implementation PRUISIncomingCallPosterContextNameVariations

- (PRUISIncomingCallPosterContextNameVariations)initWithNamesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PRUISIncomingCallPosterContextNameVariations;
  v5 = [(PRUISIncomingCallPosterContextNameVariations *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    namesDictionary = v5->_namesDictionary;
    v5->_namesDictionary = v6;
  }

  return v5;
}

- (id)nameForStyle:(int64_t)style
{
  namesDictionary = self->_namesDictionary;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  v5 = [(NSDictionary *)namesDictionary objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    namesDictionary = [equalCopy namesDictionary];
    namesDictionary2 = [(PRUISIncomingCallPosterContextNameVariations *)self namesDictionary];
    v7 = BSEqualDictionaries();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_namesDictionary];
  v5 = [builder hash];

  return v5;
}

@end