@interface PSIRankedGroup
- (PSIRankedGroup)initWithGroup:(id)a3 score:(double)a4;
@end

@implementation PSIRankedGroup

- (PSIRankedGroup)initWithGroup:(id)a3 score:(double)a4
{
  v7 = a3;
  v8 = [(PSIRankedGroup *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_group, a3);
    v9->_score = a4;
  }

  return v9;
}

@end