@interface TVRCRottenTomatoesReview
+ (TVRCRottenTomatoesReview)rottenTomatoesReviewWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRottenTomatoesReview:(id)a3;
- (TVRCRottenTomatoesReview)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)freshnessLevel;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TVRCRottenTomatoesReview

+ (TVRCRottenTomatoesReview)rottenTomatoesReviewWithDictionary:(id)a3
{
  v3 = a3;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __63__TVRCRottenTomatoesReview_rottenTomatoesReviewWithDictionary___block_invoke;
  v22[3] = &unk_279D82398;
  v4 = v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TVRCRottenTomatoesReview *)self isEqualToRottenTomatoesReview:v4];

  return v5;
}

- (BOOL)isEqualToRottenTomatoesReview:(id)a3
{
  v4 = a3;
  v5 = [(TVRCRottenTomatoesReview *)self percentage];
  v6 = [v4 percentage];
  v7 = (v5 == 0) ^ (v6 == 0);

  if (v7)
  {
    goto LABEL_22;
  }

  v8 = [(TVRCRottenTomatoesReview *)self audienceScore];
  v9 = [v4 audienceScore];
  v10 = (v8 == 0) ^ (v9 == 0);

  if (v10)
  {
    goto LABEL_22;
  }

  v11 = [(TVRCRottenTomatoesReview *)self averageRating];
  v12 = [v4 averageRating];
  v13 = (v11 == 0) ^ (v12 == 0);

  if (v13)
  {
    goto LABEL_22;
  }

  v14 = [(TVRCRottenTomatoesReview *)self consensus];
  v15 = [v4 consensus];
  v16 = (v14 == 0) ^ (v15 == 0);

  if (v16)
  {
    goto LABEL_22;
  }

  v17 = [(TVRCRottenTomatoesReview *)self numberOfFreshReviews];
  v18 = [v4 numberOfFreshReviews];
  v19 = (v17 == 0) ^ (v18 == 0);

  if (v19)
  {
    goto LABEL_22;
  }

  v20 = [(TVRCRottenTomatoesReview *)self numberOfRottenReviews];
  v21 = [v4 numberOfRottenReviews];
  v22 = (v20 == 0) ^ (v21 == 0);

  if (v22)
  {
    goto LABEL_22;
  }

  v23 = [(TVRCRottenTomatoesReview *)self freshness];
  v24 = [v4 freshness];
  v25 = (v23 == 0) ^ (v24 == 0);

  if (v25)
  {
    goto LABEL_22;
  }

  v26 = [(TVRCRottenTomatoesReview *)self percentage];
  if (v26)
  {
    v27 = v26;
    v28 = [(TVRCRottenTomatoesReview *)self percentage];
    v29 = [v4 percentage];
    v30 = [v28 isEqualToNumber:v29];

    if (!v30)
    {
      goto LABEL_22;
    }
  }

  v31 = [(TVRCRottenTomatoesReview *)self audienceScore];
  if (v31)
  {
    v32 = v31;
    v33 = [(TVRCRottenTomatoesReview *)self audienceScore];
    v34 = [v4 audienceScore];
    v35 = [v33 isEqualToNumber:v34];

    if (!v35)
    {
      goto LABEL_22;
    }
  }

  v36 = [(TVRCRottenTomatoesReview *)self averageRating];
  if (v36)
  {
    v37 = v36;
    v38 = [(TVRCRottenTomatoesReview *)self averageRating];
    v39 = [v4 averageRating];
    v40 = [v38 isEqualToNumber:v39];

    if (!v40)
    {
      goto LABEL_22;
    }
  }

  v41 = [(TVRCRottenTomatoesReview *)self consensus];
  if (v41)
  {
    v42 = v41;
    v43 = [(TVRCRottenTomatoesReview *)self consensus];
    v44 = [v4 consensus];
    v45 = [v43 isEqualToString:v44];

    if (!v45)
    {
      goto LABEL_22;
    }
  }

  v46 = [(TVRCRottenTomatoesReview *)self numberOfFreshReviews];
  if (v46)
  {
    v47 = v46;
    v48 = [(TVRCRottenTomatoesReview *)self numberOfFreshReviews];
    v49 = [v4 numberOfFreshReviews];
    v50 = [v48 isEqualToNumber:v49];

    if (!v50)
    {
      goto LABEL_22;
    }
  }

  v51 = [(TVRCRottenTomatoesReview *)self numberOfRottenReviews];
  if (!v51)
  {
    goto LABEL_20;
  }

  v52 = v51;
  v53 = [(TVRCRottenTomatoesReview *)self numberOfRottenReviews];
  v54 = [v4 numberOfRottenReviews];
  v55 = [v53 isEqualToNumber:v54];

  if (!v55)
  {
LABEL_22:
    v60 = 0;
  }

  else
  {
LABEL_20:
    v56 = [(TVRCRottenTomatoesReview *)self freshness];
    if (v56)
    {
      v57 = v56;
      v58 = [(TVRCRottenTomatoesReview *)self freshness];
      v59 = [v4 freshness];
      v60 = [v58 isEqualToString:v59];
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
  v3 = [(TVRCRottenTomatoesReview *)self freshness];
  v4 = [v3 isEqualToString:@"CertifiedFresh"];

  if (v4)
  {
    return 1;
  }

  v6 = [(TVRCRottenTomatoesReview *)self freshness];
  v7 = [v6 isEqualToString:@"Rotten"];

  if (v7)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TVRCRottenTomatoesReview);
  v5 = [(TVRCRottenTomatoesReview *)self percentage];
  [(TVRCRottenTomatoesReview *)v4 setPercentage:v5];

  v6 = [(TVRCRottenTomatoesReview *)self audienceScore];
  [(TVRCRottenTomatoesReview *)v4 setAudienceScore:v6];

  v7 = [(TVRCRottenTomatoesReview *)self averageRating];
  [(TVRCRottenTomatoesReview *)v4 setAverageRating:v7];

  v8 = [(TVRCRottenTomatoesReview *)self consensus];
  [(TVRCRottenTomatoesReview *)v4 setConsensus:v8];

  v9 = [(TVRCRottenTomatoesReview *)self numberOfFreshReviews];
  [(TVRCRottenTomatoesReview *)v4 setNumberOfFreshReviews:v9];

  v10 = [(TVRCRottenTomatoesReview *)self numberOfRottenReviews];
  [(TVRCRottenTomatoesReview *)v4 setNumberOfRottenReviews:v10];

  v11 = [(TVRCRottenTomatoesReview *)self freshness];
  [(TVRCRottenTomatoesReview *)v4 setFreshness:v11];

  return v4;
}

- (TVRCRottenTomatoesReview)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = TVRCRottenTomatoesReview;
  v5 = [(TVRCRottenTomatoesReview *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"percentage"];
    percentage = v5->_percentage;
    v5->_percentage = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audienceScore"];
    audienceScore = v5->_audienceScore;
    v5->_audienceScore = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"averageRating"];
    averageRating = v5->_averageRating;
    v5->_averageRating = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"consensus"];
    consensus = v5->_consensus;
    v5->_consensus = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfFreshReviews"];
    numberOfFreshReviews = v5->_numberOfFreshReviews;
    v5->_numberOfFreshReviews = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfRottenReviews"];
    numberOfRottenReviews = v5->_numberOfRottenReviews;
    v5->_numberOfRottenReviews = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"freshness"];
    freshness = v5->_freshness;
    v5->_freshness = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  percentage = self->_percentage;
  v5 = a3;
  [v5 encodeObject:percentage forKey:@"percentage"];
  [v5 encodeObject:self->_audienceScore forKey:@"audienceScore"];
  [v5 encodeObject:self->_averageRating forKey:@"averageRating"];
  [v5 encodeObject:self->_consensus forKey:@"consensus"];
  [v5 encodeObject:self->_numberOfFreshReviews forKey:@"numberOfFreshReviews"];
  [v5 encodeObject:self->_numberOfRottenReviews forKey:@"numberOfRottenReviews"];
  [v5 encodeObject:self->_freshness forKey:@"freshness"];
}

@end