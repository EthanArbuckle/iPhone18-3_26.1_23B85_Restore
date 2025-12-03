@interface VUIContentRating
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (NSString)ratingSystemString;
- (NSString)stringRepresentation;
- (VUIContentRating)init;
- (VUIContentRating)initWithRatingSystem:(int64_t)system explicitContent:(BOOL)content;
- (VUIContentRating)initWithRatingSystem:(int64_t)system ratingLabel:(id)label rank:(unint64_t)rank ratingDescription:(id)description;
- (VUIContentRating)initWithRatingSystemString:(id)string ratingLabel:(id)label rank:(unint64_t)rank ratingDescription:(id)description;
- (VUIContentRating)initWithStringRepresentation:(id)representation;
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

- (VUIContentRating)initWithRatingSystem:(int64_t)system ratingLabel:(id)label rank:(unint64_t)rank ratingDescription:(id)description
{
  labelCopy = label;
  descriptionCopy = description;
  v19.receiver = self;
  v19.super_class = VUIContentRating;
  v12 = [(VUIContentRating *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_ratingSystem = system;
    v14 = [labelCopy copy];
    ratingLabel = v13->_ratingLabel;
    v13->_ratingLabel = v14;

    v13->_rank = rank;
    v16 = [descriptionCopy copy];
    ratingDescription = v13->_ratingDescription;
    v13->_ratingDescription = v16;
  }

  return v13;
}

- (VUIContentRating)initWithRatingSystemString:(id)string ratingLabel:(id)label rank:(unint64_t)rank ratingDescription:(id)description
{
  descriptionCopy = description;
  labelCopy = label;
  descriptionCopy = [(VUIContentRating *)self initWithRatingSystem:[VUIContentRatingSystemUtilities ratingSystemForString:?]ratingDescription:labelCopy, rank, descriptionCopy];

  return descriptionCopy;
}

- (VUIContentRating)initWithRatingSystem:(int64_t)system explicitContent:(BOOL)content
{
  if (content)
  {
    v4 = 200;
  }

  else
  {
    v4 = 0;
  }

  return [(VUIContentRating *)self initWithRatingSystem:system ratingLabel:0 rank:v4 ratingDescription:0];
}

- (VUIContentRating)initWithStringRepresentation:(id)representation
{
  v4 = MEMORY[0x277CCA900];
  representationCopy = representation;
  v6 = [v4 characterSetWithCharactersInString:@"|"];
  v7 = [representationCopy componentsSeparatedByCharactersInSet:v6];

  v8 = [v7 count];
  if (v8)
  {
    v9 = [v7 objectAtIndex:0];
    if (v8 == 1)
    {
      integerValue = 0;
      v11 = 0;
      goto LABEL_9;
    }

    v11 = [v7 objectAtIndex:1];
    if (v8 < 3)
    {
      integerValue = 0;
      goto LABEL_9;
    }

    v12 = [v7 objectAtIndex:2];
    integerValue = [v12 integerValue];

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
    integerValue = 0;
    v11 = 0;
    v9 = &stru_2880D3950;
  }

LABEL_10:
  v13 = [(VUIContentRating *)self initWithRatingSystemString:v9 ratingLabel:v11 rank:integerValue ratingDescription:v8];

  return v13;
}

- (int64_t)ratingSystemKind
{
  ratingSystem = [(VUIContentRating *)self ratingSystem];

  return [VUIContentRatingSystemUtilities ratingSystemKindForRatingSystem:ratingSystem];
}

- (NSString)ratingSystemString
{
  ratingSystem = [(VUIContentRating *)self ratingSystem];

  return [VUIContentRatingSystemUtilities stringForRatingSystem:ratingSystem];
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
  stringRepresentation = [(VUIContentRating *)self stringRepresentation];
  v6 = [v3 stringWithFormat:@"%@ [%@]", v4, stringRepresentation];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v19 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        ratingSystem = [(VUIContentRating *)self ratingSystem];
        if (ratingSystem != [(VUIContentRating *)v6 ratingSystem])
        {
          goto LABEL_10;
        }

        rank = [(VUIContentRating *)self rank];
        if (rank != [(VUIContentRating *)v6 rank])
        {
          goto LABEL_10;
        }

        ratingLabel = [(VUIContentRating *)self ratingLabel];
        ratingLabel2 = [(VUIContentRating *)v6 ratingLabel];
        ratingDescription = ratingLabel2;
        if (ratingLabel == ratingLabel2)
        {
        }

        else
        {
          ratingLabel3 = [(VUIContentRating *)self ratingLabel];
          if (!ratingLabel3)
          {
            v19 = 0;
            goto LABEL_24;
          }

          ratingDescription2 = ratingLabel3;
          ratingLabel4 = [(VUIContentRating *)v6 ratingLabel];
          if (!ratingLabel4)
          {
            goto LABEL_18;
          }

          v15 = ratingLabel4;
          ratingLabel5 = [(VUIContentRating *)self ratingLabel];
          ratingLabel6 = [(VUIContentRating *)v6 ratingLabel];
          v18 = [ratingLabel5 isEqual:ratingLabel6];

          if (!v18)
          {
LABEL_10:
            v19 = 0;
LABEL_25:

            goto LABEL_26;
          }
        }

        ratingLabel = [(VUIContentRating *)self ratingDescription];
        ratingDescription = [(VUIContentRating *)v6 ratingDescription];
        if (ratingLabel != ratingDescription)
        {
          ratingDescription2 = [(VUIContentRating *)self ratingDescription];
          if (ratingDescription2)
          {
            ratingDescription3 = [(VUIContentRating *)v6 ratingDescription];
            if (ratingDescription3)
            {
              ratingDescription4 = [(VUIContentRating *)self ratingDescription];
              ratingDescription5 = [(VUIContentRating *)v6 ratingDescription];
              v19 = [ratingDescription4 isEqual:ratingDescription5];
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
  ratingSystem = [(VUIContentRating *)self ratingSystem];
  v4 = ratingSystem ^ (2 * [(VUIContentRating *)self rank]);
  ratingLabel = [(VUIContentRating *)self ratingLabel];
  v6 = [ratingLabel hash];

  ratingDescription = [(VUIContentRating *)self ratingDescription];
  v8 = v6 ^ [ratingDescription hash];

  return v4 ^ v8;
}

@end