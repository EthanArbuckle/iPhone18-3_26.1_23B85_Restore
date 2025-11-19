@interface ArticleSharingActivityOptionsProvider
- (int64_t)articleActivityOptionsForHeadline:(id)a3;
@end

@implementation ArticleSharingActivityOptionsProvider

- (int64_t)articleActivityOptionsForHeadline:(id)a3
{
  __swift_project_boxed_opaque_existential_1(self->featureAvailability, *&self->featureAvailability[24]);

  v3 = sub_22088614C();

  if (v3)
  {
    return 124;
  }

  else
  {
    return 88;
  }
}

@end