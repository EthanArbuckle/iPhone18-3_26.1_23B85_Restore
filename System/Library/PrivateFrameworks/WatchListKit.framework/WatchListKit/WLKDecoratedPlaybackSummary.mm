@interface WLKDecoratedPlaybackSummary
- (WLKDecoratedPlaybackSummary)initWithCoder:(id)coder;
- (WLKDecoratedPlaybackSummary)initWithSummary:(id)summary canonicalID:(id)d;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WLKDecoratedPlaybackSummary

- (WLKDecoratedPlaybackSummary)initWithSummary:(id)summary canonicalID:(id)d
{
  summaryCopy = summary;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = WLKDecoratedPlaybackSummary;
  v9 = [(WLKDecoratedPlaybackSummary *)&v14 init];
  v10 = v9;
  if (v9 == self)
  {
    objc_storeStrong(&v9->_summary, summary);
    v11 = [dCopy copy];
    canonicalID = v10->_canonicalID;
    v10->_canonicalID = v11;
  }

  return v10;
}

- (WLKDecoratedPlaybackSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v5 = [(WLKDecoratedPlaybackSummary *)self init];
    if (v5)
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKDecoratedPlaybackSummary.summary"];
      summary = v5->_summary;
      v5->_summary = v6;

      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKDecoratedPlaybackSummary.canonicalID"];
      canonicalID = v5->_canonicalID;
      v5->_canonicalID = v8;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  [coderCopy encodeObject:self->_summary forKey:@"WLKDecoratedPlaybackSummary.summary"];
  [coderCopy encodeObject:self->_canonicalID forKey:@"WLKDecoratedPlaybackSummary.canonicalID"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = WLKDecoratedPlaybackSummary;
  v4 = [(WLKDecoratedPlaybackSummary *)&v8 description];
  dictionaryRepresentation = [(WLKDecoratedPlaybackSummary *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"summary";
  summary = self->_summary;
  null = summary;
  if (!summary)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v10[1] = @"canonicalID";
  v11[0] = null;
  canonicalID = self->_canonicalID;
  null2 = canonicalID;
  if (!canonicalID)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v11[1] = null2;
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