@interface _UIMainMenuElementBookkeeping
- (BOOL)isEqual:(id)equal;
- (_UIMainMenuElementBookkeeping)init;
- (id)_initWithMenusForIdentifiers:(id)identifiers deferredElementsForIdentifiers:(id)forIdentifiers commandsForIdentifiers:(id)commandsForIdentifiers parentIdentifiersForIdentifiers:(id)identifiersForIdentifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)removeAllObjects;
@end

@implementation _UIMainMenuElementBookkeeping

- (_UIMainMenuElementBookkeeping)init
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [(_UIMainMenuElementBookkeeping *)self _initWithMenusForIdentifiers:dictionary deferredElementsForIdentifiers:dictionary2 commandsForIdentifiers:dictionary3 parentIdentifiersForIdentifiers:dictionary4];

  return v7;
}

- (id)_initWithMenusForIdentifiers:(id)identifiers deferredElementsForIdentifiers:(id)forIdentifiers commandsForIdentifiers:(id)commandsForIdentifiers parentIdentifiersForIdentifiers:(id)identifiersForIdentifiers
{
  identifiersCopy = identifiers;
  forIdentifiersCopy = forIdentifiers;
  commandsForIdentifiersCopy = commandsForIdentifiers;
  identifiersForIdentifiersCopy = identifiersForIdentifiers;
  v18.receiver = self;
  v18.super_class = _UIMainMenuElementBookkeeping;
  v15 = [(_UIMainMenuElementBookkeeping *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_menusForIdentifiers, identifiers);
    objc_storeStrong(p_isa + 2, forIdentifiers);
    objc_storeStrong(p_isa + 3, commandsForIdentifiers);
    objc_storeStrong(p_isa + 4, identifiersForIdentifiers);
  }

  return p_isa;
}

- (void)removeAllObjects
{
  [(NSMutableDictionary *)self->_menusForIdentifiers removeAllObjects];
  [(NSMutableDictionary *)self->_deferredElementsForIdentifiers removeAllObjects];
  [(NSMutableDictionary *)self->_commandsForIdentifiers removeAllObjects];
  parentIdentifiersForIdentifiers = self->_parentIdentifiersForIdentifiers;

  [(NSMutableDictionary *)parentIdentifiersForIdentifiers removeAllObjects];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      menusForIdentifiers = v7->_menusForIdentifiers;
      v9 = self->_menusForIdentifiers;
      v10 = menusForIdentifiers;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        if (!v9 || !v10)
        {
          goto LABEL_28;
        }

        v12 = [(NSMutableDictionary *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_29;
        }
      }

      deferredElementsForIdentifiers = v7->_deferredElementsForIdentifiers;
      v9 = self->_deferredElementsForIdentifiers;
      v14 = deferredElementsForIdentifiers;
      v11 = v14;
      if (v9 == v14)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        if (!v9 || !v14)
        {
          goto LABEL_28;
        }

        v12 = [(NSMutableDictionary *)v9 isEqual:v14];

        if (!v12)
        {
          goto LABEL_29;
        }
      }

      commandsForIdentifiers = v7->_commandsForIdentifiers;
      v9 = self->_commandsForIdentifiers;
      v16 = commandsForIdentifiers;
      v11 = v16;
      if (v9 == v16)
      {

LABEL_23:
        parentIdentifiersForIdentifiers = self->_parentIdentifiersForIdentifiers;
        v18 = v7->_parentIdentifiersForIdentifiers;
        v9 = parentIdentifiersForIdentifiers;
        v19 = v18;
        v11 = v19;
        if (v9 == v19)
        {
          LOBYTE(v12) = 1;
        }

        else
        {
          LOBYTE(v12) = 0;
          if (v9 && v19)
          {
            LOBYTE(v12) = [(NSMutableDictionary *)v9 isEqual:v19];
          }
        }

        goto LABEL_28;
      }

      LOBYTE(v12) = 0;
      if (v9 && v16)
      {
        v12 = [(NSMutableDictionary *)v9 isEqual:v16];

        if (!v12)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }

LABEL_28:

LABEL_29:
      goto LABEL_30;
    }

    LOBYTE(v12) = 0;
  }

LABEL_30:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSMutableDictionary *)self->_menusForIdentifiers hash];
  v4 = [(NSMutableDictionary *)self->_deferredElementsForIdentifiers hash]^ v3;
  v5 = [(NSMutableDictionary *)self->_commandsForIdentifiers hash];
  return v4 ^ v5 ^ [(NSMutableDictionary *)self->_parentIdentifiersForIdentifiers hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UIMainMenuElementBookkeeping alloc];
  v5 = [(NSMutableDictionary *)self->_menusForIdentifiers mutableCopy];
  v6 = [(NSMutableDictionary *)self->_deferredElementsForIdentifiers mutableCopy];
  v7 = [(NSMutableDictionary *)self->_commandsForIdentifiers mutableCopy];
  v8 = [(NSMutableDictionary *)self->_parentIdentifiersForIdentifiers mutableCopy];
  v9 = [(_UIMainMenuElementBookkeeping *)v4 _initWithMenusForIdentifiers:v5 deferredElementsForIdentifiers:v6 commandsForIdentifiers:v7 parentIdentifiersForIdentifiers:v8];

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendDictionarySection:self->_menusForIdentifiers withName:@"menusForIdentifiers" skipIfEmpty:0];
  [v3 appendDictionarySection:self->_deferredElementsForIdentifiers withName:@"deferredElementsForIdentifiers" skipIfEmpty:0];
  [v3 appendDictionarySection:self->_commandsForIdentifiers withName:@"commandsForIdentifiers" skipIfEmpty:0];
  [v3 appendDictionarySection:self->_parentIdentifiersForIdentifiers withName:@"parentIdentifiersForIdentifiers" skipIfEmpty:0];
  build = [v3 build];

  return build;
}

@end