@interface SBWindowingStateModel
- (SBWindowingStateModel)init;
@end

@implementation SBWindowingStateModel

- (SBWindowingStateModel)init
{
  v5.receiver = self;
  v5.super_class = SBWindowingStateModel;
  v2 = [(SBWindowingStateModel *)&v5 init];
  if (v2)
  {
    v3 = +[SBWindowingStrip emptyStrip];
    [(SBWindowingStateModel *)v2 setStrip:v3];
  }

  return v2;
}

@end