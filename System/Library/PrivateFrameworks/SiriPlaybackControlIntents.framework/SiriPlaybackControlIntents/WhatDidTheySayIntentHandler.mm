@interface WhatDidTheySayIntentHandler
- (void)handleWhatDidTheySay:(id)say completion:(id)completion;
@end

@implementation WhatDidTheySayIntentHandler

- (void)handleWhatDidTheySay:(id)say completion:(id)completion
{
  v6 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v6;
  sayCopy = say;
  selfCopy = self;
  sub_268A202B0();
}

@end