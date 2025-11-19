@interface WFLinkOpenCameraAction
- (void)serializeAppIntentDescriptorIfNecessary;
@end

@implementation WFLinkOpenCameraAction

- (void)serializeAppIntentDescriptorIfNecessary
{
  v3 = [(WFAction *)self serializedParameters];
  v4 = [v3 objectForKey:@"AppIntentDescriptor"];

  if (!v4)
  {

    [(WFAction *)self setSupplementalParameterValue:&unk_1F4A99CD0 forKey:@"AppIntentDescriptor"];
  }
}

@end