@interface _TVContentRating
- (BOOL)isEqual:(id)equal;
- (NSString)ratingSystemString;
- (NSString)stringRepresentation;
- (_TVContentRating)init;
- (_TVContentRating)initWithRatingSystem:(int64_t)system explicitContent:(BOOL)content;
- (_TVContentRating)initWithRatingSystem:(int64_t)system ratingLabel:(id)label rank:(unint64_t)rank ratingDescription:(id)description;
- (_TVContentRating)initWithRatingSystemString:(id)string ratingLabel:(id)label rank:(unint64_t)rank ratingDescription:(id)description;
- (_TVContentRating)initWithStringRepresentation:(id)representation;
- (id)description;
- (int64_t)ratingSystemKind;
- (unint64_t)hash;
@end

@implementation _TVContentRating

- (_TVContentRating)init
{
  [(_TVContentRating *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_TVContentRating)initWithRatingSystem:(int64_t)system ratingLabel:(id)label rank:(unint64_t)rank ratingDescription:(id)description
{
  labelCopy = label;
  descriptionCopy = description;
  v19.receiver = self;
  v19.super_class = _TVContentRating;
  v12 = [(_TVContentRating *)&v19 init];
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

- (_TVContentRating)initWithRatingSystemString:(id)string ratingLabel:(id)label rank:(unint64_t)rank ratingDescription:(id)description
{
  descriptionCopy = description;
  labelCopy = label;
  descriptionCopy = [(_TVContentRating *)self initWithRatingSystem:[_TVContentRatingSystemUtilities ratingSystemForString:?]ratingDescription:labelCopy, rank, descriptionCopy];

  return descriptionCopy;
}

- (_TVContentRating)initWithRatingSystem:(int64_t)system explicitContent:(BOOL)content
{
  if (content)
  {
    v4 = 200;
  }

  else
  {
    v4 = 0;
  }

  return [(_TVContentRating *)self initWithRatingSystem:system ratingLabel:0 rank:v4 ratingDescription:0];
}

- (_TVContentRating)initWithStringRepresentation:(id)representation
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
    v9 = 0;
    v11 = 0;
  }

LABEL_10:
  v13 = [(_TVContentRating *)self initWithRatingSystemString:v9 ratingLabel:v11 rank:integerValue ratingDescription:v8];

  return v13;
}

- (int64_t)ratingSystemKind
{
  ratingSystem = [(_TVContentRating *)self ratingSystem];

  return [_TVContentRatingSystemUtilities ratingSystemKindForRatingSystem:ratingSystem];
}

- (NSString)ratingSystemString
{
  ratingSystem = [(_TVContentRating *)self ratingSystem];

  return [_TVContentRatingSystemUtilities stringForRatingSystem:ratingSystem];
}

- (NSString)stringRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = [_TVContentRatingSystemUtilities stringForRatingSystem:self->_ratingSystem];
  [v3 appendFormat:@"%@|", v4];

  ratingLabel = self->_ratingLabel;
  if (!ratingLabel)
  {
    ratingLabel = &stru_287E85D68;
  }

  [v3 appendFormat:@"%@|", ratingLabel];
  [v3 appendFormat:@"%lu|", self->_rank];
  if (self->_ratingDescription)
  {
    ratingDescription = self->_ratingDescription;
  }

  else
  {
    ratingDescription = &stru_287E85D68;
  }

  [v3 appendString:ratingDescription];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = _TVContentRating;
  v4 = [(_TVContentRating *)&v8 description];
  stringRepresentation = [(_TVContentRating *)self stringRepresentation];
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
        ratingSystem = [(_TVContentRating *)self ratingSystem];
        if (ratingSystem != [(_TVContentRating *)v6 ratingSystem])
        {
          goto LABEL_10;
        }

        rank = [(_TVContentRating *)self rank];
        if (rank != [(_TVContentRating *)v6 rank])
        {
          goto LABEL_10;
        }

        ratingLabel = [(_TVContentRating *)self ratingLabel];
        ratingLabel2 = [(_TVContentRating *)v6 ratingLabel];
        ratingDescription = ratingLabel2;
        if (ratingLabel == ratingLabel2)
        {
        }

        else
        {
          ratingLabel3 = [(_TVContentRating *)self ratingLabel];
          if (!ratingLabel3)
          {
            v19 = 0;
            goto LABEL_24;
          }

          ratingDescription2 = ratingLabel3;
          ratingLabel4 = [(_TVContentRating *)v6 ratingLabel];
          if (!ratingLabel4)
          {
            goto LABEL_18;
          }

          v15 = ratingLabel4;
          ratingLabel5 = [(_TVContentRating *)self ratingLabel];
          ratingLabel6 = [(_TVContentRating *)v6 ratingLabel];
          v18 = [ratingLabel5 isEqual:ratingLabel6];

          if (!v18)
          {
LABEL_10:
            v19 = 0;
LABEL_25:

            goto LABEL_26;
          }
        }

        ratingLabel = [(_TVContentRating *)self ratingDescription];
        ratingDescription = [(_TVContentRating *)v6 ratingDescription];
        if (ratingLabel != ratingDescription)
        {
          ratingDescription2 = [(_TVContentRating *)self ratingDescription];
          if (ratingDescription2)
          {
            ratingDescription3 = [(_TVContentRating *)v6 ratingDescription];
            if (ratingDescription3)
            {
              ratingDescription4 = [(_TVContentRating *)self ratingDescription];
              ratingDescription5 = [(_TVContentRating *)v6 ratingDescription];
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
  ratingSystem = [(_TVContentRating *)self ratingSystem];
  v4 = ratingSystem ^ (2 * [(_TVContentRating *)self rank]);
  ratingLabel = [(_TVContentRating *)self ratingLabel];
  v6 = [ratingLabel hash];

  ratingDescription = [(_TVContentRating *)self ratingDescription];
  v8 = v6 ^ [ratingDescription hash];

  return v4 ^ v8;
}

@end