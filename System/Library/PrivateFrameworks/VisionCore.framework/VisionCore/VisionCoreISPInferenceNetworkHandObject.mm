@interface VisionCoreISPInferenceNetworkHandObject
- (VisionCoreISPInferenceNetworkHandObject)initWithANSTHand:(id)hand;
@end

@implementation VisionCoreISPInferenceNetworkHandObject

- (VisionCoreISPInferenceNetworkHandObject)initWithANSTHand:(id)hand
{
  handCopy = hand;
  v8.receiver = self;
  v8.super_class = VisionCoreISPInferenceNetworkHandObject;
  v5 = [(VisionCoreISPInferenceNetworkObject *)&v8 initWithANSTObject:handCopy];
  if (v5)
  {
    if ([handCopy chirality] == 1)
    {
      v6 = 1;
LABEL_6:
      v5->_chirality = v6;
      goto LABEL_7;
    }

    if ([handCopy chirality] == 2)
    {
      v6 = 2;
      goto LABEL_6;
    }
  }

LABEL_7:

  return v5;
}

@end