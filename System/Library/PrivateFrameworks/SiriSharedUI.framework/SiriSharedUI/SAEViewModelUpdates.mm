@interface SAEViewModelUpdates
- (SAEViewModelUpdates)initWithViewModel:(id)a3 diff:(unint64_t)a4;
@end

@implementation SAEViewModelUpdates

- (SAEViewModelUpdates)initWithViewModel:(id)a3 diff:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SAEViewModelUpdates;
  v7 = [(SAEViewModelUpdates *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SAEViewModelUpdates *)v7 setViewModel:v6];
    [(SAEViewModelUpdates *)v8 setDiff:a4];
  }

  return v8;
}

@end