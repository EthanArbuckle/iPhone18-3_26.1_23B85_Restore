@interface PRUISIncomingCallPosterContextNameVariations
- (BOOL)isEqual:(id)a3;
- (PRUISIncomingCallPosterContextNameVariations)initWithNamesDictionary:(id)a3;
- (id)nameForStyle:(int64_t)a3;
- (unint64_t)hash;
@end

@implementation PRUISIncomingCallPosterContextNameVariations

- (PRUISIncomingCallPosterContextNameVariations)initWithNamesDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PRUISIncomingCallPosterContextNameVariations;
  v5 = [(PRUISIncomingCallPosterContextNameVariations *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    namesDictionary = v5->_namesDictionary;
    v5->_namesDictionary = v6;
  }

  return v5;
}

- (id)nameForStyle:(int64_t)a3
{
  namesDictionary = self->_namesDictionary;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSDictionary *)namesDictionary objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 namesDictionary];
    v6 = [(PRUISIncomingCallPosterContextNameVariations *)self namesDictionary];
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_namesDictionary];
  v5 = [v3 hash];

  return v5;
}

@end