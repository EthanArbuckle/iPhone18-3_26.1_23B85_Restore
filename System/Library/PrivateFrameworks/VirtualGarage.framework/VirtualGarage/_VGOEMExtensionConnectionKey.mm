@interface _VGOEMExtensionConnectionKey
- (BOOL)isEqual:(id)a3;
- (_VGOEMExtensionConnectionKey)initWithIntent:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _VGOEMExtensionConnectionKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5[1];
    intent = self->_intent;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(INIntent *)self->_intent launchId];
      v9 = [v5[1] launchId];
      v10 = [v8 isEqualToString:v9];

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
          v17 = [(INIntent *)v16 carName];
          v18 = [v15 carName];

          v12 = [v17 isEqual:v18];
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
    v6 = [(INIntent *)v5 launchId];
    v7 = [v6 hash];
  }

  else
  {
    v8 = v5;
    v6 = [(INIntent *)v8 launchId];
    v9 = [v6 hash];
    v10 = [(INIntent *)v8 carName];

    v7 = [v10 hash] ^ v9;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  intent = self->_intent;
  v6 = [(INIntent *)intent launchId];
  v7 = [v3 stringWithFormat:@"<%@ %p, intent: %@, id: %@, hash: %lu>", v4, self, intent, v6, -[_VGOEMExtensionConnectionKey hash](self, "hash")];

  return v7;
}

- (_VGOEMExtensionConnectionKey)initWithIntent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _VGOEMExtensionConnectionKey;
  v6 = [(_VGOEMExtensionConnectionKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_intent, a3);
  }

  return v7;
}

@end