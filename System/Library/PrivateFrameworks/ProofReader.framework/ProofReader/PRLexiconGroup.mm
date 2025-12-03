@interface PRLexiconGroup
- (PRLexiconGroup)initWithLocalization:(id)localization lexicons:(id)lexicons cachedOnly:(BOOL)only;
- (id)description;
- (void)dealloc;
@end

@implementation PRLexiconGroup

- (PRLexiconGroup)initWithLocalization:(id)localization lexicons:(id)lexicons cachedOnly:(BOOL)only
{
  v10.receiver = self;
  v10.super_class = PRLexiconGroup;
  v8 = [(PRLexiconGroup *)&v10 init];
  if (v8)
  {
    v8->_localization = [localization copy];
    v8->_lexicons = [lexicons copy];
    v8->_cachedOnly = only;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PRLexiconGroup;
  v4 = [(PRLexiconGroup *)&v8 description];
  localization = [(PRLexiconGroup *)self localization];
  if ([(PRLexiconGroup *)self cachedOnly])
  {
    v6 = @"-cachedOnly";
  }

  else
  {
    v6 = &stru_1F4E0A7A0;
  }

  return [v3 stringWithFormat:@"%@(%@%@)%@", v4, localization, v6, -[PRLexiconGroup lexicons](self, "lexicons")];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRLexiconGroup;
  [(PRLexiconGroup *)&v3 dealloc];
}

@end