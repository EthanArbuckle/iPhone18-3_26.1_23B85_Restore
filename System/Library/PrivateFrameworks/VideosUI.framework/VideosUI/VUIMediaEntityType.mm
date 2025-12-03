@interface VUIMediaEntityType
+ (id)episode;
+ (id)homeVideo;
+ (id)movie;
+ (id)movieRental;
+ (id)season;
+ (id)show;
- (BOOL)isEqual:(id)equal;
- (VUIMediaEntityType)init;
- (id)_initWithMediaCollectionType:(unint64_t)type mediaCategoryType:(unint64_t)categoryType;
- (id)_initWithMediaItemCategoryType:(unint64_t)type isRental:(BOOL)rental;
- (id)description;
- (id)stringDescription;
- (unint64_t)hash;
@end

@implementation VUIMediaEntityType

+ (id)movie
{
  if (movie___onceToken != -1)
  {
    +[VUIMediaEntityType movie];
  }

  v3 = movie___type;

  return v3;
}

void __27__VUIMediaEntityType_movie__block_invoke()
{
  v0 = [[VUIMediaEntityType alloc] _initWithMediaItemCategoryType:0 isRental:0];
  v1 = movie___type;
  movie___type = v0;
}

+ (id)movieRental
{
  if (movieRental___onceToken != -1)
  {
    +[VUIMediaEntityType movieRental];
  }

  v3 = movieRental___type;

  return v3;
}

void __33__VUIMediaEntityType_movieRental__block_invoke()
{
  v0 = [[VUIMediaEntityType alloc] _initWithMediaItemCategoryType:0 isRental:1];
  v1 = movieRental___type;
  movieRental___type = v0;
}

+ (id)homeVideo
{
  if (homeVideo___onceToken != -1)
  {
    +[VUIMediaEntityType homeVideo];
  }

  v3 = homeVideo___type;

  return v3;
}

void __31__VUIMediaEntityType_homeVideo__block_invoke()
{
  v0 = [[VUIMediaEntityType alloc] _initWithMediaItemCategoryType:2 isRental:0];
  v1 = homeVideo___type;
  homeVideo___type = v0;
}

+ (id)episode
{
  if (episode___onceToken != -1)
  {
    +[VUIMediaEntityType episode];
  }

  v3 = episode___type;

  return v3;
}

void __29__VUIMediaEntityType_episode__block_invoke()
{
  v0 = [[VUIMediaEntityType alloc] _initWithMediaItemCategoryType:1 isRental:0];
  v1 = episode___type;
  episode___type = v0;
}

+ (id)show
{
  if (show___onceToken != -1)
  {
    +[VUIMediaEntityType show];
  }

  v3 = show___type;

  return v3;
}

void __26__VUIMediaEntityType_show__block_invoke()
{
  v0 = [[VUIMediaEntityType alloc] _initWithMediaCollectionType:2 mediaCategoryType:1];
  v1 = show___type;
  show___type = v0;
}

+ (id)season
{
  if (season___onceToken != -1)
  {
    +[VUIMediaEntityType season];
  }

  v3 = season___type;

  return v3;
}

void __28__VUIMediaEntityType_season__block_invoke()
{
  v0 = [[VUIMediaEntityType alloc] _initWithMediaCollectionType:1 mediaCategoryType:1];
  v1 = season___type;
  season___type = v0;
}

- (VUIMediaEntityType)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (id)_initWithMediaItemCategoryType:(unint64_t)type isRental:(BOOL)rental
{
  v7.receiver = self;
  v7.super_class = VUIMediaEntityType;
  result = [(VUIMediaEntityType *)&v7 init];
  if (result)
  {
    *(result + 2) = 0;
    *(result + 3) = type;
    *(result + 8) = rental;
  }

  return result;
}

- (id)_initWithMediaCollectionType:(unint64_t)type mediaCategoryType:(unint64_t)categoryType
{
  if (!type)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The mediaCollectionType argument cannot be VUIMediaCollectionTypeNone"];
  }

  v17.receiver = self;
  v17.super_class = VUIMediaEntityType;
  v7 = [(VUIMediaEntityType *)&v17 init];
  if (v7)
  {
    v8 = [VUIMediaCategory mediaCatgeoryForType:categoryType];
    supportedMediaCollectionTypes = [v8 supportedMediaCollectionTypes];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
    v11 = [supportedMediaCollectionTypes containsObject:v10];

    if ((v11 & 1) == 0)
    {
      v12 = MEMORY[0x1E695DF30];
      v13 = *MEMORY[0x1E695D940];
      v14 = VUIMediaCollectionTypeLogString(type);
      v15 = VUIMediaCategoryTypeLogString(categoryType);
      [v12 raise:v13 format:{@"The mediaCollectionType (%@) is not supported for the supplied mediaCategoryType (%@)", v14, v15}];
    }

    v7->_subtype = 1;
    v7->_mediaCategoryType = categoryType;
    v7->_mediaCollectionType = type;
  }

  return v7;
}

- (unint64_t)hash
{
  subtype = [(VUIMediaEntityType *)self subtype];
  v4 = subtype ^ (2 * [(VUIMediaEntityType *)self mediaCategoryType]);
  v5 = v4 ^ (4 * [(VUIMediaEntityType *)self mediaCollectionType]);
  isRental = [(VUIMediaEntityType *)self isRental];
  v7 = 8;
  if (!isRental)
  {
    v7 = 0;
  }

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v11) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    subtype = [(VUIMediaEntityType *)self subtype];
    if (subtype == [(VUIMediaEntityType *)v6 subtype]&& (v8 = [(VUIMediaEntityType *)self mediaCategoryType], v8 == [(VUIMediaEntityType *)v6 mediaCategoryType]) && (v9 = [(VUIMediaEntityType *)self mediaCollectionType], v9 == [(VUIMediaEntityType *)v6 mediaCollectionType]))
    {
      isRental = [(VUIMediaEntityType *)self isRental];
      v11 = isRental ^ [(VUIMediaEntityType *)v6 isRental]^ 1;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)stringDescription
{
  v3 = +[VUIMediaEntityType movie];

  if (v3 == self)
  {
    v9 = @"Movie";
  }

  else
  {
    v4 = +[VUIMediaEntityType movieRental];

    if (v4 == self)
    {
      v9 = @"MovieRental";
    }

    else
    {
      v5 = +[VUIMediaEntityType show];

      if (v5 == self)
      {
        v9 = @"TVShow";
      }

      else
      {
        v6 = +[VUIMediaEntityType season];

        if (v6 == self)
        {
          v9 = @"Season";
        }

        else
        {
          v7 = +[VUIMediaEntityType homeVideo];

          if (v7 == self)
          {
            v9 = @"HomeVideo";
          }

          else
          {
            v8 = +[VUIMediaEntityType episode];

            if (v8 == self)
            {
              v9 = @"Episode";
            }

            else
            {
              v9 = [(VUIMediaEntityType *)self description];
            }
          }
        }
      }
    }
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21.receiver = self;
  v21.super_class = VUIMediaEntityType;
  v4 = [(VUIMediaEntityType *)&v21 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = VUIMediaEntitySubtypeLogString([(VUIMediaEntityType *)self subtype]);
  v7 = [v5 stringWithFormat:@"%@=%@", @"subtype", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = VUIMediaCategoryTypeLogString([(VUIMediaEntityType *)self mediaCategoryType]);
  v10 = [v8 stringWithFormat:@"%@=%@", @"mediaCategoryType", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = VUIMediaCollectionTypeLogString([(VUIMediaEntityType *)self mediaCollectionType]);
  v13 = [v11 stringWithFormat:@"%@=%@", @"mediaCollectionType", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  [(VUIMediaEntityType *)self isRental];
  v15 = VUIBoolLogString();
  v16 = [v14 stringWithFormat:@"%@=%@", @"isRental", v15];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  v18 = [v3 componentsJoinedByString:{@", "}];
  v19 = [v17 stringWithFormat:@"<%@>", v18];

  return v19;
}

@end