@interface _VGOEMExtensionConnectionKey
- (BOOL)isEqual:(id)equal;
- (_VGOEMExtensionConnectionKey)initWithIntent:(id)intent;
- (id)description;
- (unint64_t)hash;
@end

@implementation _VGOEMExtensionConnectionKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5[1];
    intent = self->_intent;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      launchId = [(INIntent *)self->_intent launchId];
      launchId2 = [v5[1] launchId];
      v10 = [launchId isEqualToString:launchId2];

      if (v10)
      {
        v11 = self->_intent;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = 1;
LABEL_10:

          goto LABEL_11;
        }

        v13 = self->_intent;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = self->_intent;
          v15 = v5[1];
          v16 = v14;
          carName = [(INIntent *)v16 carName];
          carName2 = [v15 carName];

          v12 = [carName isEqual:carName2];
          goto LABEL_10;
        }
      }
    }

    v12 = 0;
    goto LABEL_10;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (unint64_t)hash
{
  intent = self->_intent;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = self->_intent;
  if (isKindOfClass)
  {
    launchId = [(INIntent *)v5 launchId];
    v7 = [launchId hash];
  }

  else
  {
    v8 = v5;
    launchId = [(INIntent *)v8 launchId];
    v9 = [launchId hash];
    carName = [(INIntent *)v8 carName];

    v7 = [carName hash] ^ v9;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  intent = self->_intent;
  launchId = [(INIntent *)intent launchId];
  v7 = [v3 stringWithFormat:@"<%@ %p, intent: %@, id: %@, hash: %lu>", v4, self, intent, launchId, -[_VGOEMExtensionConnectionKey hash](self, "hash")];

  return v7;
}

- (_VGOEMExtensionConnectionKey)initWithIntent:(id)intent
{
  intentCopy = intent;
  v9.receiver = self;
  v9.super_class = _VGOEMExtensionConnectionKey;
  v6 = [(_VGOEMExtensionConnectionKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_intent, intent);
  }

  return v7;
}

@end