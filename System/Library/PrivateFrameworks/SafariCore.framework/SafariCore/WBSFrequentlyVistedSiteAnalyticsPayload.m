@interface WBSFrequentlyVistedSiteAnalyticsPayload
- (WBSFrequentlyVistedSiteAnalyticsPayload)initWithItemPosition:(unint64_t)a3 lastVisitedDate:(id)a4 score:(id)a5;
- (id)debugDescription;
- (id)eventDictionaryDescription;
@end

@implementation WBSFrequentlyVistedSiteAnalyticsPayload

- (WBSFrequentlyVistedSiteAnalyticsPayload)initWithItemPosition:(unint64_t)a3 lastVisitedDate:(id)a4 score:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = WBSFrequentlyVistedSiteAnalyticsPayload;
  v11 = [(WBSFrequentlyVistedSiteAnalyticsPayload *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_itemPosition = a3;
    objc_storeStrong(&v11->_lastVisitedDate, a4);
    objc_storeStrong(&v12->_score, a5);
    v13 = v12;
  }

  return v12;
}

- (id)eventDictionaryDescription
{
  v13[3] = *MEMORY[0x1E69E9840];
  if (self->_score)
  {
    v12[0] = @"position";
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_itemPosition];
    v13[0] = v3;
    v12[1] = @"lastVisitedTimeInterval";
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:descriptionForTimeInterval(self->_lastVisitedDate)];
    v12[2] = @"score";
    score = self->_score;
    v13[1] = v4;
    v13[2] = score;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  }

  else
  {
    v10[0] = @"position";
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_itemPosition];
    v10[1] = @"lastVisitedTimeInterval";
    v11[0] = v3;
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:descriptionForTimeInterval(self->_lastVisitedDate)];
    v11[1] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  v7 = v6;

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p item position = %lu; time interval since last visit = %@; score = %@>", v5, self, self->_itemPosition, self->_lastVisitedDate, self->_score];;

  return v6;
}

@end