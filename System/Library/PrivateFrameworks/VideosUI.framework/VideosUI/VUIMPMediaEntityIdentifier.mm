@interface VUIMPMediaEntityIdentifier
+ (id)mediaItemIdentifierWithMediaItem:(id)item;
+ (id)showIdentifierWithMediaItem:(id)item;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (VUIMPMediaEntityIdentifier)init;
- (VUIMPMediaEntityIdentifier)initWithPersistentID:(id)d mediaEntityType:(id)type;
- (unint64_t)hash;
@end

@implementation VUIMPMediaEntityIdentifier

+ (id)showIdentifierWithMediaItem:(id)item
{
  v3 = [item valueForProperty:*MEMORY[0x1E696F938]];
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

+ (id)mediaItemIdentifierWithMediaItem:(id)item
{
  v3 = *MEMORY[0x1E696FA98];
  itemCopy = item;
  v5 = [itemCopy valueForProperty:v3];
  vui_mediaEntityType = [itemCopy vui_mediaEntityType];

  if (v5)
  {
    v7 = vui_mediaEntityType == 0;
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
    v8 = [[VUIMPMediaEntityIdentifier alloc] initWithPersistentID:v5 mediaEntityType:vui_mediaEntityType];
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

- (VUIMPMediaEntityIdentifier)initWithPersistentID:(id)d mediaEntityType:(id)type
{
  dCopy = d;
  typeCopy = type;
  if (!dCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"persistentID"}];
  }

  v14.receiver = self;
  v14.super_class = VUIMPMediaEntityIdentifier;
  v8 = [(VUIMPMediaEntityIdentifier *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    persistentID = v8->_persistentID;
    v8->_persistentID = v9;

    v11 = [typeCopy copy];
    mediaEntityType = v8->_mediaEntityType;
    v8->_mediaEntityType = v11;
  }

  return v8;
}

- (unint64_t)hash
{
  persistentID = [(VUIMPMediaEntityIdentifier *)self persistentID];
  v4 = [persistentID hash];

  mediaEntityType = [(VUIMPMediaEntityIdentifier *)self mediaEntityType];
  v6 = [mediaEntityType hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        persistentID = [(VUIMPMediaEntityIdentifier *)self persistentID];
        persistentID2 = [(VUIMPMediaEntityIdentifier *)v6 persistentID];
        v9 = persistentID;
        v10 = persistentID2;
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

        mediaEntityType = [(VUIMPMediaEntityIdentifier *)self mediaEntityType];
        mediaEntityType2 = [(VUIMPMediaEntityIdentifier *)v6 mediaEntityType];
        v9 = mediaEntityType;
        v16 = mediaEntityType2;
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
  persistentID = [(VUIMPMediaEntityIdentifier *)self persistentID];
  v7 = [v5 stringWithFormat:@"%@=%@", @"persistentID", persistentID];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  mediaEntityType = [(VUIMPMediaEntityIdentifier *)self mediaEntityType];
  v10 = [v8 stringWithFormat:@"%@=%@", @"mediaEntityType", mediaEntityType];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

@end