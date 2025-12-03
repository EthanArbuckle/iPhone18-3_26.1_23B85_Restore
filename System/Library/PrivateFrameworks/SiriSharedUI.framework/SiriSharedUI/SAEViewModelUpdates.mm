@interface SAEViewModelUpdates
- (SAEViewModelUpdates)initWithViewModel:(id)model diff:(unint64_t)diff;
@end

@implementation SAEViewModelUpdates

- (SAEViewModelUpdates)initWithViewModel:(id)model diff:(unint64_t)diff
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = SAEViewModelUpdates;
  v7 = [(SAEViewModelUpdates *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SAEViewModelUpdates *)v7 setViewModel:modelCopy];
    [(SAEViewModelUpdates *)v8 setDiff:diff];
  }

  return v8;
}

@end