@interface TSUProgressUserInfoObject
- (TSUProgress)progress;
@end

@implementation TSUProgressUserInfoObject

- (TSUProgress)progress
{
  WeakRetained = objc_loadWeakRetained(&self->_progress);

  return WeakRetained;
}

@end