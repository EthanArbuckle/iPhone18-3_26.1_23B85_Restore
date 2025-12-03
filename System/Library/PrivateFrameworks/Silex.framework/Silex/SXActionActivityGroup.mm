@interface SXActionActivityGroup
- (SXActionActivityGroup)initWithTitle:(id)title sourceView:(id)view;
- (void)addActivity:(id)activity;
@end

@implementation SXActionActivityGroup

- (SXActionActivityGroup)initWithTitle:(id)title sourceView:(id)view
{
  titleCopy = title;
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = SXActionActivityGroup;
  v9 = [(SXActionActivityGroup *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_sourceView, view);
    array = [MEMORY[0x1E695DF70] array];
    activities = v10->_activities;
    v10->_activities = array;
  }

  return v10;
}

- (void)addActivity:(id)activity
{
  if (activity)
  {
    activityCopy = activity;
    activities = [(SXActionActivityGroup *)self activities];
    [activities addObject:activityCopy];
  }
}

@end