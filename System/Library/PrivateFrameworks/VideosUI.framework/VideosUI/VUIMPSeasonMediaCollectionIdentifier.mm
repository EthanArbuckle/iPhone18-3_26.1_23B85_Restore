@interface VUIMPSeasonMediaCollectionIdentifier
+ (id)seasonIdentifierWithMediaItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (VUIMPSeasonMediaCollectionIdentifier)initWithPersistentID:(id)a3 mediaEntityType:(id)a4;
- (VUIMPSeasonMediaCollectionIdentifier)initWithPersistentID:(id)a3 seasonNumber:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation VUIMPSeasonMediaCollectionIdentifier

+ (id)seasonIdentifierWithMediaItem:(id)a3
{
  v3 = *MEMORY[0x1E696F938];
  v4 = a3;
  v5 = [v4 valueForProperty:v3];
  v6 = [v4 valueForProperty:*MEMORY[0x1E696FB10]];

  if (v5)
  {
    v7 = [[VUIMPSeasonMediaCollectionIdentifier alloc] initWithPersistentID:v5 seasonNumber:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (VUIMPSeasonMediaCollectionIdentifier)initWithPersistentID:(id)a3 mediaEntityType:(id)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The %@ initializer is not available.", v7}];

  return 0;
}

- (VUIMPSeasonMediaCollectionIdentifier)initWithPersistentID:(id)a3 seasonNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"persistentID"}];
  }

  v8 = +[VUIMediaEntityType season];
  v13.receiver = self;
  v13.super_class = VUIMPSeasonMediaCollectionIdentifier;
  v9 = [(VUIMPMediaEntityIdentifier *)&v13 initWithPersistentID:v6 mediaEntityType:v8];

  if (v9)
  {
    v10 = [v7 copy];
    seasonNumber = v9->_seasonNumber;
    v9->_seasonNumber = v10;
  }

  return v9;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VUIMPSeasonMediaCollectionIdentifier;
  v3 = [(VUIMPMediaEntityIdentifier *)&v7 hash];
  v4 = [(VUIMPSeasonMediaCollectionIdentifier *)self seasonNumber];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v14.receiver = self;
    v14.super_class = VUIMPSeasonMediaCollectionIdentifier;
    if ([(VUIMPMediaEntityIdentifier *)&v14 isEqual:v6])
    {
      v7 = [(VUIMPSeasonMediaCollectionIdentifier *)self seasonNumber];
      v8 = [(VUIMPSeasonMediaCollectionIdentifier *)v6 seasonNumber];
      v9 = v7;
      v10 = v8;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isEqual:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12.receiver = self;
  v12.super_class = VUIMPSeasonMediaCollectionIdentifier;
  v4 = [(VUIMPMediaEntityIdentifier *)&v12 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIMPSeasonMediaCollectionIdentifier *)self seasonNumber];
  v7 = [v5 stringWithFormat:@"%@=%@", @"seasonNumber", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v3 componentsJoinedByString:{@", "}];
  v10 = [v8 stringWithFormat:@"<%@>", v9];

  return v10;
}

@end