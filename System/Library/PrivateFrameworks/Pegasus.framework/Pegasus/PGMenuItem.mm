@interface PGMenuItem
- (PGMenuItem)initWithDictionary:(id)a3 action:(id)a4;
- (PGMenuItem)initWithTitle:(id)a3 symbolName:(id)a4 action:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (int64_t)identifier;
@end

@implementation PGMenuItem

- (PGMenuItem)initWithTitle:(id)a3 symbolName:(id)a4 action:(id)a5
{
  v21[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v21[0] = v8;
    v21[1] = v9;
    v20[2] = &unk_1F3959128;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v21[2] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
    dictionaryRepresentation = v11->_dictionaryRepresentation;
    v11->_dictionaryRepresentation = v14;

    v16 = MEMORY[0x1BFB0C680](v10);
    action = v11->_action;
    v11->_action = v16;
  }

  return v11;
}

- (PGMenuItem)initWithDictionary:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PGMenuItem;
  v8 = [(PGMenuItem *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    dictionaryRepresentation = v8->_dictionaryRepresentation;
    v8->_dictionaryRepresentation = v9;

    v11 = MEMORY[0x1BFB0C680](v7);
    action = v8->_action;
    v8->_action = v11;
  }

  return v8;
}

- (int64_t)identifier
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKey:&unk_1F3959128];
  v3 = [v2 integerValue];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(PGMenuItem *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PGMenuItem *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(PGMenuItem *)self succinctDescriptionBuilder];
  v5 = [(PGMenuItem *)self title];
  [v4 appendString:v5 withName:@"title"];

  v6 = [(PGMenuItem *)self symbolName];
  [v4 appendString:v6 withName:@"symbolName"];

  v7 = [v4 appendInteger:-[PGMenuItem identifier](self withName:{"identifier"), @"identifier"}];

  return v4;
}

@end