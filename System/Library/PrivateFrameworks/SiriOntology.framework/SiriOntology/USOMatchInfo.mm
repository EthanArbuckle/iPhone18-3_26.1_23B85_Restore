@interface USOMatchInfo
- (USOMatchInfo)initWithCoder:(id)coder;
- (USOMatchInfo)initWithMatchSignalBitSet:(unsigned int)set;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USOMatchInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[USOMatchInfo matchSignalBitSet](self forKey:{"matchSignalBitSet"), @"matchSignalBitSet"}];
  matchScore = [(USOMatchInfo *)self matchScore];
  [coderCopy encodeObject:matchScore forKey:@"matchScore"];

  maxTokenCount = [(USOMatchInfo *)self maxTokenCount];
  [coderCopy encodeObject:maxTokenCount forKey:@"maxTokenCount"];

  matchedTokenCount = [(USOMatchInfo *)self matchedTokenCount];
  [coderCopy encodeObject:matchedTokenCount forKey:@"matchedTokenCount"];

  maxStopWordCount = [(USOMatchInfo *)self maxStopWordCount];
  [coderCopy encodeObject:maxStopWordCount forKey:@"maxStopWordCount"];

  matchedStopWordCount = [(USOMatchInfo *)self matchedStopWordCount];
  [coderCopy encodeObject:matchedStopWordCount forKey:@"matchedStopWordCount"];

  editDistance = [(USOMatchInfo *)self editDistance];
  [coderCopy encodeObject:editDistance forKey:@"editDistance"];

  maxAliasCount = [(USOMatchInfo *)self maxAliasCount];
  [coderCopy encodeObject:maxAliasCount forKey:@"maxAliasCount"];

  matchedAliasCount = [(USOMatchInfo *)self matchedAliasCount];
  [coderCopy encodeObject:matchedAliasCount forKey:@"matchedAliasCount"];

  matchedAliasTypes = [(USOMatchInfo *)self matchedAliasTypes];
  [coderCopy encodeObject:matchedAliasTypes forKey:@"matchedAliasTypes"];
}

- (USOMatchInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = USOMatchInfo;
  v5 = [(USOMatchInfo *)&v28 init];
  if (v5)
  {
    v5->_matchSignalBitSet = [coderCopy decodeInt32ForKey:@"matchSignalBitSet"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchScore"];
    matchScore = v5->_matchScore;
    v5->_matchScore = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxTokenCount"];
    maxTokenCount = v5->_maxTokenCount;
    v5->_maxTokenCount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchedTokenCount"];
    matchedTokenCount = v5->_matchedTokenCount;
    v5->_matchedTokenCount = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxStopWordCount"];
    maxStopWordCount = v5->_maxStopWordCount;
    v5->_maxStopWordCount = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchedStopWordCount"];
    matchedStopWordCount = v5->_matchedStopWordCount;
    v5->_matchedStopWordCount = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"editDistance"];
    editDistance = v5->_editDistance;
    v5->_editDistance = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxAliasCount"];
    maxAliasCount = v5->_maxAliasCount;
    v5->_maxAliasCount = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchedAliasCount"];
    matchedAliasCount = v5->_matchedAliasCount;
    v5->_matchedAliasCount = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"matchedAliasTypes"];
    matchedAliasTypes = v5->_matchedAliasTypes;
    v5->_matchedAliasTypes = v25;
  }

  return v5;
}

- (USOMatchInfo)initWithMatchSignalBitSet:(unsigned int)set
{
  v9.receiver = self;
  v9.super_class = USOMatchInfo;
  v4 = [(USOMatchInfo *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_matchSignalBitSet = set;
    array = [MEMORY[0x1E695DF70] array];
    matchedAliasTypes = v5->_matchedAliasTypes;
    v5->_matchedAliasTypes = array;
  }

  return v5;
}

@end