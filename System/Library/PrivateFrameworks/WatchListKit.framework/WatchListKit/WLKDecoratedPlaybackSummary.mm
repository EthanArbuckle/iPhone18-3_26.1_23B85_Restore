@interface WLKDecoratedPlaybackSummary
- (WLKDecoratedPlaybackSummary)initWithCoder:(id)a3;
- (WLKDecoratedPlaybackSummary)initWithSummary:(id)a3 canonicalID:(id)a4;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WLKDecoratedPlaybackSummary

- (WLKDecoratedPlaybackSummary)initWithSummary:(id)a3 canonicalID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = WLKDecoratedPlaybackSummary;
  v9 = [(WLKDecoratedPlaybackSummary *)&v14 init];
  v10 = v9;
  if (v9 == self)
  {
    objc_storeStrong(&v9->_summary, a3);
    v11 = [v8 copy];
    canonicalID = v10->_canonicalID;
    v10->_canonicalID = v11;
  }

  return v10;
}

- (WLKDecoratedPlaybackSummary)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [(WLKDecoratedPlaybackSummary *)self init];
    if (v5)
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKDecoratedPlaybackSummary.summary"];
      summary = v5->_summary;
      v5->_summary = v6;

      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKDecoratedPlaybackSummary.canonicalID"];
      canonicalID = v5->_canonicalID;
      v5->_canonicalID = v8;
    }

    self = v5;
    v10 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  [v4 encodeObject:self->_summary forKey:@"WLKDecoratedPlaybackSummary.summary"];
  [v4 encodeObject:self->_canonicalID forKey:@"WLKDecoratedPlaybackSummary.canonicalID"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = WLKDecoratedPlaybackSummary;
  v4 = [(WLKDecoratedPlaybackSummary *)&v8 description];
  v5 = [(WLKDecoratedPlaybackSummary *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"summary";
  summary = self->_summary;
  v4 = summary;
  if (!summary)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v10[1] = @"canonicalID";
  v11[0] = v4;
  canonicalID = self->_canonicalID;
  v6 = canonicalID;
  if (!canonicalID)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (canonicalID)
  {
    if (summary)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (summary)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end