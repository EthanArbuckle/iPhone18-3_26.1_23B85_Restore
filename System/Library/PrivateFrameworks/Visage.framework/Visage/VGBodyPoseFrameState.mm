@interface VGBodyPoseFrameState
- (BOOL)isEqual:(id)equal;
- (VGBodyPoseFrameState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VGBodyPoseFrameState

- (VGBodyPoseFrameState)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(VGBodyPoseFrameState *)self init];
  if (v5)
  {
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:3];
    v7 = [MEMORY[0x277CBEB98] setWithArray:{v6, v14, v15}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"scores"];
    scores = v5->_scores;
    v5->_scores = v8;

    [coderCopy decodeFloatForKey:@"aggregatedScore"];
    v5->_aggregatedScore = v10;
    v11 = v5;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_scores forKey:@"scores"];
  *&v4 = self->_aggregatedScore;
  [coderCopy encodeFloat:@"aggregatedScore" forKey:v4];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    scores = self->_scores;
    v7 = (!(scores | *(v5 + 2)) || [(NSDictionary *)scores isEqualToDictionary:?]) && self->_aggregatedScore == v5[2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end