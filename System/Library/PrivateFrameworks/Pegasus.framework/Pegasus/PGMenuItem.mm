@interface PGMenuItem
- (PGMenuItem)initWithDictionary:(id)dictionary action:(id)action;
- (PGMenuItem)initWithTitle:(id)title symbolName:(id)name action:(id)action;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (int64_t)identifier;
@end

@implementation PGMenuItem

- (PGMenuItem)initWithTitle:(id)title symbolName:(id)name action:(id)action
{
  v21[3] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  nameCopy = name;
  actionCopy = action;
  v19.receiver = self;
  v19.super_class = PGMenuItem;
  v11 = [(PGMenuItem *)&v19 init];
  if (v11)
  {
    if (PGMenuItemIdentifier == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0;
    }

    else
    {
      v12 = PGMenuItemIdentifier + 1;
    }

    PGMenuItemIdentifier = v12;
    v20[0] = &unk_1F39590F8;
    v20[1] = &unk_1F3959110;
    v21[0] = titleCopy;
    v21[1] = nameCopy;
    v20[2] = &unk_1F3959128;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v21[2] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
    dictionaryRepresentation = v11->_dictionaryRepresentation;
    v11->_dictionaryRepresentation = v14;

    v16 = MEMORY[0x1BFB0C680](actionCopy);
    action = v11->_action;
    v11->_action = v16;
  }

  return v11;
}

- (PGMenuItem)initWithDictionary:(id)dictionary action:(id)action
{
  dictionaryCopy = dictionary;
  actionCopy = action;
  v14.receiver = self;
  v14.super_class = PGMenuItem;
  v8 = [(PGMenuItem *)&v14 init];
  if (v8)
  {
    v9 = [dictionaryCopy copy];
    dictionaryRepresentation = v8->_dictionaryRepresentation;
    v8->_dictionaryRepresentation = v9;

    v11 = MEMORY[0x1BFB0C680](actionCopy);
    action = v8->_action;
    v8->_action = v11;
  }

  return v8;
}

- (int64_t)identifier
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKey:&unk_1F3959128];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PGMenuItem *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PGMenuItem *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(PGMenuItem *)self succinctDescriptionBuilder];
  title = [(PGMenuItem *)self title];
  [succinctDescriptionBuilder appendString:title withName:@"title"];

  symbolName = [(PGMenuItem *)self symbolName];
  [succinctDescriptionBuilder appendString:symbolName withName:@"symbolName"];

  v7 = [succinctDescriptionBuilder appendInteger:-[PGMenuItem identifier](self withName:{"identifier"), @"identifier"}];

  return succinctDescriptionBuilder;
}

@end