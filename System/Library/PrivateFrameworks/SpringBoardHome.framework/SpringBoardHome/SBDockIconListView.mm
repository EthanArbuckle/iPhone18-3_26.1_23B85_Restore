@interface SBDockIconListView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)allowsAddingIconCount:(unint64_t)a3;
- (SBDockIconListView)initWithModel:(id)a3 layoutProvider:(id)a4 iconLocation:(id)a5 orientation:(int64_t)a6 iconViewProvider:(id)a7;
@end

@implementation SBDockIconListView

- (SBDockIconListView)initWithModel:(id)a3 layoutProvider:(id)a4 iconLocation:(id)a5 orientation:(int64_t)a6 iconViewProvider:(id)a7
{
  v10.receiver = self;
  v10.super_class = SBDockIconListView;
  v7 = [(SBIconListView *)&v10 initWithModel:a3 layoutProvider:a4 iconLocation:a5 orientation:a6 iconViewProvider:a7];
  v8 = v7;
  if (v7)
  {
    [(SBDockIconListView *)v7 setAutoresizesSubviews:0];
  }

  return v8;
}

- (BOOL)allowsAddingIconCount:(unint64_t)a3
{
  v4 = [(SBIconListView *)self displayedModel];
  LOBYTE(a3) = [v4 allowsAddingIconCount:a3];

  return a3;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBDockIconListView;
  if ([(SBIconListView *)&v7 _shouldAnimatePropertyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"contents"];
  }

  return v5;
}

@end