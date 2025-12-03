@interface VUIMPSeasonMediaCollectionIdentifier
+ (id)seasonIdentifierWithMediaItem:(id)item;
- (BOOL)isEqual:(id)equal;
- (VUIMPSeasonMediaCollectionIdentifier)initWithPersistentID:(id)d mediaEntityType:(id)type;
- (VUIMPSeasonMediaCollectionIdentifier)initWithPersistentID:(id)d seasonNumber:(id)number;
- (id)description;
- (unint64_t)hash;
@end

@implementation VUIMPSeasonMediaCollectionIdentifier

+ (id)seasonIdentifierWithMediaItem:(id)item
{
  v3 = *MEMORY[0x1E696F938];
  itemCopy = item;
  v5 = [itemCopy valueForProperty:v3];
  v6 = [itemCopy valueForProperty:*MEMORY[0x1E696FB10]];

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

- (VUIMPSeasonMediaCollectionIdentifier)initWithPersistentID:(id)d mediaEntityType:(id)type
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The %@ initializer is not available.", v7}];

  return 0;
}

- (VUIMPSeasonMediaCollectionIdentifier)initWithPersistentID:(id)d seasonNumber:(id)number
{
  dCopy = d;
  numberCopy = number;
  if (!dCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"persistentID"}];
  }

  v8 = +[VUIMediaEntityType season];
  v13.receiver = self;
  v13.super_class = VUIMPSeasonMediaCollectionIdentifier;
  v9 = [(VUIMPMediaEntityIdentifier *)&v13 initWithPersistentID:dCopy mediaEntityType:v8];

  if (v9)
  {
    v10 = [numberCopy copy];
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
  seasonNumber = [(VUIMPSeasonMediaCollectionIdentifier *)self seasonNumber];
  v5 = [seasonNumber hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v14.receiver = self;
    v14.super_class = VUIMPSeasonMediaCollectionIdentifier;
    if ([(VUIMPMediaEntityIdentifier *)&v14 isEqual:v6])
    {
      seasonNumber = [(VUIMPSeasonMediaCollectionIdentifier *)self seasonNumber];
      seasonNumber2 = [(VUIMPSeasonMediaCollectionIdentifier *)v6 seasonNumber];
      v9 = seasonNumber;
      v10 = seasonNumber2;
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
  seasonNumber = [(VUIMPSeasonMediaCollectionIdentifier *)self seasonNumber];
  v7 = [v5 stringWithFormat:@"%@=%@", @"seasonNumber", seasonNumber];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v3 componentsJoinedByString:{@", "}];
  v10 = [v8 stringWithFormat:@"<%@>", v9];

  return v10;
}

@end