@interface SBFloatyFolderController
- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location;
- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location;
- (unint64_t)backgroundEffect;
- (void)folderView:(id)view didBeginEditingTitle:(id)title;
- (void)folderView:(id)view didEndEditingTitle:(id)title;
- (void)setBackgroundEffect:(unint64_t)effect;
@end

@implementation SBFloatyFolderController

- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location
{
  iconCopy = icon;
  if ([location isEqualToString:@"SBIconLocationFolder"])
  {
    currentIconListView = [(SBFolderController *)self currentIconListView];
    model = [currentIconListView model];
    v9 = [model directlyContainsIcon:iconCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location
{
  viewCopy = view;
  if ([location isEqualToString:@"SBIconLocationFolder"])
  {
    folderView = [(SBFolderController *)self folderView];
    v8 = [viewCopy isDescendantOfView:folderView];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)backgroundEffect
{
  floatyFolderView = [(SBFloatyFolderController *)self floatyFolderView];
  backgroundEffect = [floatyFolderView backgroundEffect];

  return backgroundEffect;
}

- (void)setBackgroundEffect:(unint64_t)effect
{
  floatyFolderView = [(SBFloatyFolderController *)self floatyFolderView];
  [floatyFolderView setBackgroundEffect:effect];
}

- (void)folderView:(id)view didBeginEditingTitle:(id)title
{
  titleCopy = title;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate folderController:self didBeginEditingTitle:titleCopy];
  }
}

- (void)folderView:(id)view didEndEditingTitle:(id)title
{
  titleCopy = title;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate folderController:self didEndEditingTitle:titleCopy];
  }
}

@end