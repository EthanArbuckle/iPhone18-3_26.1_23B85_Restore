@interface VUIMPMediaEntityIdentifier
+ (id)mediaItemIdentifierWithMediaItem:(id)a3;
+ (id)showIdentifierWithMediaItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (VUIMPMediaEntityIdentifier)init;
- (VUIMPMediaEntityIdentifier)initWithPersistentID:(id)a3 mediaEntityType:(id)a4;
- (unint64_t)hash;
@end

@implementation VUIMPMediaEntityIdentifier

+ (id)showIdentifierWithMediaItem:(id)a3
{
  v3 = [a3 valueForProperty:*MEMORY[0x1E696F938]];
  if (v3)
  {
    v4 = [VUIMPMediaEntityIdentifier alloc];
    v5 = +[VUIMediaEntityType show];
    v6 = [(VUIMPMediaEntityIdentifier *)v4 initWithPersistentID:v3 mediaEntityType:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)mediaItemIdentifierWithMediaItem:(id)a3
{
  v3 = *MEMORY[0x1E696FA98];
  v4 = a3;
  v5 = [v4 valueForProperty:v3];
  v6 = [v4 vui_mediaEntityType];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [[VUIMPMediaEntityIdentifier alloc] initWithPersistentID:v5 mediaEntityType:v6];
  }

  return v8;
}

- (VUIMPMediaEntityIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMPMediaEntityIdentifier)initWithPersistentID:(id)a3 mediaEntityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"persistentID"}];
  }

  v14.receiver = self;
  v14.super_class = VUIMPMediaEntityIdentifier;
  v8 = [(VUIMPMediaEntityIdentifier *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    persistentID = v8->_persistentID;
    v8->_persistentID = v9;

    v11 = [v7 copy];
    mediaEntityType = v8->_mediaEntityType;
    v8->_mediaEntityType = v11;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(VUIMPMediaEntityIdentifier *)self persistentID];
  v4 = [v3 hash];

  v5 = [(VUIMPMediaEntityIdentifier *)self mediaEntityType];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(VUIMPMediaEntityIdentifier *)self persistentID];
        v8 = [(VUIMPMediaEntityIdentifier *)v6 persistentID];
        v9 = v7;
        v10 = v8;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v10)
          {
LABEL_17:

            goto LABEL_18;
          }

          v13 = [v9 isEqual:v10];

          if ((v13 & 1) == 0)
          {
            v12 = 0;
LABEL_18:

            goto LABEL_19;
          }
        }

        v14 = [(VUIMPMediaEntityIdentifier *)self mediaEntityType];
        v15 = [(VUIMPMediaEntityIdentifier *)v6 mediaEntityType];
        v9 = v14;
        v16 = v15;
        v11 = v16;
        if (v9 == v16)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0;
          if (v9 && v16)
          {
            v12 = [v9 isEqual:v16];
          }
        }

        goto LABEL_17;
      }
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15.receiver = self;
  v15.super_class = VUIMPMediaEntityIdentifier;
  v4 = [(VUIMPMediaEntityIdentifier *)&v15 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIMPMediaEntityIdentifier *)self persistentID];
  v7 = [v5 stringWithFormat:@"%@=%@", @"persistentID", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(VUIMPMediaEntityIdentifier *)self mediaEntityType];
  v10 = [v8 stringWithFormat:@"%@=%@", @"mediaEntityType", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

@end