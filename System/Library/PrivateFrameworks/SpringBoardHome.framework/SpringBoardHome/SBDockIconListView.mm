@interface SBDockIconListView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)allowsAddingIconCount:(unint64_t)count;
- (SBDockIconListView)initWithModel:(id)model layoutProvider:(id)provider iconLocation:(id)location orientation:(int64_t)orientation iconViewProvider:(id)viewProvider;
@end

@implementation SBDockIconListView

- (SBDockIconListView)initWithModel:(id)model layoutProvider:(id)provider iconLocation:(id)location orientation:(int64_t)orientation iconViewProvider:(id)viewProvider
{
  v10.receiver = self;
  v10.super_class = SBDockIconListView;
  v7 = [(SBIconListView *)&v10 initWithModel:model layoutProvider:provider iconLocation:location orientation:orientation iconViewProvider:viewProvider];
  v8 = v7;
  if (v7)
  {
    [(SBDockIconListView *)v7 setAutoresizesSubviews:0];
  }

  return v8;
}

- (BOOL)allowsAddingIconCount:(unint64_t)count
{
  displayedModel = [(SBIconListView *)self displayedModel];
  LOBYTE(count) = [displayedModel allowsAddingIconCount:count];

  return count;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = SBDockIconListView;
  if ([(SBIconListView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"contents"];
  }

  return v5;
}

@end