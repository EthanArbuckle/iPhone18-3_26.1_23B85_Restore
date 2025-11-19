@interface USOMatchInfo
- (USOMatchInfo)initWithCoder:(id)a3;
- (USOMatchInfo)initWithMatchSignalBitSet:(unsigned int)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USOMatchInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[USOMatchInfo matchSignalBitSet](self forKey:{"matchSignalBitSet"), @"matchSignalBitSet"}];
  v5 = [(USOMatchInfo *)self matchScore];
  [v4 encodeObject:v5 forKey:@"matchScore"];

  v6 = [(USOMatchInfo *)self maxTokenCount];
  [v4 encodeObject:v6 forKey:@"maxTokenCount"];

  v7 = [(USOMatchInfo *)self matchedTokenCount];
  [v4 encodeObject:v7 forKey:@"matchedTokenCount"];

  v8 = [(USOMatchInfo *)self maxStopWordCount];
  [v4 encodeObject:v8 forKey:@"maxStopWordCount"];

  v9 = [(USOMatchInfo *)self matchedStopWordCount];
  [v4 encodeObject:v9 forKey:@"matchedStopWordCount"];

  v10 = [(USOMatchInfo *)self editDistance];
  [v4 encodeObject:v10 forKey:@"editDistance"];

  v11 = [(USOMatchInfo *)self maxAliasCount];
  [v4 encodeObject:v11 forKey:@"maxAliasCount"];

  v12 = [(USOMatchInfo *)self matchedAliasCount];
  [v4 encodeObject:v12 forKey:@"matchedAliasCount"];

  v13 = [(USOMatchInfo *)self matchedAliasTypes];
  [v4 encodeObject:v13 forKey:@"matchedAliasTypes"];
}

- (USOMatchInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = USOMatchInfo;
  v5 = [(USOMatchInfo *)&v28 init];
  if (v5)
  {
    v5->_matchSignalBitSet = [v4 decodeInt32ForKey:@"matchSignalBitSet"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchScore"];
    matchScore = v5->_matchScore;
    v5->_matchScore = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxTokenCount"];
    maxTokenCount = v5->_maxTokenCount;
    v5->_maxTokenCount = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchedTokenCount"];
    matchedTokenCount = v5->_matchedTokenCount;
    v5->_matchedTokenCount = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxStopWordCount"];
    maxStopWordCount = v5->_maxStopWordCount;
    v5->_maxStopWordCount = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchedStopWordCount"];
    matchedStopWordCount = v5->_matchedStopWordCount;
    v5->_matchedStopWordCount = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"editDistance"];
    editDistance = v5->_editDistance;
    v5->_editDistance = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxAliasCount"];
    maxAliasCount = v5->_maxAliasCount;
    v5->_maxAliasCount = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchedAliasCount"];
    matchedAliasCount = v5->_matchedAliasCount;
    v5->_matchedAliasCount = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"matchedAliasTypes"];
    matchedAliasTypes = v5->_matchedAliasTypes;
    v5->_matchedAliasTypes = v25;
  }

  return v5;
}

- (USOMatchInfo)initWithMatchSignalBitSet:(unsigned int)a3
{
  v9.receiver = self;
  v9.super_class = USOMatchInfo;
  v4 = [(USOMatchInfo *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_matchSignalBitSet = a3;
    v6 = [MEMORY[0x1E695DF70] array];
    matchedAliasTypes = v5->_matchedAliasTypes;
    v5->_matchedAliasTypes = v6;
  }

  return v5;
}

@end