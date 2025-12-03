@interface PSIRankedGroup
- (PSIRankedGroup)initWithGroup:(id)group score:(double)score;
@end

@implementation PSIRankedGroup

- (PSIRankedGroup)initWithGroup:(id)group score:(double)score
{
  groupCopy = group;
  v8 = [(PSIRankedGroup *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_group, group);
    v9->_score = score;
  }

  return v9;
}

@end