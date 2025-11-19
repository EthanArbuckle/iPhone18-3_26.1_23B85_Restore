@interface ResumeMediaIntentResponse
- (ResumeMediaIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation ResumeMediaIntentResponse

- (ResumeMediaIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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