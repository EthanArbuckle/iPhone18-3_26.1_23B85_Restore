@interface CSDSuperboxProviderDelegate
- (void)provider:(id)provider performAnswerCallAction:(id)action;
- (void)provider:(id)provider performStartCallAction:(id)action;
- (void)provider:(void *)provider performSetMutedCallAction:(void *)action;
@end

@implementation CSDSuperboxProviderDelegate

- (void)provider:(void *)provider performSetMutedCallAction:(void *)action
{
  providerCopy = provider;
  actionCopy = action;
  selfCopy = self;
  sub_1003E3774(selfCopy, actionCopy);
}

- (void)provider:(id)provider performStartCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  selfCopy = self;
  sub_1003E2788(selfCopy, actionCopy);
}

- (void)provider:(id)provider performAnswerCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  selfCopy = self;
  sub_1003E34F0(selfCopy, actionCopy);
}

@end