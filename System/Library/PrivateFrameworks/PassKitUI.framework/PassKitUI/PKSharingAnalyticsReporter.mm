@interface PKSharingAnalyticsReporter
- (PKSharingAnalyticsReporter)initWithSubject:(id)subject sessionToken:(id)token reuseExistingSession:(BOOL)session;
- (void)dealloc;
@end

@implementation PKSharingAnalyticsReporter

- (PKSharingAnalyticsReporter)initWithSubject:(id)subject sessionToken:(id)token reuseExistingSession:(BOOL)session
{
  sessionCopy = session;
  subjectCopy = subject;
  tokenCopy = token;
  v15.receiver = self;
  v15.super_class = PKSharingAnalyticsReporter;
  v11 = [(PKSharingAnalyticsReporter *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_subject, subject);
    if (tokenCopy)
    {
      [MEMORY[0x1E69B8540] beginSubjectReporting:subjectCopy withArchivedParent:tokenCopy];
    }

    else if (!sessionCopy || ([MEMORY[0x1E69B8540] reporterForSubject:v12->_subject], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
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