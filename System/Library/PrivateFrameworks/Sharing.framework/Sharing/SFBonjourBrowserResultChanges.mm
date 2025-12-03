@interface SFBonjourBrowserResultChanges
- (SFBonjourBrowserResultChanges)initWithOldResult:(id)result freshResult:(id)freshResult change:(unint64_t)change;
@end

@implementation SFBonjourBrowserResultChanges

- (SFBonjourBrowserResultChanges)initWithOldResult:(id)result freshResult:(id)freshResult change:(unint64_t)change
{
  resultCopy = result;
  freshResultCopy = freshResult;
  v14.receiver = self;
  v14.super_class = SFBonjourBrowserResultChanges;
  v11 = [(SFBonjourBrowserResultChanges *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_oldResult, result);
    objc_storeStrong(&v12->_freshResult, freshResult);
    v12->_change = change;
  }

  return v12;
}

@end