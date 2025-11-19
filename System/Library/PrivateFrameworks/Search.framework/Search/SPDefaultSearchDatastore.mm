@interface SPDefaultSearchDatastore
- (id)feedbackListeners;
@end

@implementation SPDefaultSearchDatastore

- (id)feedbackListeners
{
  if (NSClassFromString(@"ATXSearchFeedbackListener"))
  {
    v2 = objc_alloc_init(ATXSearchFeedbackListener);
    v5 = v2;
    v3 = [NSArray arrayWithObjects:&v5 count:1];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

@end