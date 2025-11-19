@interface SBFloatyFolderController
- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4;
- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4;
- (unint64_t)backgroundEffect;
- (void)folderView:(id)a3 didBeginEditingTitle:(id)a4;
- (void)folderView:(id)a3 didEndEditingTitle:(id)a4;
- (void)setBackgroundEffect:(unint64_t)a3;
@end

@implementation SBFloatyFolderController

- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:@"SBIconLocationFolder"])
  {
    v7 = [(SBFolderController *)self currentIconListView];
    v8 = [v7 model];
    v9 = [v8 directlyContainsIcon:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:@"SBIconLocationFolder"])
  {
    v7 = [(SBFolderController *)self folderView];
    v8 = [v6 isDescendantOfView:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)backgroundEffect
{
  v2 = [(SBFloatyFolderController *)self floatyFolderView];
  v3 = [v2 backgroundEffect];

  return v3;
}

- (void)setBackgroundEffect:(unint64_t)a3
{
  v4 = [(SBFloatyFolderController *)self floatyFolderView];
  [v4 setBackgroundEffect:a3];
}

- (void)folderView:(id)a3 didBeginEditingTitle:(id)a4
{
  v6 = a4;
  v5 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 folderController:self didBeginEditingTitle:v6];
  }
}

- (void)folderView:(id)a3 didEndEditingTitle:(id)a4
{
  v6 = a4;
  v5 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 folderController:self didEndEditingTitle:v6];
  }
}

@end