@interface VUIContentRating
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (NSString)ratingSystemString;
- (NSString)stringRepresentation;
- (VUIContentRating)init;
- (VUIContentRating)initWithRatingSystem:(int64_t)a3 explicitContent:(BOOL)a4;
- (VUIContentRating)initWithRatingSystem:(int64_t)a3 ratingLabel:(id)a4 rank:(unint64_t)a5 ratingDescription:(id)a6;
- (VUIContentRating)initWithRatingSystemString:(id)a3 ratingLabel:(id)a4 rank:(unint64_t)a5 ratingDescription:(id)a6;
- (VUIContentRating)initWithStringRepresentation:(id)a3;
- (id)description;
- (int64_t)ratingSystemKind;
- (unint64_t)hash;
@end

@implementation VUIContentRating

+ (id)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The %@ initializer is not available.", v4}];

  return 0;
}

- (VUIContentRating)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIContentRating)initWithRatingSystem:(int64_t)a3 ratingLabel:(id)a4 rank:(unint64_t)a5 ratingDescription:(id)a6
{
  v10 = a4;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = VUIContentRating;
  v12 = [(VUIContentRating *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_ratingSystem = a3;
    v14 = [v10 copy];
    ratingLabel = v13->_ratingLabel;
    v13->_ratingLabel = v14;

    v13->_rank = a5;
    v16 = [v11 copy];
    ratingDescription = v13->_ratingDescription;
    v13->_ratingDescription = v16;
  }

  return v13;
}

- (VUIContentRating)initWithRatingSystemString:(id)a3 ratingLabel:(id)a4 rank:(unint64_t)a5 ratingDescription:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [(VUIContentRating *)self initWithRatingSystem:[VUIContentRatingSystemUtilities ratingSystemForString:?]ratingDescription:v11, a5, v10];

  return v12;
}

- (VUIContentRating)initWithRatingSystem:(int64_t)a3 explicitContent:(BOOL)a4
{
  if (a4)
  {
    v4 = 200;
  }

  else
  {
    v4 = 0;
  }

  return [(VUIContentRating *)self initWithRatingSystem:a3 ratingLabel:0 rank:v4 ratingDescription:0];
}

- (VUIContentRating)initWithStringRepresentation:(id)a3
{
  v4 = MEMORY[0x277CCA900];
  v5 = a3;
  v6 = [v4 characterSetWithCharactersInString:@"|"];
  v7 = [v5 componentsSeparatedByCharactersInSet:v6];

  v8 = [v7 count];
  if (v8)
  {
    v9 = [v7 objectAtIndex:0];
    if (v8 == 1)
    {
      v10 = 0;
      v11 = 0;
      goto LABEL_9;
    }

    v11 = [v7 objectAtIndex:1];
    if (v8 < 3)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v12 = [v7 objectAtIndex:2];
    v10 = [v12 integerValue];

    if (v8 == 3)
    {
LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }

    v8 = [v7 objectAtIndex:3];
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v9 = &stru_2880D3950;
  }

LABEL_10:
  v13 = [(VUIContentRating *)self initWithRatingSystemString:v9 ratingLabel:v11 rank:v10 ratingDescription:v8];

  return v13;
}

- (int64_t)ratingSystemKind
{
  v2 = [(VUIContentRating *)self ratingSystem];

  return [VUIContentRatingSystemUtilities ratingSystemKindForRatingSystem:v2];
}

- (NSString)ratingSystemString
{
  v2 = [(VUIContentRating *)self ratingSystem];

  return [VUIContentRatingSystemUtilities stringForRatingSystem:v2];
}

- (NSString)stringRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = [VUIContentRatingSystemUtilities stringForRatingSystem:self->_ratingSystem];
  [v3 appendFormat:@"%@|", v4];

  ratingLabel = self->_ratingLabel;
  if (!ratingLabel)
  {
    ratingLabel = &stru_2880D3950;
  }

  [v3 appendFormat:@"%@|", ratingLabel];
  [v3 appendFormat:@"%lu|", self->_rank];
  if (self->_ratingDescription)
  {
    ratingDescription = self->_ratingDescription;
  }

  else
  {
    ratingDescription = &stru_2880D3950;
  }

  [v3 appendString:ratingDescription];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VUIContentRating;
  v4 = [(VUIContentRating *)&v8 description];
  v5 = [(VUIContentRating *)self stringRepresentation];
  v6 = [v3 stringWithFormat:@"%@ [%@]", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v19 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(VUIContentRating *)self ratingSystem];
        if (v7 != [(VUIContentRating *)v6 ratingSystem])
        {
          goto LABEL_10;
        }

        v8 = [(VUIContentRating *)self rank];
        if (v8 != [(VUIContentRating *)v6 rank])
        {
          goto LABEL_10;
        }

        v9 = [(VUIContentRating *)self ratingLabel];
        v10 = [(VUIContentRating *)v6 ratingLabel];
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          v12 = [(VUIContentRating *)self ratingLabel];
          if (!v12)
          {
            v19 = 0;
            goto LABEL_24;
          }

          v13 = v12;
          v14 = [(VUIContentRating *)v6 ratingLabel];
          if (!v14)
          {
            goto LABEL_18;
          }

          v15 = v14;
          v16 = [(VUIContentRating *)self ratingLabel];
          v17 = [(VUIContentRating *)v6 ratingLabel];
          v18 = [v16 isEqual:v17];

          if (!v18)
          {
LABEL_10:
            v19 = 0;
LABEL_25:

            goto LABEL_26;
          }
        }

        v9 = [(VUIContentRating *)self ratingDescription];
        v11 = [(VUIContentRating *)v6 ratingDescription];
        if (v9 != v11)
        {
          v13 = [(VUIContentRating *)self ratingDescription];
          if (v13)
          {
            v20 = [(VUIContentRating *)v6 ratingDescription];
            if (v20)
            {
              v21 = [(VUIContentRating *)self ratingDescription];
              v22 = [(VUIContentRating *)v6 ratingDescription];
              v19 = [v21 isEqual:v22];
            }

            else
            {
              v19 = 0;
            }

            goto LABEL_23;
          }

LABEL_18:
          v19 = 0;
LABEL_23:

          goto LABEL_24;
        }

        v19 = 1;
LABEL_24:

        goto LABEL_25;
      }
    }

    v19 = 0;
  }

LABEL_26:

  return v19;
}

- (unint64_t)hash
{
  v3 = [(VUIContentRating *)self ratingSystem];
  v4 = v3 ^ (2 * [(VUIContentRating *)self rank]);
  v5 = [(VUIContentRating *)self ratingLabel];
  v6 = [v5 hash];

  v7 = [(VUIContentRating *)self ratingDescription];
  v8 = v6 ^ [v7 hash];

  return v4 ^ v8;
}

@end