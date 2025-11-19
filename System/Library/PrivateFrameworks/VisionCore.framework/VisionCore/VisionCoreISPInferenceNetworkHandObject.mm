@interface VisionCoreISPInferenceNetworkHandObject
- (VisionCoreISPInferenceNetworkHandObject)initWithANSTHand:(id)a3;
@end

@implementation VisionCoreISPInferenceNetworkHandObject

- (VisionCoreISPInferenceNetworkHandObject)initWithANSTHand:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VisionCoreISPInferenceNetworkHandObject;
  v5 = [(VisionCoreISPInferenceNetworkObject *)&v8 initWithANSTObject:v4];
  if (v5)
  {
    if ([v4 chirality] == 1)
    {
      v6 = 1;
LABEL_6:
      v5->_chirality = v6;
      goto LABEL_7;
    }

    if ([v4 chirality] == 2)
    {
      v6 = 2;
      goto LABEL_6;
    }
  }

LABEL_7:

  return v5;
}

@end