@interface SXActionActivityGroup
- (SXActionActivityGroup)initWithTitle:(id)a3 sourceView:(id)a4;
- (void)addActivity:(id)a3;
@end

@implementation SXActionActivityGroup

- (SXActionActivityGroup)initWithTitle:(id)a3 sourceView:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SXActionActivityGroup;
  v9 = [(SXActionActivityGroup *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_sourceView, a4);
    v11 = [MEMORY[0x1E695DF70] array];
    activities = v10->_activities;
    v10->_activities = v11;
  }

  return v10;
}

- (void)addActivity:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SXActionActivityGroup *)self activities];
    [v5 addObject:v4];
  }
}

@end