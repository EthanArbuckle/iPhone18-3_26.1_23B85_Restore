@interface TVRCRottenTomatoesReview
+ (TVRCRottenTomatoesReview)rottenTomatoesReviewWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRottenTomatoesReview:(id)review;
- (TVRCRottenTomatoesReview)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)freshnessLevel;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCRottenTomatoesReview

+ (TVRCRottenTomatoesReview)rottenTomatoesReviewWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __63__TVRCRottenTomatoesReview_rottenTomatoesReviewWithDictionary___block_invoke;
  v22[3] = &unk_279D82398;
  v4 = dictionaryCopy;
  v23 = v4;
  v5 = MEMORY[0x26D6B0B70](v22);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __63__TVRCRottenTomatoesReview_rottenTomatoesReviewWithDictionary___block_invoke_2;
  v20 = &unk_279D823C0;
  v21 = v4;
  v6 = v4;
  v7 = MEMORY[0x26D6B0B70](&v17);
  v8 = objc_alloc_init(TVRCRottenTomatoesReview);
  v9 = (v7)[2](v7, @"tomatometerPercentage");
  [(TVRCRottenTomatoesReview *)v8 setPercentage:v9, v17, v18, v19, v20];

  v10 = (v7)[2](v7, @"audienceScore");
  [(TVRCRottenTomatoesReview *)v8 setAudienceScore:v10];

  v11 = (v7)[2](v7, @"averageRating");
  [(TVRCRottenTomatoesReview *)v8 setAverageRating:v11];

  v12 = (v5)[2](v5, @"consensus");
  [(TVRCRottenTomatoesReview *)v8 setConsensus:v12];

  v13 = (v7)[2](v7, @"numFreshReviews");
  [(TVRCRottenTomatoesReview *)v8 setNumberOfFreshReviews:v13];

  v14 = (v7)[2](v7, @"numRottenReviews");
  [(TVRCRottenTomatoesReview *)v8 setNumberOfRottenReviews:v14];

  v15 = (v5)[2](v5, @"tomatometerFreshness");
  [(TVRCRottenTomatoesReview *)v8 setFreshness:v15];

  return v8;
}

id __63__TVRCRottenTomatoesReview_rottenTomatoesReviewWithDictionary___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
LABEL_6:
      v4 = v3;
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 stringValue];
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

id __63__TVRCRottenTomatoesReview_rottenTomatoesReviewWithDictionary___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [MEMORY[0x277CCAC80] scannerWithString:v2];
      v6 = 0.0;
      if ([v4 scanDouble:&v6])
      {
        v3 = [MEMORY[0x277CCABB0] numberWithDouble:v6];

        goto LABEL_9;
      }
    }
  }

  v3 = 0;
LABEL_9:

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TVRCRottenTomatoesReview *)self isEqualToRottenTomatoesReview:equalCopy];

  return v5;
}

- (BOOL)isEqualToRottenTomatoesReview:(id)review
{
  reviewCopy = review;
  percentage = [(TVRCRottenTomatoesReview *)self percentage];
  percentage2 = [reviewCopy percentage];
  v7 = (percentage == 0) ^ (percentage2 == 0);

  if (v7)
  {
    goto LABEL_22;
  }

  audienceScore = [(TVRCRottenTomatoesReview *)self audienceScore];
  audienceScore2 = [reviewCopy audienceScore];
  v10 = (audienceScore == 0) ^ (audienceScore2 == 0);

  if (v10)
  {
    goto LABEL_22;
  }

  averageRating = [(TVRCRottenTomatoesReview *)self averageRating];
  averageRating2 = [reviewCopy averageRating];
  v13 = (averageRating == 0) ^ (averageRating2 == 0);

  if (v13)
  {
    goto LABEL_22;
  }

  consensus = [(TVRCRottenTomatoesReview *)self consensus];
  consensus2 = [reviewCopy consensus];
  v16 = (consensus == 0) ^ (consensus2 == 0);

  if (v16)
  {
    goto LABEL_22;
  }

  numberOfFreshReviews = [(TVRCRottenTomatoesReview *)self numberOfFreshReviews];
  numberOfFreshReviews2 = [reviewCopy numberOfFreshReviews];
  v19 = (numberOfFreshReviews == 0) ^ (numberOfFreshReviews2 == 0);

  if (v19)
  {
    goto LABEL_22;
  }

  numberOfRottenReviews = [(TVRCRottenTomatoesReview *)self numberOfRottenReviews];
  numberOfRottenReviews2 = [reviewCopy numberOfRottenReviews];
  v22 = (numberOfRottenReviews == 0) ^ (numberOfRottenReviews2 == 0);

  if (v22)
  {
    goto LABEL_22;
  }

  freshness = [(TVRCRottenTomatoesReview *)self freshness];
  freshness2 = [reviewCopy freshness];
  v25 = (freshness == 0) ^ (freshness2 == 0);

  if (v25)
  {
    goto LABEL_22;
  }

  percentage3 = [(TVRCRottenTomatoesReview *)self percentage];
  if (percentage3)
  {
    v27 = percentage3;
    percentage4 = [(TVRCRottenTomatoesReview *)self percentage];
    percentage5 = [reviewCopy percentage];
    v30 = [percentage4 isEqualToNumber:percentage5];

    if (!v30)
    {
      goto LABEL_22;
    }
  }

  audienceScore3 = [(TVRCRottenTomatoesReview *)self audienceScore];
  if (audienceScore3)
  {
    v32 = audienceScore3;
    audienceScore4 = [(TVRCRottenTomatoesReview *)self audienceScore];
    audienceScore5 = [reviewCopy audienceScore];
    v35 = [audienceScore4 isEqualToNumber:audienceScore5];

    if (!v35)
    {
      goto LABEL_22;
    }
  }

  averageRating3 = [(TVRCRottenTomatoesReview *)self averageRating];
  if (averageRating3)
  {
    v37 = averageRating3;
    averageRating4 = [(TVRCRottenTomatoesReview *)self averageRating];
    averageRating5 = [reviewCopy averageRating];
    v40 = [averageRating4 isEqualToNumber:averageRating5];

    if (!v40)
    {
      goto LABEL_22;
    }
  }

  consensus3 = [(TVRCRottenTomatoesReview *)self consensus];
  if (consensus3)
  {
    v42 = consensus3;
    consensus4 = [(TVRCRottenTomatoesReview *)self consensus];
    consensus5 = [reviewCopy consensus];
    v45 = [consensus4 isEqualToString:consensus5];

    if (!v45)
    {
      goto LABEL_22;
    }
  }

  numberOfFreshReviews3 = [(TVRCRottenTomatoesReview *)self numberOfFreshReviews];
  if (numberOfFreshReviews3)
  {
    v47 = numberOfFreshReviews3;
    numberOfFreshReviews4 = [(TVRCRottenTomatoesReview *)self numberOfFreshReviews];
    numberOfFreshReviews5 = [reviewCopy numberOfFreshReviews];
    v50 = [numberOfFreshReviews4 isEqualToNumber:numberOfFreshReviews5];

    if (!v50)
    {
      goto LABEL_22;
    }
  }

  numberOfRottenReviews3 = [(TVRCRottenTomatoesReview *)self numberOfRottenReviews];
  if (!numberOfRottenReviews3)
  {
    goto LABEL_20;
  }

  v52 = numberOfRottenReviews3;
  numberOfRottenReviews4 = [(TVRCRottenTomatoesReview *)self numberOfRottenReviews];
  numberOfRottenReviews5 = [reviewCopy numberOfRottenReviews];
  v55 = [numberOfRottenReviews4 isEqualToNumber:numberOfRottenReviews5];

  if (!v55)
  {
LABEL_22:
    v60 = 0;
  }

  else
  {
LABEL_20:
    freshness3 = [(TVRCRottenTomatoesReview *)self freshness];
    if (freshness3)
    {
      v57 = freshness3;
      freshness4 = [(TVRCRottenTomatoesReview *)self freshness];
      freshness5 = [reviewCopy freshness];
      v60 = [freshness4 isEqualToString:freshness5];
    }

    else
    {
      v60 = 1;
    }
  }

  return v60 & 1;
}

- (unint64_t)freshnessLevel
{
  freshness = [(TVRCRottenTomatoesReview *)self freshness];
  v4 = [freshness isEqualToString:@"CertifiedFresh"];

  if (v4)
  {
    return 1;
  }

  freshness2 = [(TVRCRottenTomatoesReview *)self freshness];
  v7 = [freshness2 isEqualToString:@"Rotten"];

  if (v7)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TVRCRottenTomatoesReview);
  percentage = [(TVRCRottenTomatoesReview *)self percentage];
  [(TVRCRottenTomatoesReview *)v4 setPercentage:percentage];

  audienceScore = [(TVRCRottenTomatoesReview *)self audienceScore];
  [(TVRCRottenTomatoesReview *)v4 setAudienceScore:audienceScore];

  averageRating = [(TVRCRottenTomatoesReview *)self averageRating];
  [(TVRCRottenTomatoesReview *)v4 setAverageRating:averageRating];

  consensus = [(TVRCRottenTomatoesReview *)self consensus];
  [(TVRCRottenTomatoesReview *)v4 setConsensus:consensus];

  numberOfFreshReviews = [(TVRCRottenTomatoesReview *)self numberOfFreshReviews];
  [(TVRCRottenTomatoesReview *)v4 setNumberOfFreshReviews:numberOfFreshReviews];

  numberOfRottenReviews = [(TVRCRottenTomatoesReview *)self numberOfRottenReviews];
  [(TVRCRottenTomatoesReview *)v4 setNumberOfRottenReviews:numberOfRottenReviews];

  freshness = [(TVRCRottenTomatoesReview *)self freshness];
  [(TVRCRottenTomatoesReview *)v4 setFreshness:freshness];

  return v4;
}

- (TVRCRottenTomatoesReview)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = TVRCRottenTomatoesReview;
  v5 = [(TVRCRottenTomatoesReview *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"percentage"];
    percentage = v5->_percentage;
    v5->_percentage = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audienceScore"];
    audienceScore = v5->_audienceScore;
    v5->_audienceScore = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageRating"];
    averageRating = v5->_averageRating;
    v5->_averageRating = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"consensus"];
    consensus = v5->_consensus;
    v5->_consensus = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfFreshReviews"];
    numberOfFreshReviews = v5->_numberOfFreshReviews;
    v5->_numberOfFreshReviews = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfRottenReviews"];
    numberOfRottenReviews = v5->_numberOfRottenReviews;
    v5->_numberOfRottenReviews = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"freshness"];
    freshness = v5->_freshness;
    v5->_freshness = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  percentage = self->_percentage;
  coderCopy = coder;
  [coderCopy encodeObject:percentage forKey:@"percentage"];
  [coderCopy encodeObject:self->_audienceScore forKey:@"audienceScore"];
  [coderCopy encodeObject:self->_averageRating forKey:@"averageRating"];
  [coderCopy encodeObject:self->_consensus forKey:@"consensus"];
  [coderCopy encodeObject:self->_numberOfFreshReviews forKey:@"numberOfFreshReviews"];
  [coderCopy encodeObject:self->_numberOfRottenReviews forKey:@"numberOfRottenReviews"];
  [coderCopy encodeObject:self->_freshness forKey:@"freshness"];
}

@end