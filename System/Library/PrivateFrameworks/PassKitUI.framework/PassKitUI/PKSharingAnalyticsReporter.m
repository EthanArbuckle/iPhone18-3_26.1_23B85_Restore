@interface PKSharingAnalyticsReporter
- (PKSharingAnalyticsReporter)initWithSubject:(id)a3 sessionToken:(id)a4 reuseExistingSession:(BOOL)a5;
- (void)dealloc;
@end

@implementation PKSharingAnalyticsReporter

- (PKSharingAnalyticsReporter)initWithSubject:(id)a3 sessionToken:(id)a4 reuseExistingSession:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = PKSharingAnalyticsReporter;
  v11 = [(PKSharingAnalyticsReporter *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_subject, a3);
    if (v10)
    {
      [MEMORY[0x1E69B8540] beginSubjectReporting:v9 withArchivedParent:v10];
    }

    else if (!v5 || ([MEMORY[0x1E69B8540] reporterForSubject:v12->_subject], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
    {
      v12->_isSessionOwned = 1;
      [MEMORY[0x1E69B8540] beginSubjectReporting:v12->_subject];
    }
  }

  return v12;
}

- (void)dealloc
{
  if (self->_isSessionOwned)
  {
    [MEMORY[0x1E69B8540] endSubjectReporting:self->_subject];
  }

  v3.receiver = self;
  v3.super_class = PKSharingAnalyticsReporter;
  [(PKSharingAnalyticsReporter *)&v3 dealloc];
}

@end