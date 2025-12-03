@interface WFLinkOpenCameraAction
- (void)serializeAppIntentDescriptorIfNecessary;
@end

@implementation WFLinkOpenCameraAction

- (void)serializeAppIntentDescriptorIfNecessary
{
  serializedParameters = [(WFAction *)self serializedParameters];
  v4 = [serializedParameters objectForKey:@"AppIntentDescriptor"];

  if (!v4)
  {

    [(WFAction *)self setSupplementalParameterValue:&unk_1F4A99CD0 forKey:@"AppIntentDescriptor"];
  }
}

@end