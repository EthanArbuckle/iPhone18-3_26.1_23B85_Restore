@interface PRSRankingRenderAndEngagementValues
- (BOOL)getRankingValues:(signed __int16 *)values withRankingValueSize:(unint64_t)size forType:(int)type;
- (PRSRankingRenderAndEngagementValues)init;
- (PRSRankingRenderAndEngagementValues)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)incrementRankingValuesForType:(int)type;
- (void)setRankingValues:(signed __int16)values[6] forType:(int)type;
@end

@implementation PRSRankingRenderAndEngagementValues

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  result = objc_opt_new();
  if (result)
  {
    v5 = *self->_renderValues;
    *(result + 4) = *&self->_renderValues[4];
    *(result + 1) = v5;
    v6 = *self->_engagementValues;
    *(result + 7) = *&self->_engagementValues[4];
    *(result + 20) = v6;
  }

  return result;
}

- (PRSRankingRenderAndEngagementValues)init
{
  v3.receiver = self;
  v3.super_class = PRSRankingRenderAndEngagementValues;
  return [(PRSRankingRenderAndEngagementValues *)&v3 init];
}

- (PRSRankingRenderAndEngagementValues)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PRSRankingRenderAndEngagementValues *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"values"];
    if ([v6 count] == 12)
    {
      v7 = 0;
      engagementValues = v5->_engagementValues;
      do
      {
        v9 = [v6 objectAtIndexedSubscript:v7];
        *(engagementValues - 6) = [v9 shortValue];

        v10 = [v6 objectAtIndexedSubscript:v7 + 6];
        *engagementValues++ = [v10 shortValue];

        ++v7;
      }

      while (v7 != 6);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v21[12] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  v5 = self->_renderValues[0];
  coderCopy = coder;
  v19 = [v4 numberWithShort:v5];
  v21[0] = v19;
  v18 = [MEMORY[0x1E696AD98] numberWithShort:self->_renderValues[1]];
  v21[1] = v18;
  v17 = [MEMORY[0x1E696AD98] numberWithShort:self->_renderValues[2]];
  v21[2] = v17;
  v6 = [MEMORY[0x1E696AD98] numberWithShort:self->_renderValues[3]];
  v21[3] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithShort:self->_renderValues[4]];
  v21[4] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithShort:self->_renderValues[5]];
  v21[5] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithShort:self->_engagementValues[0]];
  v21[6] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithShort:self->_engagementValues[1]];
  v21[7] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithShort:self->_engagementValues[2]];
  v21[8] = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithShort:self->_engagementValues[3]];
  v21[9] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithShort:self->_engagementValues[4]];
  v21[10] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithShort:self->_engagementValues[5]];
  v21[11] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:12];

  [coderCopy encodeObject:v15 forKey:@"values"];
  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)getRankingValues:(signed __int16 *)values withRankingValueSize:(unint64_t)size forType:(int)type
{
  if (size != 6)
  {
    return 0;
  }

  if (!type)
  {
    v5 = 20;
    goto LABEL_7;
  }

  if (type != 1)
  {
    return 0;
  }

  v5 = 8;
LABEL_7:
  v7 = self + v5;
  v8 = *v7;
  *(values + 2) = *(v7 + 2);
  *values = v8;
  return 1;
}

- (void)setRankingValues:(signed __int16)values[6] forType:(int)type
{
  if (type)
  {
    if (type != 1)
    {
      return;
    }

    v4 = 8;
  }

  else
  {
    v4 = 20;
  }

  v5 = self + v4;
  v6 = *values;
  *(v5 + 2) = *(values + 2);
  *v5 = v6;
}

- (void)incrementRankingValuesForType:(int)type
{
  if (type)
  {
    if (type == 1)
    {
      v3 = 0;
      renderValues = self->_renderValues;
      do
      {
        v5 = renderValues[v3];
        if (v5 != 0x7FFF)
        {
          renderValues[v3] = v5 + 1;
        }

        ++v3;
      }

      while (v3 != 6);
    }
  }

  else
  {
    v6 = 0;
    engagementValues = self->_engagementValues;
    do
    {
      v8 = engagementValues[v6];
      if (v8 != 0x7FFF)
      {
        engagementValues[v6] = v8 + 1;
      }

      ++v6;
    }

    while (v6 != 6);
  }
}

@end