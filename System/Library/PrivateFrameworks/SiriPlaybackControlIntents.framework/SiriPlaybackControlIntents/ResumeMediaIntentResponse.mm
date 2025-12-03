@interface ResumeMediaIntentResponse
- (ResumeMediaIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation ResumeMediaIntentResponse

- (ResumeMediaIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_268B37B64();
  }

  else
  {
    v3 = 0;
  }

  return ResumeMediaIntentResponse.init(propertiesByName:)(v3);
}

@end